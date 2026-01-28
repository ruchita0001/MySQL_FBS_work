Task / Problems:
1) Create the table Member, Books and Issue without any constraints as mentioned in the schema description above.

mysql> create table member(member_id int unique,
    -> member_name varchar(30),
    -> member_address varchar(50),
    -> acc_open_date date,
    -> membership_type varchar(20),
    -> fees_paid int,
    -> max_boosks_allowed int,
    -> panalty_amount decimal(7,2));
Query OK, 0 rows affected (0.05 sec)

mysql> create table books(
    -> books_no int,
    -> book_name varchar(30),
    -> author_name varchar(30),
    -> cost decimal(7,2),
    -> category char(10));
Query OK, 0 rows affected (0.01 sec)

mysql> create table issue(
    -> lib_issue_id int,
    -> book_no int,
    -> member_id int,
    -> issue_date date,
    -> return_date date);
Query OK, 0 rows affected (0.03 sec)

2) View the structure of the tables.

mysql> desc member;
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| member_id          | int          | YES  | UNI | NULL    |       |
| member_name        | varchar(30)  | YES  |     | NULL    |       |
| member_address     | varchar(50)  | YES  |     | NULL    |       |
| acc_open_date      | date         | YES  |     | NULL    |       |
| membership_type    | varchar(20)  | YES  |     | NULL    |       |
| fees_paid          | int          | YES  |     | NULL    |       |
| max_boosks_allowed | int          | YES  |     | NULL    |       |
| panalty_amount     | decimal(7,2) | YES  |     | NULL    |       |
+--------------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> desc books;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| books_no    | int          | YES  |     | NULL    |       |
| book_name   | varchar(30)  | YES  |     | NULL    |       |
| author_name | varchar(30)  | YES  |     | NULL    |       |
| cost        | decimal(7,2) | YES  |     | NULL    |       |
| category    | char(10)     | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | YES  |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

3) Drop the Member table

mysql> drop table member;
Query OK, 0 rows affected (0.02 sec)

4) Create the table Member again as per the schema description with the following constraints.

a. Member_Id – Primary Key
b. Membership_type - ‘Lifetime’,’ Annual’, ‘Half Yearly’,’ Quarterly’

mysql> create table member(member_id int primary key,
    -> member_name varchar(20),
    -> member_address varchar(50),
    -> acc_open_date date,
    -> membership_type varchar(20)
    -> check(membership_type in('lifetime','annual','half yearly','quarterly')),
    -> fees_paid int,
    -> max_books_allowed int,
    -> penalty_amount decimal(7,2));
Query OK, 0 rows affected (0.03 sec)

5) Modify the table Member increase the width of the member name to 30 characters.

mysql> alter table member
    -> modify column member_name varchar(30);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

6) Add a column named as Reference of Char(30) to Issue table.
alter table issue add column reference char(30);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+----------+------+-----+---------+-------+
| Field        | Type     | Null | Key | Default | Extra |
+--------------+----------+------+-----+---------+-------+
| lib_issue_id | int      | YES  |     | NULL    |       |
| book_no      | int      | YES  |     | NULL    |       |
| member_id    | int      | YES  |     | NULL    |       |
| issue_date   | date     | YES  |     | NULL    |       |
| return_date  | date     | YES  |     | NULL    |       |
| reference    | char(30) | YES  |     | NULL    |       |
+--------------+----------+------+-----+---------+-------+
6 rows in set (0.00 sec)

7) Delete/Drop the column Reference from Issue.

mysql> alter table issue drop column reference;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| lib_issue_id | int  | YES  |     | NULL    |       |
| book_no      | int  | YES  |     | NULL    |       |
| member_id    | int  | YES  |     | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

8) Rename the table Issue to Lib_Issue.
mysql> rename table issue to lib_issue;
Query OK, 0 rows affected (0.01 sec)

9) Insert following data in table Member
1 Richa Sharma, Pune, 2005-12-10, Lifetime, 25000, 5, 50
2 Garima Sen, Pune, current, date, Annual, 1000, 3, Null

