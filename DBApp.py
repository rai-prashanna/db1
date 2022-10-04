import mysql.connector

group_number="3" #FILL IN YOUR GROUP NUMBER

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="ht22_1_group_3",
  passwd="pwd_3",
  database="ht22_1_project_group_3"
)

mycursor = mydb.cursor()
stop = 0

while True:
  #Check whether he user gonna stop the program
  stop = input("Input 1 to stop the program or 0 to continue:")
  if int(stop) == 1:
    break

  departmentID = input ("enter department ID: ")

  # Check whether it is a leaf department
  mycursor.execute("select * from Has where rootID =" + departmentID)

  myresult = mycursor.fetchall()

  # If len = 0, then it is a leaf department
  if len(myresult) == 0:

    # Get the products from the deparment
    mycursor.execute("select * from Product where dID =" + departmentID)
    getProduct = mycursor.fetchall()

    if len(getProduct) == 0:
      print("No product for dID=" + departmentID)
    else:
      print(" ProductID  \t\t\t\t Title \t\t\t\t Retail Price")
      for x in getProduct:
        # print(x)
        rp = round(int(x[4]) * float(x[5]) * (1 + float(x[7])))
        print(f"{x[0] :>3} \t {x[2]:>30} \t {rp :>10}")

  else:
    # List all child departments
    result = []

    for r in myresult:
      # Get the title of child department
      #print(r)
      mycursor.execute("select title from Department where dID =" + str(r[1]))
      title = mycursor.fetchall()[0][0]
      result.append([str(r[1]), title])

    #print(result)

    print(" ID  \t\t\t\t\t\t Title")
    for i, t in result:

      print(f"{i :>3} \t {t :>30} \t")

mydb.close()