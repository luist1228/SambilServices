import csv
import datetime
import pandas as pd
import psycopg2 as psy

conn=psy.connect(host = 'localhost', user= 'postgres', password ='caballoalfabetico', dbname= 'Sambil')

def insertData(date, data):
    with open('csvFiles/poll.csv','a', newline='') as csvfile:
        filewriter = csv.writer(csvfile, delimiter=',', quotechar='|', quoting=csv.QUOTE_MINIMAL)
        filewriter.writerow(['MacAddress', 'Name', 'Lastname', 'ID', 'Sex', 'Age'])
        for person in data:
            filewriter.writerow([person[0], person[4], person[5], person[3], person[1], person[2]])

def getDataFromDB():
    sql = '''SELECT count(c.id) AS sales, substring(CAST(c.fecha AS TEXT) from 1 for 10) AS date, s.fkbeacon_id as storeid, SUM(c.total) AS amount
    FROM models_compra AS c
    JOIN models_tienda AS s ON s.fkbeacon_id = c.fktienda_id
    GROUP BY date, s.fkbeacon_id
    ORDER BY date DESC'''
    df = pd.read_sql_query(sql,conn)
    
    with open('csvFiles/sales.csv','a',newline='') as csvfile:
        filewriter = csv.writer(csvfile, delimiter=',', quotechar='|', quoting=csv.QUOTE_MINIMAL)
        filewriter.writerow(['Sales','StoreID','Date','Amount'])

        dayCounter = 1
        target = 1
        for index, row in df.iterrows():
            filewriter.writerow([row['sales'], row['storeid'], dayCounter, int(row['amount'])])
            target += 1
            if((index+1)%3 == 0):
                dayCounter += 1
                target = 1
