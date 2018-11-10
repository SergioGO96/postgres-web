# -*- coding: utf-8 -*-

from bottle import route, default_app, get, post, run, template, request, static_file, response, redirect
import psycopg2

@route('/')
def pincipal():
	return template("index.tpl")


@route('/Conectar',method='POST')
def Conectar():
	Usuario = request.forms.get('Usuario')		
	Password = request.forms.get('Password')
	BasedeDatos= request.forms.get('BasedeDatos')
	Host = request.forms.get('Host')
	
	nombre = []
	conect = psycopg2.connect(user=Usuario, password=Password, database=BasedeDatos, host=Host)
	cur = conect.cursor()
        cur.execute('show tables;')
	info = cur.fetchall()
	for datos in info:
		nombre.append(datos[0])
	return template('info.tpl', nombre=nombre)
 	cur.close()




@route('/views/<filepath:path>')
def server_static(filepath):
	return static_file(filepath, root='views')


run(host='localhost', port=8080, debug=True)
