import re
import jieba
import requests
import pymysql
import wordcloud
from mail import send_mail
from lxml import etree
from PIL import Image
from matplotlib import pyplot as plt
headers={
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'
}

#获得cid
def get_cid(url):
    page=requests.get(url,headers=headers)
    page=page.text
    pat='cid=(.*?)&'
    rst=re.compile(pat).findall(page)
    cid=rst[0]
    return cid

#获得原始弹幕
def get_cloudlive(cid):
    pat = '<d.*?>(.*?)</d>'
    url='https://api.bilibili.com/x/v1/dm/list.so?oid='+cid
    page=requests.get(url,headers=headers)
    page = page.content.decode('utf-8')
    rst = re.compile(pat).findall(page)
    #print('Source：',rst)
    return rst

#处理弹幕列表
def solve_cloudlive(cloudlive):
    comments = [x.upper() for x in cloudlive]  # 统一大小写
    comments_clean = [comment.replace(' ', '') for comment in comments]#去除空格
    danmustr = ''.join(element for element in comments_clean)  # 把所有的弹幕都合并成一个字符串
    words = list(jieba.cut(danmustr))  # 分词
    fnl_words = [word for word in words if len(word) > 1]  # 去掉单字
    #print('Solve_After：',fnl_words)
    return fnl_words

#生成词云
def get_cloudword(i,fnl_words):
    wc = wordcloud.WordCloud(
        width=1000, font_path='FZSTK.TTF', height=800,background_color='white'
    )  # 设定词云画的大小字体，一定要设定字体，否则中文显示不出来
    wc.generate(' '.join(fnl_words))
    plt.imshow(wc)
    wc.to_file('./wdimg/'+str(i)+".png")

#获得周排行前100
def get_urlmsg(url):
    page=requests.get(url).text
    source=etree.HTML(page)
    url_links=source.xpath('//div[@class="info"]//a[@class="title"]/@href')
    movie_names=source.xpath('//div[@class="info"]//a[@class="title"]//text()')
    pat='<span class="data-box"><i class="b-icon play"></i>(.*?)</span>'
    click_counts=re.compile(pat).findall(page)
    return url_links,movie_names,click_counts

#可视化
def draw_pic(click_counts):
    pat='(.*)万'
    y1_list=[]
    y2_list=[]
    y3_list=[]
    for nums in click_counts:
        rst=re.compile(pat).findall(nums)[0]
        rst=float(rst)
        if rst>0 and rst<100:
            y1_list.append(rst)
        elif rst>=100 and rst<200:
            y2_list.append(rst)
        else:
            y3_list.append(rst)
    labels='click~[0-100]w','click~[100,200]w','click~[200+]w'
    data=[len(y1_list),len(y2_list),len(y3_list)]
    explode = [0, 0, 0]  # 0.1 凸出这部分，
    plt.axes(aspect=1)
    plt.pie(x=data, labels=labels, explode=explode, autopct='%3.1f %%',
            shadow=True, labeldistance=1.1, startangle=90, pctdistance=0.6)
    plt.savefig('analyse.png')
    plt.show()

#保存至数据库
def save_mysql(url_links,movie_names,click_counts):
    commit_msg=[]
    # 连接database
    conn = pymysql.connect(
        host='localhost',
        user='root', password='xxx', database='bilibili', charset='utf8mb4')
    print('Connected!')
    # 得到一个可以执行SQL语句的光标对象
    cursor = conn.cursor()
    for i in range(0,len(url_links)):
        name=movie_names[i]
        click=click_counts[i]
        link=url_links[i]
        msg=(name,click,link)
        commit_msg.append(msg)
    #sql语句
    sql = 'insert into datas(name,click,link) values(%s,%s,%s);'
    cursor.executemany(sql, commit_msg)
    conn.commit()
    cursor.close()
    conn.close()
    print('已经全部存入数据库')

if __name__ == '__main__':
    url = 'https://www.bilibili.com/ranking?spm_id_from=333.851.b_7072696d61727950616765546162.3'
    url_links,movie_names,click_counts=get_urlmsg(url)
    #作出数据分析图
    draw_pic(click_counts)
    print('已经生成数据分析图')
    #send_mail()
    #保存至数据库
    save_mysql(url_links,movie_names,click_counts)
    #开始生成词云
    print('已经完成数据储备，准备生成词云')
    print('共输入%d条链接，开始爬取' %len(url_links))
    for i in range(len(url_links)):
        print('正在爬取第'+str(i+1)+'条链接')
        url=url_links[i]
        print(url)
        cid=get_cid(url)
        cloudlive=get_cloudlive(cid)
        fnl_words=solve_cloudlive(cloudlive)
        get_cloudword(i,fnl_words)
        im=Image.open('./wdimg/'+str(i)+'.png')
        print('第'+str(i+1)+'条链接已经完成')
    print('ALL Done!')

