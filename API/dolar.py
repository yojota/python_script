import requests
import json
import pandas as pd
import matplotlib.pyplot as plt
#%matplotlib inline


url="https://api.estadisticasbcra.com/usd_of_minorista"

response = requests.get(url,
 headers={
   "Authorization": "BEARER eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2Mjc3NDYwNDEsInR5cGUiOiJleHRlcm5hbCIsInVzZXIiOiJqdWFuLnBlcmV6QG5pY3JvbWl0LmNvbSJ9.K8e64IN0nBDXSfOXOfKuawFoLmsUnZjG3J5dCwwwL21kic4ZiXeJnBIE4BQ_tGYcny9XhsiT2yH-yAAkBhUkSg"
}
)

data = json.loads(response.content)

fecha = [i['d'] for i in data["data"]]

df = pd.DataFrame({'fecha':fecha})

df['fecha']  = [pd.to_datetime(i) for i in df['fecha']]

print(df.sort_values(by='fecha'))

plt.bar(fecha)


#print(data)
#print(response.text)
#print(json.dumps(data, indent=4, sort_keys=True))

