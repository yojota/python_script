# Code from best solution in page below:
# https://help.zoho.com/portal/community/topic/zoho-mail-servers-reject-python-smtp-module-communications

import smtplib
from email.mime.text import MIMEText
from email.header import Header
from email.utils import formataddr
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication

import variables


# Define to/from
#sender = 'admin@valerza.com.ar'
#sender_title = "Envio desde servidor"
recipient = 'yojota@gmail.com'

# Create message
msg = MIMEMultipart()
message ="Envio desde python"
msg['Subject'] =  Header("Certificado VPN", 'utf-8')
msg['From'] = formataddr((str(Header(variables.sender_title, 'utf-8')), variables.sender))
msg['To'] = recipient
msg.attach(MIMEText(message, 'plain'))

#attache other file
file = open('cv.pdf', "rb") 
part = MIMEApplication(file.read(),file)
#change name to file 
#part['Content-Disposition'] = 'attachment; filename=%s' % recipient+'.ovpn'
part['Content-Disposition'] = 'attachment; filename=%s' % recipient
msg.attach(part)

#attach secon file
#file = open('curl.bash', "rb") 
#part = MIMEApplication(file.read(),file)
#part['Content-Disposition'] = 'attachment; filename="%s"' % 'curl.bash'
#msg.attach(part)

# Create server object with SSL option
server = smtplib.SMTP_SSL('smtp.zoho.com', 465)

# Perform operations via server
#server.login(sender, 'dc717e9f168d01d43a5d0d8baa774859')
server.login(variables.sender, variables.password)
server.sendmail(variables.sender, [recipient], msg.as_string())
server.quit()
print "Envio exitoso: %s" % (msg['To'])