mysql> insert into member
    -> values(1,'Richa Sharma','Pune','2005-12-10','Lifetime',25000,5,50),
    -> (2,'Garima Sen','Pune',SYSDATE(),'Annual',1000,3,NULL);
Query OK, 2 rows affected, 1 warning (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 1

10) Insert at least 5 records with suitable data.
mysql> insert into member values (3,'Amit Patil','Mumbai',SYSDATE(),'Annual',1500,4,0);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> insert into member values (4,'Neha Joshi','Nagpur',SYSDATE(),'Quarterly',500,2,10),
    -> (5,'Rahul Verma','Delhi',SYSDATE(),'Half Yearly',2000,5,20);
Query OK, 2 rows affected, 2 warnings (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 2

mysql> table member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | Member_Name  | member_address | acc_open_date | membership_type | fees_paid | max_books_allowed | penalty_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2026-01-21    | Annual          |      1000 |                 3 |           NULL |
|         3 | Amit Patil   | Mumbai         | 2026-01-21    | Annual          |      1500 |                 4 |           0.00 |
|         4 | Neha Joshi   | Nagpur         | 2026-01-21    | Quarterly       |       500 |                 2 |          10.00 |
|         5 | Rahul Verma  | Delhi          | 2026-01-21    | Half Yearly     |      2000 |                 5 |          20.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
5 rows in set (0.00 sec)

11) Modify the column Member_name. Decrease the width of the member name to 20 characters. (If it does not allow state the reason for that)
mysql> alter table member
    -> modify member_name varchar(20);
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc member;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| member_id         | int          | NO   | PRI | NULL    |       |
| member_name       | varchar(20)  | YES  |     | NULL    |       |
| member_address    | varchar(50)  | YES  |     | NULL    |       |
| acc_open_date     | date         | YES  |     | NULL    |       |
| membership_type   | varchar(20)  | YES  |     | NULL    |       |
| fees_paid         | int          | YES  |     | NULL    |       |
| max_books_allowed | int          | YES  |     | NULL    |       |
| penalty_amount    | decimal(7,2) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

12) Try to insert a record with Max_Books_Allowed = 110, Observe the error that comes.
mysql> insert into member values (6,'Test user','Pune',sysdate(),'Annual',1000,110,0);
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> table member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name  | member_address | acc_open_date | membership_type | fees_paid | max_books_allowed | penalty_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2026-01-21    | Annual          |      1000 |                 3 |           NULL |
|         3 | Amit Patil   | Mumbai         | 2026-01-21    | Annual          |      1500 |                 4 |           0.00 |
|         4 | Neha Joshi   | Nagpur         | 2026-01-21    | Quarterly       |       500 |                 2 |          10.00 |
|         5 | Rahul Verma  | Delhi          | 2026-01-21    | Half Yearly     |      2000 |                 5 |          20.00 |
|         6 | Test user    | Pune           | 2026-01-21    | Annual          |      1000 |               110 |           0.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
6 rows in set (0.00 sec)

13) Generate another table named Member101 using a Create command along with a simple SQL query on member table.
mysql> create table member101 as select*from member;
Query OK, 6 rows affected (0.02 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> table member101;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name  | member_address | acc_open_date | membership_type | fees_paid | max_books_allowed | penalty_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2026-01-21    | Annual          |      1000 |                 3 |           NULL |
|         3 | Amit Patil   | Mumbai         | 2026-01-21    | Annual          |      1500 |                 4 |           0.00 |
|         4 | Neha Joshi   | Nagpur         | 2026-01-21    | Quarterly       |       500 |                 2 |          10.00 |
|         5 | Rahul Verma  | Delhi          | 2026-01-21    | Half Yearly     |      2000 |                 5 |          20.00 |
|         6 | Test user    | Pune           | 2026-01-21    | Annual          |      1000 |               110 |           0.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
6 rows in set (0.00 sec)

14) Add the constraints on columns max_books_allowed and penalty_amt as follows
    a. max_books_allowed < 100
    b. penalty_amt maximum 1000. Also give names to the constraints.

mysql> alter table member add constraint chk_max_books check (max_books_allowed < 100);
ERROR 3819 (HY000): Check constraint 'chk_max_books' is violated.

