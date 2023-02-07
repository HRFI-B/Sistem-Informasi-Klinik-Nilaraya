import mysql.connector
import time

# inisiasi database
# database connection attempt
def connect_db():
    while True:
        try:
            db = mysql.connector.connect(
            host="103.150.92.63",
            user="hrfi",
            password="8Xs$pNzrzF!pNA",
            database="nilaraya"
            )
            return db

        # database connection error
        except mysql.connector.Error as e:
            print(f"Error connecting to database: {e}. Retrying in 5 seconds.")
            time.sleep(5)