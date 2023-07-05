
from mysql.connector import Error 
import mysql.connector
from queja import data

try:
    connection = mysql.connector.connect(
        host='10.10.10.2',
        port=33060,
        user='root',
        password='mysql',
        db='DBQUEJAS'
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.executemany("""INSERT INTO Queja (ID_Queja, Fecha_Recepcion , Descripcion, Estado, ID_Cliente_FK, ID_Categoria_FK, ID_Asignacion_FK) 
                                VALUES (%s, %s, %s, %s, %s, %s, %s)""", data)
        if (len(data) == cursor.rowcount):
            connection.commit()
            print("{} rows inserted.".format(len(data)))
        else:
            connection.rollback()
except Error as ex:
    print("Error during connection: {}".format(ex))
finally:
    if connection.is_connected():
        connection.close()
        print("Connection closed.")