mysql> alter table member add constraint chk_penalty_amt check (penalty_amount <= 100);
Query OK, 6 rows affected (0.04 sec)
Records: 6  Duplicates: 0  Warnings: 0

15) Drop the table books.
mysql> drop table books;
Query OK, 0 rows affected (0.02 sec)

16) Create table Books again as per the schema description with the following constraints.
    a. Book_No – Primary Key
    b. Book_Name – Not Null
    c. Category – System, Fiction, Database, RDBMS, Others.
mysql> create table books(book_no int primary key,
    -> book_name varchar(30) not null,
    -> author_name varchar(30), 
    -> cost decimal(7,2), 
    -> category char(10) CHECK(category IN ("System", "Fiction", "Database" , "RDBMS", "Others")));
Query OK, 0 rows affected (0.03 sec)

mysql> desc books;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| book_no     | int          | NO   | PRI | NULL    |       |
| book_name   | varchar(30)  | NO   |     | NULL    |       |
| author_name | varchar(30)  | YES  |     | NULL    |       |
| cost        | decimal(7,2) | YES  |     | NULL    |       |
| category    | char(10)     | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

17) Insert data in Book table as follows:
mysql> insert into books values 
    -> (101,'let us c','denis ritchie',450,'system'),
    -> (102,'oracle complete ref','loni',550,'database'),
    -> (103,'mastering sql','loni',250,'database'),
    -> (104,'pl sql-ref','scott urman',750,'database');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0
mysql> table books;
+---------+---------------------+---------------+--------+----------+
| book_no | book_name           | author_name   | cost   | category |
+---------+---------------------+---------------+--------+----------+
|     101 | let us c            | denis ritchie | 450.00 | system   |
|     102 | oracle complete ref | loni          | 550.00 | database |
|     103 | mastering sql       | loni          | 250.00 | database |
|     104 | pl sql-ref          | scott urman   | 750.00 | database |
+---------+---------------------+---------------+--------+----------+
4 rows in set (0.00 sec)

18) Insert more records in Book table.

mysql> insert into books values (108,'python','rossum',750,'system');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (109,'the alchemist','paulo coelho',520,'rdbms');
Query OK, 1 row affected (0.00 sec)

mysql> insert into books values (110,'the great gatsby','f. scott fitzgerald',850,'others');
Query OK, 1 row affected (0.02 sec)

mysql> insert into books values (105,'sql fundamentals','john smith',650,'rdbms');
Query OK, 1 row affected (0.01 sec)

mysql> table books;
+---------+---------------------+---------------------+--------+----------+
| book_no | book_name           | author_name         | cost   | category |
+---------+---------------------+---------------------+--------+----------+
|     101 | let us c            | denis ritchie       | 450.00 | system   |
|     102 | oracle complete ref | loni                | 550.00 | database |
|     103 | mastering sql       | loni                | 250.00 | database |
|     104 | pl sql-ref          | scott urman         | 750.00 | database |
|     105 | sql fundamentals    | john smith          | 650.00 | rdbms    |
|     106 | dbms                | navathe             | 600.00 | rdbms    |
|     107 | java basics         | herbert             | 500.00 | others   |
|     108 | python              | rossum              | 750.00 | system   |
|     109 | the alchemist       | paulo coelho        | 520.00 | rdbms    |
|     110 | the great gatsby    | f. scott fitzgerald | 850.00 | others   |
+---------+---------------------+---------------------+--------+----------+
10 rows in set (0.00 sec)

19) View the data in the tables using simple SQL query.

mysql> select * from member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name  | member_address | acc_open_date | membership_type | fees_paid | max_books_allowed | penalty_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2026-01-21    | Annual          |      1000 |                 3 |           NULL |
|         3 | Amit Patil   | Mumbai         | 2026-01-21    | Annual          |      1500 |                 4 |           0.00 |
|         4 | Neha Joshi   | Nagpur         | 2026-01-21    | Quarterly       |       500 |                 2 |          10.00 |
|         5 | Rahul Verma  | Delhi          | 2026-01-21    | Half Yearly     |      2000 |                 5 |          20.00 |
|         6 | Test user    | Pune           | 2026-01-21    | Annual          |      1000 |               110 |           0.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
6 rows in set (0.00 sec)

