import re
import requests
import jieba
import wordcloud
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
        width=1000, font_path='simfang.ttf', height=800,background_color='white'
    )  # 设定词云画的大小字体，一定要设定字体，否则中文显示不出来
    wc.generate(' '.join(fnl_words))
    plt.imshow(wc)
    wc.to_file(str(i)+".png")


if __name__ == '__main__':
    url_list=[]
    while True:
        url = input('请输入你要爬取的网址（输入quit结束）:')
        if url == 'quit':
            break
        else:
            url_list.append(url)
    print('共输入%d条链接，开始爬取' %len(url_list))
    for i in range(len(url_list)):
        print('正在爬取第'+str(i+1)+'条链接')
        url=url_list[i]
        print(url)
        cid=get_cid(url)
        cloudlive=get_cloudlive(cid)
        fnl_words=solve_cloudlive(cloudlive)
        get_cloudword(i,fnl_words)
        im=Image.open(str(i)+'.png')
        im.show()
        print('第'+str(i+1)+'条链接已经完成')
