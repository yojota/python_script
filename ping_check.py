# encoding: utf-8
from requests import get, exceptions

# def check_internet_connection():
#     try:
#         get('http://www.valerza.com.ar', timeout = 3)
#         print('valerza.com.ar conectado')
#     except exceptions.ConnectionError:
#         print('not connected')

# check_internet_connection()

# def check_ping():
#     hostname = "192.168.1.254"
#     response = os.system("ping -c 1 " + hostname)
#     # and then check the response...
#     if response == 0:
#         pingstatus = "Up " + hostname
#     else:
#         pingstatus = "Down " + hostname

#     return pingstatus

import os

def check_ping(hostname):
    response = os.system("ping -c 1 " + hostname)
    # and then check the response...
    if response == 0:
        pingstatus = "Up " + hostname
    else:
        pingstatus = "Down " + hostname

    return pingstatus


pingstatus = check_ping("192.168.1.254")
print pingstatus