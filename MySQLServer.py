
import mysql.connector
from mysql.connector import errorcode


try:
    mydb=mysql.connector.connect(
        host="localhost",
        user="YaredW",
        passwd="7321"
    )

    mycursor= mydb.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as error:
    print(f"Error occured -> {error}")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()
        print()
