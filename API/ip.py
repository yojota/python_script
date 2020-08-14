import requests
import json
ipjson= "181.239.34.119"
resp = requests.get('http://ip-api.com/json/' + ipjson)
ip=json.loads(resp.content)

print(ip)