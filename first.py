#!/usr/bin/env python3

with open("archivo.txt", "r") as archivo:
    contenido = archivo.read()

contenido = """
Este será el contenido del nuevo archivo.
El archivo tendrá varias líneas.
"""
with open("archivo.txt", "w") as archivo:
    archivo.write(contenido)