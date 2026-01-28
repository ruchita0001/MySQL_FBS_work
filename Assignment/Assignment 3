1. Write a SQL statement to insert a record as follows: Employees :
mysql> create table employees(
    -> employee_id int primary key,
    -> first_name varchar(20),
    -> last_name varchar(20),
    -> email varchar(20),
    -> phone_number varchar(20),
    -> hire_date date,
    -> job_id varchar(15),
    -> salary decimal(10,2),
    -> commission_pct decimal(5,2),
    -> manager_id int,
    -> department_id int);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into employees(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
    -> values(100,'steven','king','sking','515.123.4567','1987-06-17','ad_pres',24000.00,0.00,200,10),
    -> (101,'neena','kochhar','nkochhar','515.123.4568','1987-06-18','ad_vp',17000.00,0.00,200,10),
    -> (102,'lex','de haan','ldehaan','515.123.4569','1987-06-19','ad_vp',17000.00,0.00,200,10),
    -> (103,'alexander','hunold','ahunold','590.423.4567','1987-06-20','it_prog',9000.00,0.00,103,60),
    -> (104,'bruce','ernst','bernst','590.423.4568','1987-06-21','it_prog',6000.00,0.00,103,60),
    -> (105,'david','austin','daustin','590.423.4569','1987-06-22','it_prog',4800.00,0.00,103,60),
    -> (106,'valli','pataballa','vpatabal','590.423.4560','1987-06-23','it_prog',4800.00,0.00,103,60),
    -> (107,'diana','lorentz','dlorentz','590.423.5567','1987-06-24','it_prog',4200.00,0.00,114,30),
    -> (108,'nancy','greenberg','ngreenbe','515.124.4569','1987-06-25','sa_man',12000.00,0.00,145,80),
    -> (109,'daniel','faviet','dfaviet','515.124.4169','1987-06-26','sa_man',9000.00,0.00,145,80);
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> table employees;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | steven     | king      | sking    | 515.123.4567 | 1987-06-17 | ad_pres | 24000.00 |           0.00 |        200 |            10 |
|         101 | neena      | kochhar   | nkochhar | 515.123.4568 | 1987-06-18 | ad_vp   | 17000.00 |           0.00 |        200 |            10 |
|         102 | lex        | de haan   | ldehaan  | 515.123.4569 | 1987-06-19 | ad_vp   | 17000.00 |           0.00 |        200 |            10 |
|         103 | alexander  | hunold    | ahunold  | 590.423.4567 | 1987-06-20 | it_prog |  9000.00 |           0.00 |        103 |            60 |
|         104 | bruce      | ernst     | bernst   | 590.423.4568 | 1987-06-21 | it_prog |  6000.00 |           0.00 |        103 |            60 |
|         105 | david      | austin    | daustin  | 590.423.4569 | 1987-06-22 | it_prog |  4800.00 |           0.00 |        103 |            60 |
|         106 | valli      | pataballa | vpatabal | 590.423.4560 | 1987-06-23 | it_prog |  4800.00 |           0.00 |        103 |            60 |
|         107 | diana      | lorentz   | dlorentz | 590.423.5567 | 1987-06-24 | it_prog |  4200.00 |           0.00 |        114 |            30 |
|         108 | nancy      | greenberg | ngreenbe | 515.124.4569 | 1987-06-25 | sa_man  | 12000.00 |           0.00 |        145 |            80 |
|         109 | daniel     | faviet    | dfaviet  | 515.124.4169 | 1987-06-26 | sa_man  |  9000.00 |           0.00 |        145 |            80 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
9 rows in set (0.00 sec)

mysql> create table department(
    -> department_id int,
    -> department_name varchar(20),
    -> manager_id int,
    -> location_id varchar(20));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into department
    -> values(10,'administration',200,1700),
    -> (20,'marketing',201,1800),
    -> (30,'purchasing',114,1700),
    -> (40,'human resources',203,2400),
    -> (50,'shipping',121,1500),
    -> (60,'it',103,1400),
    -> (70,'public relations',204,2700),
    -> (80,'sales',145,2500);
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> table department;
+---------------+------------------+------------+-------------+
| department_id | department_name  | manager_id | location_id |
+---------------+------------------+------------+-------------+
|            10 | administration   |        200 | 1700        |
|            20 | marketing        |        201 | 1800        |
|            30 | purchasing       |        114 | 1700        |
|            40 | human resources  |        203 | 2400        |
|            50 | shipping         |        121 | 1500        |
|            60 | it               |        103 | 1400        |
|            70 | public relations |        204 | 2700        |
|            80 | sales            |        145 | 2500        |
+---------------+------------------+------------+-------------+
8 rows in set (0.00 sec)


2. Write a SQL statement to insert 3 rows by a single insert statement.

mysql> insert into employees
    -> (employee_id, first_name, last_name, email, phone_number,
    ->  hire_date, job_id, salary, commission_pct, manager_id, department_id)
    -> values
    -> (110,'aarti','sharma','asharma','999.111.2222','2024-01-01','it_prog',5000,0.00,103,60),
    -> (111,'rohan','verma','rverma','999.111.3333','2024-01-02','sa_rep',6000,0.00,145,80),
    -> (112,'neha','patil','npatil','999.111.4444','2024-01-03','hr_rep',5500,0.00,101,40);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> table employees;
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email    | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | steven     | king      | sking    | 515.123.4567 | 1987-06-17 | ad_pres | 26400.00 |           0.00 |        200 |            10 |
|         101 | neena      | kochhar   | nkochhar | 515.123.4568 | 1987-06-18 | ad_vp   | 17000.00 |           0.00 |        200 |            10 |
|         102 | lex        | de haan   | ldehaan  | 515.123.4569 | 1987-06-19 | ad_vp   | 18700.00 |           0.00 |        200 |            10 |
|         103 | alexander  | hunold    | ahunold  | 590.423.4567 | 1987-06-20 | it_prog |  9900.00 |           0.00 |        103 |            60 |
|         104 | bruce      | ernst     | bernst   | 590.423.4568 | 1987-06-21 | it_prog |  6600.00 |           0.00 |        103 |            60 |
|         105 | david      | austin    | daustin  | 590.423.4569 | 1987-06-22 | it_prog |  5280.00 |           0.00 |        103 |            60 |
|         106 | valli      | pataballa | vpatabal | 590.423.4560 | 1987-06-23 | it_prog |  5280.00 |           0.00 |        103 |            60 |
|         107 | diana      | lorentz   | dlorentz | 590.423.5567 | 1987-06-24 | it_prog |  4620.00 |           0.00 |        114 |            30 |
|         108 | nancy      | greenberg | ngreenbe | 515.124.4569 | 1987-06-25 | sa_man  | 13200.00 |           0.00 |        145 |            80 |
|         109 | daniel     | faviet    | dfaviet  | 515.124.4169 | 1987-06-26 | sa_man  |  9900.00 |           0.00 |        145 |            80 |
|         110 | aarti      | sharma    | asharma  | 999.111.2222 | 2024-01-01 | it_prog |  5500.00 |           0.00 |        103 |            60 |
|         111 | rohan      | verma     | rverma   | 999.111.3333 | 2024-01-02 | sa_rep  |  6600.00 |           0.00 |        145 |            80 |
|         112 | neha       | patil     | npatil   | 999.111.4444 | 2024-01-03 | hr_rep  |  6050.00 |           0.00 |        101 |            40 |
+-------------+------------+-----------+----------+--------------+------------+---------+----------+----------------+------------+---------------+
13 rows in set (0.00 sec)


3. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.

mysql> create table jobs(
    -> job_id varchar(20),
    -> job_title varchar(35),
    -> min_salary int,
    -> max_salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into jobs(job_id,job_title,min_salary,max_salary)
    -> values("AD_PRES","President",20000,40000),
    -> ("AD_VP","Administration Vice President",15000,30000),
    -> ("AD_ASSI","Administration Assistant",3000,6000),
    -> ("FI_MSR","Finance Manager",8200,16000),
    -> ("FI_ACCOUNT","Accountant",4200,9000),
    -> ("AC_MGR","Accounting Manager",8200,16000),
    -> ("AC_ACCOUNT","Public Accountant",4200,9000),
    -> ("SA_MAN","Sales Manager",10000,20000);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> table jobs;
+------------+-------------------------------+------------+------------+
| job_id     | job_title                     | min_salary | max_salary |
+------------+-------------------------------+------------+------------+
| AD_PRES    | President                     |      20000 |      40000 |
| AD_VP      | Administration Vice President |      15000 |      30000 |
| AD_ASSI    | Administration Assistant      |       3000 |       6000 |
| FI_MSR     | Finance Manager               |       8200 |      16000 |
| FI_ACCOUNT | Accountant                    |       4200 |       9000 |
| AC_MGR     | Accounting Manager            |       8200 |      16000 |
| AC_ACCOUNT | Public Accountant             |       4200 |       9000 |
| SA_MAN     | Sales Manager                 |      10000 |      20000 |
+------------+-------------------------------+------------+------------+
8 rows in set (0.00 sec)


4. Write SQL statement to increment salary of each emp by 10%.

mysql> update employees set salary = salary + (salary * 0.10);
Query OK, 12 rows affected (0.01 sec)
Rows matched: 12  Changed: 12  Warnings: 0

mysql> select employee_id, salary from employees;
+-------------+----------+
| employee_id | salary   |
+-------------+----------+
|         100 | 26400.00 |
|         101 | 18700.00 |
|         102 | 18700.00 |
|         103 |  9900.00 |
|         104 |  6600.00 |
|         105 |  5280.00 |
|         106 |  5280.00 |
|         107 |  4620.00 |
|         108 | 13200.00 |
|         109 |  9900.00 |
|         110 |  5500.00 |
|         111 |  6600.00 |
|         112 |  6050.00 |
+-------------+----------+
13 rows in set (0.00 sec)


5. Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 and gets a commission is less than .20%

mysql> update employees set email='not available'
    -> where department_id=80 and commission_pct<0.20;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select employee_id, email, department_id, commission_pct
    -> from employees
    -> where department_id = 80;
+-------------+---------------+---------------+----------------+
| employee_id | email         | department_id | commission_pct |
+-------------+---------------+---------------+----------------+
|         108 | not available |            80 |           0.00 |
|         109 | not available |            80 |           0.00 |
|         111 | not available |            80 |           0.00 |
+-------------+---------------+---------------+----------------+
3 rows in set (0.00 sec)


6. Write a SQL statement to change the email column of employees table with 'not available' for those employees who belongs to the 'Purchasing' department.

mysql> update employees set email = 'not available'
    -> where department_id in (
    -> select department_id from department
    -> where department_name = 'Purchasing');
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> table employees;
+-------------+------------+-----------+---------------+--------------+------------+---------+----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | job_id  | salary   | commission_pct | manager_id | department_id |
+-------------+------------+-----------+---------------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | steven     | king      | sking         | 515.123.4567 | 1987-06-17 | ad_pres | 26400.00 |           0.00 |        200 |            10 |
|         101 | neena      | kochhar   | nkochhar      | 515.123.4568 | 1987-06-18 | ad_vp   | 18700.00 |           0.00 |        200 |            10 |
|         102 | lex        | de haan   | ldehaan       | 515.123.4569 | 1987-06-19 | ad_vp   | 18700.00 |           0.00 |        200 |            10 |
|         103 | alexander  | hunold    | ahunold       | 590.423.4567 | 1987-06-20 | it_prog |  9900.00 |           0.00 |        103 |            60 |
|         104 | bruce      | ernst     | bernst        | 590.423.4568 | 1987-06-21 | it_prog |  6600.00 |           0.00 |        103 |            60 |
|         105 | david      | austin    | daustin       | 590.423.4569 | 1987-06-22 | it_prog |  5280.00 |           0.00 |        103 |            60 |
|         106 | valli      | pataballa | vpatabal      | 590.423.4560 | 1987-06-23 | it_prog |  5280.00 |           0.00 |        103 |            60 |
|         107 | diana      | lorentz   | not available | 590.423.5567 | 1987-06-24 | it_prog |  4620.00 |           0.00 |        114 |            30 |
|         108 | nancy      | greenberg | not available | 515.124.4569 | 1987-06-25 | sa_man  | 13200.00 |           0.00 |        145 |            80 |
|         109 | daniel     | faviet    | not available | 515.124.4169 | 1987-06-26 | sa_man  |  9900.00 |           0.00 |        145 |            80 |
|         110 | aarti      | sharma    | asharma       | 999.111.2222 | 2024-01-01 | it_prog |  5500.00 |           0.00 |        103 |            60 |
|         111 | rohan      | verma     | not available | 999.111.3333 | 2024-01-02 | sa_rep  |  6600.00 |           0.00 |        145 |            80 |
|         112 | neha       | patil     | npatil        | 999.111.4444 | 2024-01-03 | hr_rep  |  6050.00 |           0.00 |        101 |            40 |
+-------------+------------+-----------+---------------+--------------+------------+---------+----------+----------------+------------+---------------+
13 rows in set (0.00 sec)

mysql> table department;
+---------------+------------------+------------+-------------+
| department_id | department_name  | manager_id | location_id |
+---------------+------------------+------------+-------------+
|            10 | administration   |        200 | 1700        |
|            20 | marketing        |        201 | 1800        |
|            30 | purchasing       |        114 | 1700        |
|            40 | human resources  |        203 | 2400        |
|            50 | shipping         |        121 | 1500        |
|            60 | it               |        103 | 1400        |
|            70 | public relations |        204 | 2700        |
|            80 | sales            |        145 | 2500        |
+---------------+------------------+------------+-------------+
8 rows in set (0.00 sec)

mysql> select department_id
    -> from department
    -> where department_name = 'Purchasing';
+---------------+
| department_id |
+---------------+
|            30 |
+---------------+
1 row in set (0.00 sec)


7. Write a SQL statement to change the email and commission_pct column of employees table with 'not available' and 0.10 for all employees.

mysql> update employees set email='not available',commission_pct=0.10;
Query OK, 13 rows affected (0.01 sec)
Rows matched: 13  Changed: 13  Warnings: 0

mysql> select employee_id, email, commission_pct
    -> from employees;
+-------------+---------------+----------------+
| employee_id | email         | commission_pct |
+-------------+---------------+----------------+
|         100 | not available |           0.10 |
|         101 | not available |           0.10 |
|         102 | not available |           0.10 |
|         103 | not available |           0.10 |
|         104 | not available |           0.10 |
|         105 | not available |           0.10 |
|         106 | not available |           0.10 |
|         107 | not available |           0.10 |
|         108 | not available |           0.10 |
|         109 | not available |           0.10 |
|         110 | not available |           0.10 |
|         111 | not available |           0.10 |
|         112 | not available |           0.10 |
+-------------+---------------+----------------+
13 rows in set (0.00 sec)
