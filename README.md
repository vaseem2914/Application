
# Train Ticket Reservation System 
<!-- - Youtube video for local setup of similar project: https://www.youtube.com/watch?v=mLFPodZO8Iw -->
- Youtube video for Step by Step Guide on Local Setup: https://www.youtube.com/watch?v=Wd2GlEJJJlw
<!-- - Live Url: https://traintickets.herokuapp.com <br>  -->
<!-- - Login Credentials: admin/admin -->

### About:
This project is about the Train-Ticket-Reservation-System which is used to view Train Schedule, search trains, Seat availability, Train timings. We can also enquire about fare of different trains. We can get information about train between two stations. We can book seats online. This provides a safe and secure seat reservation system. 
### Online Train Information and Reservation
<span style="color:blue">**This Website is built for following purpose:-**</span>
- View Trains Schedule
- Search Trains
- Seat Availability
- Train Timings
- Fare Enquiry
- Trains Between Stations
- Booking seats online.
- Login and Logout Security
- Password Changes
- Payment Gateway
- Ticket Booking History

<span style="color:blue">**The Admin have the following access to this website:-**</span>
- Login
- Add Trains
- Update Trains
- Remove  or cancle Trains
- View Trains
- Profile Edit
- Logout

<span style="color:blue">**The Users have the following Access:-**</span>
- Register
- Login
- View Trains
- Check Seat Availability
- Search Trains
- Train Avaiablity and Fare Between Stations
- Books Tickets
- View Booking History
- View Profile
- Update Profile
- Change Password
- Logout
=======