mysql> select * from books;
+---------+---------------------+---------------------+--------+----------+
| book_no | book_name           | author_name         | cost   | category |
+---------+---------------------+---------------------+--------+----------+
|     101 | let us c            | denis ritchie       | 450.00 | system   |
|     102 | oracle complete ref | loni                | 550.00 | database |
|     103 | mastering sql       | loni                | 250.00 | database |
|     104 | pl sql-ref          | scott urman         | 750.00 | database |
|     105 | sql fundamentals    | john smith          | 650.00 | rdbms    |
|     106 | dbms                | navathe             | 600.00 | rdbms    |
|     107 | java basics         | herbert             | 500.00 | others   |
|     108 | python              | rossum              | 750.00 | system   |
|     109 | the alchemist       | paulo coelho        | 520.00 | rdbms    |
|     110 | the great gatsby    | f. scott fitzgerald | 850.00 | others   |
+---------+---------------------+---------------------+--------+----------+
10 rows in set (0.00 sec)

mysql> select * from lib_issue;
Empty set (0.00 sec)

20) Insert into Book following data. (105, National Geographic, Adis Scott, 1000, Science)
mysql> alter table books
    -> drop check chk_category;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table books
    -> add constraint chk_category
    -> check (category in ('system','fiction','database','rdbms','others','science'));
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0


mysql> insert into books
    -> values (111,'national geographic','adis scott',1000,'science');
Query OK, 1 row affected (0.01 sec)

mysql> select * from books;
+---------+---------------------+---------------------+---------+----------+
| book_no | book_name           | author_name         | cost    | category |
+---------+---------------------+---------------------+---------+----------+
|     101 | let us c            | denis ritchie       |  450.00 | system   |
|     102 | oracle complete ref | loni                |  550.00 | database |
|     103 | mastering sql       | loni                |  250.00 | database |
|     104 | pl sql-ref          | scott urman         |  750.00 | database |
|     105 | sql fundamentals    | john smith          |  650.00 | rdbms    |
|     106 | dbms                | navathe             |  600.00 | rdbms    |
|     107 | java basics         | herbert             |  500.00 | others   |
|     108 | python              | rossum              |  750.00 | system   |
|     109 | the alchemist       | paulo coelho        |  520.00 | rdbms    |
|     110 | the great gatsby    | f. scott fitzgerald |  850.00 | others   |
|     111 | national geographic | adis scott          | 1000.00 | science  |
+---------+---------------------+---------------------+---------+----------+
11 rows in set (0.00 sec)

21) Rename the table Lib_Issue to Issue.
mysql> rename table Lib_Issue to Issue;
Query OK, 0 rows affected (0.02 sec)

22) Drop table Issue.
mysql> drop table Issue;
Query OK, 0 rows affected (0.03 sec)

23) As per the given structure Create table Issue again with following constraints.
 Lib_Issue_Id-Primary key
 Book_No- foreign key
 Member_id - foreign key
 Issue_date
 Return_date

mysql> create table issue(
    -> Lib_Issue_Id int primary key,
    -> Book_No int, member_id int, issue_date date, return_date date);
Query OK, 0 rows affected (0.04 sec)

mysql> alter table issue add foreign key(book_no) references books(book_no);
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table issue add foreign key(member_id) references member(member_id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| Lib_Issue_Id | int  | NO   | PRI | NULL    |       |
| Book_No      | int  | YES  | MUL | NULL    |       |
| member_id    | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.01 sec)

24) Insert following data into Issue table.
    Lib_Issue_Id    Book No    Member ID   Issue Date
    7001             101         1         10-Dec-06
    7002             102         2         25-Dec-06
    7003             104         1         15-Jan-06
    7004             101         1         04-Jul-06
    7005             104         2         15-Nov-06
    7006             101         3         18-Feb-06

