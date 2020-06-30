# Repositorio Aprendiendo Python

En este repositorio la idea es ir resolviendo pequeños desafios presentados con python para poder aprender de manera
completa pyton

## Documentation

Para poder conseguir mejorar en scripting python estoy siguiendo la guía python para administradores
 * [Guía Python para Administradores](https://python.eugeniabahit.com/curso-python-linux-sysadmin)
 * [Apuntes a Mano de Python](https://drive.google.com/file/d/12_1yUhaGeoH7wLGqrHiSx987FMdqM_Mv/view)

```bash
python --version
```

## Ejemplo de ejercicio

```python
#!/usr/bin/env python3
""" Leer un archivo PDF, JPG, GIF o PNG, en modo binario, y hacer el contenido
leído se escriba en un nuevo archivo (siempre utilizando la estructura with y
open)."""
with open("cv.pdf", "rb") as archivo:
    contenido = archivo.read()

with open("cv_copy.pdf", "wb") as archivo_copy:
    archivo_copy.write(contenido)
```

## Enviar email con archivo adjunto

* El script sendmail_atach.py es el ejemplo para poder enviar email. Se necesita el archivo variables.py para configurar parametros.
## Aportes
Se reciben aprotes de todas las personas interesadas en hacerlo.

## Contacto

* Jota perez
* juan.perez@nicromit.com - yojota@gmail.com

## Licencia
GPL 