# <a href="https://youtu.be/mLFPodZO8Iw" target="_blank"> OnlineBookStore </a> 
- A Java Web Developement Project
- **Youtube VIDEO** for step by step Local Setup Guide : https://youtu.be/mLFPodZO8Iw
- **Youtube VIDEO** for local setup of tender management project: https://www.youtube.com/watch?v=7CE3aY4e644
<!--Check out the Live website demo: [https://theonlinebookstore.herokuapp.com](https://theonlinebookstore.herokuapp.com)-->
- User Login Credentials: (shashi/shashi)
- Admin Login Credentials: (Admin/Admin)
<hr>

### About

A user-friendly Online Bookstore project in which users can log in or register, view the available books, select books along with their quantity, and buy them. Users can also get payment receipts after successful payment. The project can also be used by the administrator, who can add new books, remove books, increase and decrease the quantity of books, change the price of the books as well as maintain the selling history of books.

![onlinebookstore](https://user-images.githubusercontent.com/34605595/137615096-8447d32d-bddc-4f13-a8ed-3c0f4dd5e04e.png)

<span style="color:blue">**This Website is built for following purpose:-**</span>
- For Selling books online.
- Maintaining books selling history.
- Adding and managing books.
- User Friendly.
- For Implementation of Http Servlets in Java.
- This is a Mini-project developed using Java, Jdbc, And Servlets.

<span style="color:blue">**Admin Have Following Access for this online store site:-**</span>
- Add New Books.
- View Books Available.
- Remove Books.
- Increase Books Amount.

<span style="color:blue">**Users Have Following Access for this online store site:-**</span>
- Create New Account or Register.
- Login.
- View Available Books.
- Select Books to Buy.
- Select Books Quantity.
- Buy Books.
- Get Payment Receipt.
>>>>>>> df8948233ba83278c4fdf0ddf6f66573dad58b9f

### Technologies used:-
1. Front-End Development:
- HTML
- CSS
<<<<<<< HEAD
- Bootstrap

2. Back-End Development
- Java [J2EE]
- JDBC
- Servlet
- Oracle ( SQL )

### ==== Software And Tools Required ======
- : Git [https://www.youtube.com/watch?v=gv7VPQ4LZ7g]
- : Java JDK 8+ [https://www.youtube.com/watch?v=O9PWH9SeTTE]
- : Eclipse EE [https://www.youtube.com/watch?v=8aDsEV7txXE]
- : Apache Maven [https://www.youtube.com/watch?v=jd2zx3dLjuw]
- : Tomcat v8.0+ [https://youtu.be/mLFPodZO8Iw?t=903]
- : Oracle (SQL) / SQL PLUS [https://www.youtube.com/watch?v=ZYOqykEDSqU]
- : Oracle SQL Developer [https://www.youtube.com/watch?v=2a1JKIGVtd0]

### ========== Dummy Database Initialization ===========

STEP 1: Open SQL Plus OR SQL Developer

STEP 2: Login and connect to database using administrator username and password

STEP 3 :Execute the below command first to create a new user:

```SQL

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;  
CREATE USER RESERVATION IDENTIFIED BY MANAGER;
GRANT DBA TO RESERVATION;
COMMIT;

```
NOTE: If the above command fails for alter session issues, try to remove first line and then execute it.

STEP 4: Now execute the below sql query in same terminal

```SQL

CONNECT RESERVATION/MANAGER;
CREATE TABLE "RESERVATION"."CUSTOMER" 
(	
"MAILID" VARCHAR2(40) PRIMARY KEY, 
"PWORD" VARCHAR2(20) NOT NULL, 
"FNAME" VARCHAR2(20) NOT NULL, 
"LNAME" VARCHAR2(20), 
"ADDR" VARCHAR2(100), 
"PHNO" NUMBER(12) NOT NULL
);

CREATE TABLE "RESERVATION"."ADMIN"
(	
"MAILID" VARCHAR2(40) PRIMARY KEY, 
"PWORD" VARCHAR2(20) NOT NULL, 
"FNAME" VARCHAR2(20) NOT NULL, 
"LNAME" VARCHAR2(20), 
"ADDR" VARCHAR2(100), 
"PHNO" NUMBER(12) NOT NULL
);


CREATE TABLE "RESERVATION"."TRAIN" 
(	
"TR_NO" NUMBER(10) PRIMARY KEY, 
"TR_NAME" VARCHAR2(70) NOT NULL, 
"FROM_STN" VARCHAR2(20) NOT NULL, 
"TO_STN" VARCHAR2(20) NOT NULL, 
"SEATS" NUMBER(4) NOT NULL, 
"FARE" NUMBER(6,2) NOT NULL 
);

CREATE TABLE "RESERVATION"."HISTORY" 
(	
"TRANSID" VARCHAR2(36) PRIMARY KEY, 
"MAILID" VARCHAR2(40) REFERENCES "RESERVATION"."CUSTOMER"(MAILID), 
"TR_NO" NUMBER(10),
"DATE" DATE,
"FROM_STN" VARCHAR2(20) NOT NULL, 
"TO_STN" VARCHAR2(20) NOT NULL, 
"SEATS" NUMBER(3) NOT NULL, 
"AMOUNT" NUMBER(8,2) NOT NULL
);

COMMIT;

INSERT INTO RESERVATION.ADMIN VALUES('admin@demo.com','admin','System','Admin','Demo Address 123 colony','9874561230');
INSERT INTO RESERVATION.CUSTOMER VALUES('shashi@demo.com','shashi','Shashi','Raj','Kolkata, West Bengal',954745222);

INSERT INTO RESERVATION.TRAIN VALUES(10001,'JODHPUR EXP','HOWRAH','JODHPUR', 152, 490.50);
INSERT INTO RESERVATION.TRAIN VALUES(10002,'YAMUNA EXP','GAYA','DELHI', 52, 550.50);
INSERT INTO RESERVATION.TRAIN VALUES(10003,'NILANCHAL EXP','GAYA','HOWRAH', 92, 451);
INSERT INTO RESERVATION.TRAIN VALUES(10004,'JAN SATABDI EXP','RANCHI','PATNA', 182, 550);
INSERT INTO RESERVATION.TRAIN VALUES(10005,'GANGE EXP','MUMBAI','KERALA', 12, 945);
INSERT INTO RESERVATION.TRAIN VALUES(10006,'GARIB RATH EXP','PATNA','DELHI', 1, 1450.75);

INSERT INTO RESERVATION.HISTORY VALUES('BBC374-NSDF-4673','shashi@demo.com',10001,TO_DATE('02-FEB-2024'), 'HOWRAH', 'JODHPUR', 2, 981);
INSERT INTO RESERVATION.HISTORY VALUES('BBC375-NSDF-4675','shashi@demo.com',10004,TO_DATE('12-JAN-2024'), 'RANCHI', 'PATNA', 1, 550);
INSERT INTO RESERVATION.HISTORY VALUES('BBC373-NSDF-4674','shashi@demo.com',10006,TO_DATE('22-JULY-2024'), 'PATNA', 'DELHI', 3, 4352.25);

COMMIT;
```
STEP 5: Now Execute the below query one by one to check if the tables are created successfully
```SQL
SELECT * FROM ADMIN;
SELECT * FROM CUSTOMER;
SELECT * FROM TRAIN;
SELECT * FROM HISTORY;

```
Note: If any of the above commands fails, please try to fix it first and then proceed to next step
	
### ====== Importing and Running the Project Through Eclipse EE ===========
Step 0: Open Eclipse Enterprise Edition. [Install if not available](https://www.youtube.com/watch?v=8aDsEV7txXE)

Step 1: Click On File > Import > Git > Projects From Git > Clone Uri  > Paste The Repository Url: ```https://github.com/shashirajraja/Train-Ticket-Reservation-System.git``` > Next > Select Master Branch > Next > Finish

Step 2.A: Right Click on Project > Run as > Maven Build > In the goals field enter "clean install" > apply > run

Step 2.B: Right Click On Project > Build Path > Configure Build Path > Libraries > Remove And Update Any Libraries With Red Mark > Finish

Step 3: [Only if Tomcat v8.0 is not Configured in Eclipse]: Right Click On Project > Run As > Run On Server > Select Tomcat v8.0 > (Select Tomcat V8.0 Installation Location If Asked) Next > Add <project-name> > Finish

Step 4: In The Server Tab > Double Click On Tomcat Server > Ports  > Change The Port Number For Http/1.1 To 8083 > Close And Save

Step 5: Right Click On Project > Run As > Run On Server > Select Tomcat V8.0 > Next > Add All> Done

Step 6: Check Running The Site At  <a Href="Http://localhost:8083/trainbook/">http://localhost:8083/trainbook/</a>

Step 7: Default Username And Password For Admin Is "admin@demo.com" And "admin"

Step 8: Default Username And Password For User Is "shashi@demo.com" And "shashi"



### The Screenshots of some of the  webPages of this project are Here:

1. Login Page
<img width="100%" alt="Login to Book Trains" src="https://user-images.githubusercontent.com/34605595/232219369-85b55a1d-6640-4821-941a-dcca08036fbe.png">

2. Register New User
<img width="100%" alt="Register New User" src="https://user-images.githubusercontent.com/34605595/232219485-2b00949a-be20-44f7-b6c1-107213221f94.png">

3. User Profile
<img width="100%" alt="View User Profile" src="https://user-images.githubusercontent.com/34605595/232219729-2720e50f-e14b-4253-831a-85c59e3054b3.png">

4. Search Trains Between Stations
<img width="100%" alt="Search Trains Between Stations" src="https://user-images.githubusercontent.com/34605595/232220357-54b634d6-afae-427c-b3af-57b372b70906.png">

5. View Trains
<img width="100%" alt="View Available Trains" src="https://user-images.githubusercontent.com/34605595/232219905-983eeefe-977b-40ad-a695-4ec577272dcc.png">

7. Book Trains
<img width="100%" alt="Book Trains Project" src="https://user-images.githubusercontent.com/34605595/232220107-415b251f-90b9-4e70-aff8-e94d370927f6.png">

8. Payment Gateway
<img width="100%" alt="Pay to Book Trains" src="https://user-images.githubusercontent.com/34605595/232220744-351c2c6d-e1f6-49ad-a11b-7680aa63dbe3.png">

9. Booked Ticket Information
<img width="100%" alt="Show Booked Ticket Details" src="https://user-images.githubusercontent.com/34605595/232220935-654bda38-cbde-4203-84b8-3078a32ac6ec.png">

10. Ticket Booking History
<img width="100%" alt="All Ticket Booking History" src="https://user-images.githubusercontent.com/34605595/232220491-3e7996cb-a54c-4375-a35a-6ab1d211a001.png">

11. Fare Enquiry
<img alt="Fare Enquiry between stations" src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/fareenquiry.png" width="100%">

12. Change Password
<img alt="Change user Password" src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/passwordchange.png" width="100%">

13. Add Trains By Admin
<img alt="Admin Home" src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/addtrains.png" width="100%">


#### "Suggestions and project Improvement are Invited"
#### Shashi Raj
##### Project Leader
=======
- Javascript
- BootStrap

2. Back-End Development:
- Java [JDK 8+]
- JDBC
- Servlet

3. Database:
- MySql

### ================ Software And Tools Required ================
- : Git [https://www.youtube.com/watch?v=gv7VPQ4LZ7g]
- : Java JDK 8+ [https://www.youtube.com/watch?v=O9PWH9SeTTE]
- : Eclipse EE (Enterprise Edition) [https://www.youtube.com/watch?v=8aDsEV7txXE]
- : Apache Maven [https://www.youtube.com/watch?v=jd2zx3dLjuw]
- : Tomcat v8.0+ [https://youtu.be/mLFPodZO8Iw?t=903]
- : MySQL Server [https://www.youtube.com/watch?v=Ydh5jYA6Frs]
- : MySQL Workbench (optional) [https://www.youtube.com/watch?v=t79oCeTXHwg]

### ================= Dummy Database Initialization =================

STEP 1: Open MySQL Command Prompt or MySQL Workbench

STEP 2: Login to the administrator user as : ```mysql -u <username> -p``` (Enter Password if asked)

STEP 3: Copy paste the following MySql Commands-
```MySQL
create database if not exists onlinebookstore;

use onlinebookstore;

create table if not exists books(barcode varchar(100) primary key, name varchar(100), author varchar(100), price int, quantity int);

create table if not exists users(username varchar(100) primary key,password varchar(100), firstname varchar(100),
    lastname varchar(100),address text, phone varchar(100),mailid varchar(100),usertype int);

insert into books values('9780134190563','The Go Programming Language','Alan A. A. Donovan and Brian W. Kernighan',400,8);
insert into books values('9780133053036','C++ Primer','Stanley Lippman and Josée Lajoie and Barbara Moo',976,13);
insert into books values('9781718500457','The Rust Programming Language','Steve Klabnik and Carol Nichols',560,12);
insert into books values('9781491910740','Head First Java','Kathy Sierra and Bert Bates and Trisha Gee',754,23);
insert into books values('9781492056300','Fluent Python','Luciano Ramalho',1014,5);
insert into books values('9781720043997','The Road to Learn React','Robin Wieruch',239,18);
insert into books values('9780132350884','Clean Code: A Handbook of Agile Software Craftsmanship','Robert C Martin',288,3);
insert into books values('9780132181273','Domain-Driven Design','Eric Evans',560,28);
insert into books values('9781951204006','A Programmers Guide to Computer Science','William Springer',188,4);
insert into books values('9780316204552','The Soul of a New Machine','Tracy Kidder',293,30);
insert into books values('9780132778046','Effective Java','Joshua Bloch',368,21);
insert into books values('9781484255995','Practical Rust Projects','Shing Lyu',257,15);
insert into users values('demo','demo','Demo','User','Demo Home','42502216225','demo@gmail.com',2);
insert into users values('Admin','Admin','Mr.','Admin','Haldia WB','9584552224521','admin@gmail.com',1);
insert into users values('shashi','shashi','Shashi','Raj','Bihar','1236547089','shashi@gmail.com',2);

commit;

```

### ========== Importing and Running The Project Through Eclipse EE ==========

Step 0: Open Eclipse Enterprise Edition. [Install, if not already installed.]

Step 1: Click On File > Import > Git > Projects From Git > Clone Uri > Paste The Repository Url as: ```https://github.com/shashirajraja/onlinebookstore.git```> Select master Branch > Next > Next > Finish.

Step 2. a: Go inside ```src/main/resources > application.properties``` and update the value of database details as per your usage, like db.driver, db.host, db.username and db.password according to your installed mysql/postgresql admin user credentials.

Step 2.b: Right Click on Project > Run as > Maven Build > In the goals field enter "clean install" > apply > run

Step 2.c: Right Click On Project > Build Path > Configure Build Path > Libraries > Remove and Update Any Libraries if Red Mark Exists > Finish.

Step 3: [Only If Tomcat Server is not configured in Eclipse] : Right Click On Project > Run As > Run On Server > Select Tomcat V8.0 > (Select Tomcat V8.0 Installation Location If Asked) Next > Add onlinebookstore > Finish.

Step 4: In The Server Tab > Double Click On Tomcat Server > Ports > Change The Port Number For Http/1.1 To 8083 > Close And Save.

Step 5: Right Click On Project > Run As > Run On Server > Select Tomcat v8.0 > Next > Add All> Done.

Step 6: Check Running The Site At  <a href="http://localhost:8083/onlinebookstore/">http://localhost:8083/onlinebookstore/</a>

Step 7: Default Username And Password For Admin Is "Admin" And "Admin"

Step 8: The default Username And Password For User Is "shashi" And "shashi"

## FAQ
**Question:1** Unable to Connect to Database?

**Answer:** Please check you have installed the mysql correctly and have updated the correct db details in application.properties file. Also you can try doing maven clean install and force update the project and restart.
<hr>

Note:- Considering this as a Sample Project, we have not much considered of web security.
#### Some Screenshots for the project:
<img width="941" alt="image" src="https://user-images.githubusercontent.com/34605595/224769637-37c34d4b-26e7-4d49-b990-4c09b260ec31.png">
<img width="954" alt="image" src="https://user-images.githubusercontent.com/34605595/224769990-f440f74d-41b2-4629-ba1c-a87267f225d9.png">
<img width="930" alt="image" src="https://user-images.githubusercontent.com/34605595/224770145-5902054f-5943-44ac-b02f-92097c8a6972.png">
<img width="934" alt="image" src="https://user-images.githubusercontent.com/34605595/224770257-e18a3810-0457-4b78-bf46-cf82746708ee.png">
<img width="946" alt="image" src="https://user-images.githubusercontent.com/34605595/224770392-5a5478d2-98cc-44ee-8689-132b6b16af80.png">


#### "Suggestions and project improvement ideas are welcomed!"

<bold>Thanks a lot,</bold><br/>
                                                                                                        Project Leader<br/>
                                                                                                         <b>Shashi Raj</b>
=======
# Application

df8948233ba83278c4fdf0ddf6f66573dad58b9f
