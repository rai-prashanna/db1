import mysql.connector

group_number="3" #FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht22_1_group_3",
  passwd="pwd_3",
  database="ht22_1_project_group_3"
)

mycursor = mydb.cursor()

# This section is for updating discount when the ProductID is provided.
productID = input ("enter product ID: ")

mycursor.execute("SELECT pID,discount from Product where pID="+productID)

myresult = mycursor.fetchall()
print("Product  \t Discount")
for row in myresult:
  print(str(row[0])+"\t\t\t"+str(row[1]))

change = input("Do you want to change the discount? y or n")
if change == 'y':
    newdiscount = float(input("enter the new discount: "))
    mycursor.execute("UPDATE Product SET discount=" +str(newdiscount)+" WHERE pID="+productID)
    mydb.commit()
    mycursor.execute("SELECT pID,discount from Product where pID=" + productID)

    myresult = mycursor.fetchall()
    print("Product  \t Discount")
    for row in myresult:
        print(str(row[0]) + "\t\t\t" + str(row[1]))
else:
    exit()


# This section is for search department.
departmentID = input ("enter department ID: ")
# check if the department is the leaf department

mycursor.execute("SELECT originalPrice,Product.title  from Product join Department ON Product.did  = Department.dID where Department.dID="+departmentID)

myresult = mycursor.fetchall()
print("Title  \t Price")
for x in myresult:
  print(x[1]+"\t"+str(x[0]))

mydb.close()