mysql> insert into issue values(7001,101,1,'2006-12-10',null),
    -> (7002,102,2,'2006-12-25',null),
    -> (7003,104,1,'2006-01-15',null),
    -> (7004,101,1,'2006-07-04',null),
    -> (7005,104,2,'2006-11-15',null),
    -> (7006,101,3,'2006-02-18',null);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0
mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | NULL        |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.00 sec)

25) Remove the constraints on Issue table
mysql> alter table issue drop foreign key issue_ibfk_1;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table issue drop foreign key issue_ibfk_2;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> show create table issue;
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                             |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| issue | CREATE TABLE `issue` (
  `Lib_Issue_Id` int NOT NULL,
  `Book_No` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`Lib_Issue_Id`),
  KEY `Book_No` (`Book_No`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

26) Insert a record in Issue table. The member_id should not exist in member table.

mysql> insert into issue values(7007,101,99,'2006-03-10',null);
Query OK, 1 row affected (0.01 sec)

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | NULL        |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
|         7007 |     101 |        99 | 2006-03-10 | NULL        |
+--------------+---------+-----------+------------+-------------+
7 rows in set (0.00 sec)

27) Now enable the constraints of Issue table. Observe the error

mysql> alter table issue
    -> add foreign key (member_id) references member(member_id);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ruchita`.`#sql-186c_9`, CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`))

28) Delete the record inserted at Q-27) and enable the constraints.
mysql> delete from issue where member_id = 99;
Query OK, 1 row affected (0.02 sec)

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | NULL        |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.00 sec)
mysql> alter table issue
    -> add foreign key (member_id) references member(member_id);
Query OK, 6 rows affected (0.06 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> alter table issue
    -> add foreign key (book_no) references books(book_no);
Query OK, 6 rows affected (0.07 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> show create table issue;
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| issue | CREATE TABLE `issue` (
  `Lib_Issue_Id` int NOT NULL,
  `Book_No` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`Lib_Issue_Id`),
  KEY `member_id` (`member_id`),
  KEY `Book_No` (`Book_No`),
  CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`Book_No`) REFERENCES `books` (`book_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+-------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

29) Try to delete the record of member id 1 from member table and observe the error.

mysql> delete from member
    -> where member_id = 1;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`ruchita`.`issue`, CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`))

30) View the data and structure of all the three tables Member, Issue, Book.

mysql> table member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| member_id | member_name  | member_address | acc_open_date | membership_type | fees_paid | max_books_allowed | penalty_amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2026-01-21    | Annual          |      1000 |                 3 |           NULL |
|         3 | Amit Patil   | Mumbai         | 2026-01-21    | Annual          |      1500 |                 4 |           0.00 |
|         4 | Neha Joshi   | Nagpur         | 2026-01-21    | Quarterly       |       500 |                 2 |          10.00 |
|         5 | Rahul Verma  | Delhi          | 2026-01-21    | Half Yearly     |      2000 |                 5 |          20.00 |
|         6 | Test user    | Pune           | 2026-01-21    | Annual          |      1000 |               110 |           0.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
6 rows in set (0.00 sec)

mysql> desc member;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| member_id         | int          | NO   | PRI | NULL    |       |
| member_name       | varchar(20)  | YES  |     | NULL    |       |
| member_address    | varchar(50)  | YES  |     | NULL    |       |
| acc_open_date     | date         | YES  |     | NULL    |       |
| membership_type   | varchar(20)  | YES  |     | NULL    |       |
| fees_paid         | int          | YES  |     | NULL    |       |
| max_books_allowed | int          | YES  |     | NULL    |       |
| penalty_amount    | decimal(7,2) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> table books;
+---------+---------------------+---------------------+---------+----------+
| book_no | book_name           | author_name         | cost    | category |
+---------+---------------------+---------------------+---------+----------+
|     101 | let us c            | denis ritchie       |  450.00 | system   |
|     102 | oracle complete ref | loni                |  550.00 | database |
|     103 | mastering sql       | loni                |  250.00 | database |
|     104 | pl sql-ref          | scott urman         |  750.00 | database |
|     105 | sql fundamentals    | john smith          |  650.00 | rdbms    |
|     106 | dbms                | navathe             |  600.00 | rdbms    |
|     107 | java basics         | herbert             |  500.00 | others   |
|     108 | python              | rossum              |  750.00 | system   |
|     109 | the alchemist       | paulo coelho        |  520.00 | rdbms    |
|     110 | the great gatsby    | f. scott fitzgerald |  850.00 | others   |
|     111 | national geographic | adis scott          | 1000.00 | science  |
+---------+---------------------+---------------------+---------+----------+
11 rows in set (0.00 sec)

