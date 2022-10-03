import mysql.connector

group_number="3" #FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht22_1_group_3",
  passwd="pwd_3",
  database="ht22_1_project_group_3"
)

mycursor = mydb.cursor()
departmentID = input ("enter department ID: ")

mycursor.execute("SELECT originalPrice,Product.title  from Product join Department ON Product.did  = Department.dID where Department.dID="+departmentID)

myresult = mycursor.fetchall()
print("Title  \t Price")
for x in myresult:
  print(x[1]+"\t"+str(x[0]))

mydb.close()