# encoding: utf-8
import pandas as pd 

#leo archivo de clientes y solo tomo las columnas de Nombre y CUIT
clientes_cuit = pd.read_excel('CLIENTES2020.XLS', skiprows=6, usecols='B,M' )

clientes_deuda = pd.read_excel('CUOTAACOBRARS2021.XLS', 'Hoja2', skiprows=3, usecols ='A,B')



# clientes_deuda ['CUIT'] = []

# clientes_deuda.to_csv ('clientes_deuda.cvs', index = False, header=True)

def EncontrarCuit (nombre):
	for cliente in range (2118):
		if clientes_cuit.Nombre[cliente] == nombre:
			return clientes_cuit.CUIT[cliente]

importes = []
proveedores = []
tasa =[0, 11528]


for cliente in range(len(clientes_deuda)):
	importes.append([4314,55235, 202007, (EncontrarCuit(clientes_deuda.Cliente[cliente])), 9, int(clientes_deuda.Total[cliente]/1000)])
	proveedores.append([4304, 55235, 202007,"  ", EncontrarCuit(clientes_deuda.Cliente[cliente]), clientes_deuda.Cliente[cliente].encode(encoding='UTF-8',errors='strict'), 
		1,int(clientes_deuda.Total[cliente]/1000), 0, "        ", 0, " ", " ", 30,"       ", "N"])

#convertir listas a dataframe

#dataframe a cvs
#Crear un diccionario desde un Dataframe
#cuit_dic = clientes_cuit.to_dict()


