import requests
# Creamos la peticion HTTP con GET:
r = requests.get("https://api.estadisticasbcra.com/usd")
# Imprimimos el resultado si el codigo de estado HTTP es 200 (OK):
if r.status_code == 200:
    print r.text