mysql> desc books;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| book_no     | int          | NO   | PRI | NULL    |       |
| book_name   | varchar(30)  | NO   |     | NULL    |       |
| author_name | varchar(30)  | YES  |     | NULL    |       |
| cost        | decimal(7,2) | YES  |     | NULL    |       |
| category    | char(10)     | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | NULL        |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.00 sec)

mysql> desc issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| Lib_Issue_Id | int  | NO   | PRI | NULL    |       |
| Book_No      | int  | YES  | MUL | NULL    |       |
| member_id    | int  | YES  | MUL | NULL    |       |
| issue_date   | date | YES  |     | NULL    |       |
| return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

31) Modify the Return_Date of 7004,7005 to 15 days after the Issue_date.
mysql> update issue
    -> set return_date = date_add(issue_date, interval 15 day)
    -> where lib_issue_id in (7004,7005);
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | 2006-07-19  |
|         7005 |     104 |         2 | 2006-11-15 | 2006-11-30  |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.00 sec)

32) Remove all the records from Issue table where member_ID is 1 and Issue date in before 10-Dec-06.
mysql> delete from issue
    -> where member_id = 1
    -> and issue_date < '2006-12-10';
Query OK, 2 rows affected (0.01 sec)

mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | 2006-11-30  |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
4 rows in set (0.00 sec)

33) Remove all the records from Book table with category other than RDBMS and Database.
mysql> delete from issue where Book_no IN (select Book_no from books where Category NOT IN ("rdbms","database"));
Query OK, 2 rows affected (0.02 sec)
mysql> table issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | member_id | issue_date | return_date |
+--------------+---------+-----------+------------+-------------+
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | 2006-11-30  |
+--------------+---------+-----------+------------+-------------+
2 rows in set (0.00 sec)
mysql> delete from books where Category NOT IN ("RDBMS","Database");
Query OK, 5 rows affected (0.01 sec)

mysql> table books;
+---------+---------------------+--------------+--------+----------+
| book_no | book_name           | author_name  | cost   | category |
+---------+---------------------+--------------+--------+----------+
|     102 | oracle complete ref | loni         | 550.00 | database |
|     103 | mastering sql       | loni         | 250.00 | database |
|     104 | pl sql-ref          | scott urman  | 750.00 | database |
|     105 | sql fundamentals    | john smith   | 650.00 | rdbms    |
|     106 | dbms                | navathe      | 600.00 | rdbms    |
|     109 | the alchemist       | paulo coelho | 520.00 | rdbms    |
+---------+---------------------+--------------+--------+----------+
6 rows in set (0.00 sec)

34) Remove the table Member.
mysql> drop table member;
ERROR 3730 (HY000): Cannot drop table 'member' referenced by a foreign key constraint 'issue_ibfk_1' on table 'issue'.
mysql> DELETE FROM issue
    -> WHERE member_id IN (
    ->     SELECT member_id FROM (SELECT member_id FROM member) AS temp
    -> );
Query OK, 2 rows affected (0.01 sec)

mysql> DROP TABLE member;
ERROR 3730 (HY000): Cannot drop table 'member' referenced by a foreign key constraint 'issue_ibfk_1' on table 'issue'.

mysql> ALTER TABLE issue
    -> DROP FOREIGN KEY issue_ibfk_1;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> drop table member;
Query OK, 0 rows affected (0.03 sec)

35) Remove the table Book.
mysql> alter table issue
    -> drop foreign key issue_ibfk_2;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> drop table books;
Query OK, 0 rows affected (0.03 sec)
