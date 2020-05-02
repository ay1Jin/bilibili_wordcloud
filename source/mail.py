import smtplib
from email.mime.text import MIMEText
from email.header import Header
def send_mail():
  # 第三方 SMTP 服务
  mail_host = "smtp.xxx.com"  # 设置服务器
  mail_user = "xxx@163.com"  # 用户名
  mail_pass = 'xxx' # 口令

  sender = 'xxx@163.com'
  receivers = ['xxx@qq.com']  # 接收邮件，可设置为你的QQ邮箱或者其他邮箱

  message = MIMEText('爬虫数据已经更新', 'plain', 'utf-8')
  message['From'] = Header("服务器端", 'utf-8')
  message['To'] = Header("接收方", 'utf-8')

  subject = 'Python 爬虫 邮件发送'
  message['Subject'] = Header(subject, 'utf-8')

  try:
      smtpObj = smtplib.SMTP()
      smtpObj.connect(mail_host, 25)  # 25 为 SMTP 端口号
      smtpObj.login(mail_user, mail_pass)
      smtpObj.sendmail(sender, receivers, message.as_string())
      print("邮件发送成功")

  except Exception as err:
    print('发送失败')
    print(err)