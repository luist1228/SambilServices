import ssl
import sys
import psycopg2 
import pandas as pd
import paho.mqtt.client 
import json


centrada = psycopg2.connect(host = 'localhost', user= 'postgres', password ='12t09lma', dbname= 'Servicio Camara')
centrada.autocommit = True
ctienda = psycopg2.connect(host = 'localhost', user= 'postgres', password ='12t09lma', dbname= 'Servicio Tienda')
ctienda.autocommit = True
cmesa = psycopg2.connect(host = 'localhost', user= 'postgres', password ='12t09lma', dbname= 'Servicio Mesa')
cmesa.autocommit = True

def on_connect(client, userdata, flags, rc):    
    print('Conectado (%s)' % client._client_id)
    client.subscribe(topic='Sambil/#', qos = 0) 

def on_message_C(client,userdata,message): 
    c = json.loads(message.payload)
    print('------------------------------') 
    if ((message.topic=="Sambil/Camaras/Entrada")) :
        if (c["macAddress"]!="null"):
            print(c)
            print('topic: %s' % message.topic)
            cur = centrada.cursor()
            sql = '''CALL Personaconmac(%s, %s, %s, %s, %s)'''
            cur.execute(sql, (c["macAddress"],c["gender"], c["age"],c["time"],c["cameraID"]))
            centrada.commit()  
        else:
            print(c)
            print('topic: %s' % message.topic)
            cur = centrada.cursor()
            sql = '''INSERT INTO public.epersona(sexo, edad, fecha, fkcamara) VALUES (%s,%s,%s,%s);'''
            cur.execute(sql, (c["gender"], c["age"],c["time"],c["cameraID"]))
            centrada.commit()
    else:
        if (c["macAddress"]!="null"):
            print(c)
            print('topic: %s' % message.topic)
            cur = centrada.cursor()
            sql = '''Call Salidaconmac(%s,%s,%s)'''
            cur.execute(sql, (c["macAddress"],c["time"],c["cameraID"]))
            centrada.commit()
        else:
            print(c)
            print('topic: %s' % message.topic)
            cur = centrada.cursor()
            sql = '''INSERT INTO public.spersona(fecha, fkcamara) VALUES ( %s, %s);'''
            cur.execute(sql, (c["time"],c["cameraID"]))
            centrada.commit()


def on_message_A(client,userdata,message):
    a = json.loads(message.payload)
    print('------------------------------') 
    

def on_message_M(client,userdata,message):   
    m = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Sambil/Mesa/Parado") :
        if (m["macAddress"]!="null"):
            print(m)
            print('topic: %s' % message.topic)
            cur = cmesa.cursor()
            sql = '''INSERT INTO public.iomesa(
	        fecha, io, fkbeacon, mac)
	        VALUES (%s, %s, %s, %s);'''
            cur.execute(sql, (m["time"], False,m["beaconID"],m["macAddress"] ))
            cmesa.commit()
        else:
            print(m)
            print('topic: %s' % message.topic)
            cur = cmesa.cursor()
            sql = '''INSERT INTO public.iomesa(
	        fecha, io, fkbeacon)
	        VALUES (%s, %s, %s);'''
            cur.execute(sql, (m["time"], False,m["beaconID"] ))
            cmesa.commit()
    else:
        if (m["macAddress"]!="null"):
            print(m)
            print('topic: %s' % message.topic)
            cur = cmesa.cursor()
            sql = '''INSERT INTO public.iomesa(
	        fecha, io, fkbeacon, mac)
	        VALUES (%s, %s, %s, %s);'''
            cur.execute(sql, (m["time"], True ,m["beaconID"],m["macAddress"] ))
            cmesa.commit()
        else:
            print(m)
            print('topic: %s' % message.topic)
            cur = cmesa.cursor()
            sql = '''INSERT INTO public.iomesa(
	        fecha, io, fkbeacon)
	        VALUES (%s, %s, %s);'''
            cur.execute(sql, (m["time"], True ,m["beaconID"] ))
            cmesa.commit()






def on_message_T(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Sambil/Tienda/Entrando") :
        if (t["macAddress"]!="null"):
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.iotienda(
	        fecha, io, fkbeacon, mac)
	        VALUES ( %s, %s, %s, %s);'''
            cur.execute(sql, (t["time"],True,t["beaconID"],t["macAddress"]))
            ctienda.commit()
        else:
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.iotienda(
	        fecha, io, fkbeacon)
	        VALUES ( %s, %s, %s);'''
            cur.execute(sql, (t["time"],True,t["beaconID"]))
            ctienda.commit()

    if (message.topic=="Sambil/Tienda/Saliendo") :
        if (t["macAddress"]!="null"):
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.iotienda(
	        fecha, io, fkbeacon, mac)
	        VALUES ( %s, %s, %s, %s);'''
            cur.execute(sql, (t["time"],False,t["beaconID"],t["macAddress"]))
            ctienda.commit()
        else:
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.iotienda(
	        fecha, io, fkbeacon)
	        VALUES ( %s, %s, %s);'''
            cur.execute(sql, (t["time"],False,t["beaconID"]))
            ctienda.commit()

    if (message.topic=="Sambil/Tienda/Compra") :
        if (t["macAddress"]!="null"):
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.cliente(
	        nombre, apellido, cedula)
	        VALUES (%s, %s, %s);'''
            cur.execute(sql, (t["name"],t["lastname"],t["personID"]))
            ctienda.commit()
            
            cur = ctienda.cursor()
            sql = '''Call Clientenaconmac(%s, %s, %s, %s)'''
            cur.execute(sql, (t["personID"],t["time"],t["price"],t["beaconID"]))
            ctienda.commit()
            
        else:
            print(t)
            print('topic: %s' % message.topic)
            cur = ctienda.cursor()
            sql = '''INSERT INTO public.compra(
	        monto, fecha, fktienda)
	        VALUES (%s, %s, %s);'''
            cur.execute(sql, (t["price"],t["time"],t["beaconID"]))
            ctienda.commit()


def main():	
    client = paho.mqtt.client.Client(client_id='Actividad Sambil',clean_session=False)
    client.on_connect = on_connect
    client.message_callback_add('Sambil/Camaras/#', on_message_C)
    client.message_callback_add('Sambil/Estacionamiento/#', on_message_A)
    client.message_callback_add('Sambil/Mesa/#', on_message_M)
    client.message_callback_add('Sambil/Tienda/#', on_message_T)
    client.connect(host='localhost') 
    client.loop_forever()

if __name__ == '__main__':
	main()
	sys.exit(0)