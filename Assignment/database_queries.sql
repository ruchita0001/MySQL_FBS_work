Que.1. Login to MySQL and view all databases already present. You should get following result :
        +--------------------+
        | Database           |
        +--------------------+
        | firstbit_sql       |
        | information_schema |
        | mysql              |
        | performance_schema |
        | sys                |
        +--------------------+
Ans: show all databases;

Que.2. Write an SQL statement to create a simple table countries including columns country_id,country_name and region_id. After this display the structure of table as below :
       +---------------+-------------+--------- +-----+---------+--------+
       | Field         | Type        | Null     | Key | Default | Extra  |
       +---------------+-------------+----------+-----+---------+--------+
       | country_id    | int(11)     | Yes      |     | Null    |        |
       | country_name  | varchar(20) | Yes      |     | Null    |        |
       | region_id     | int(11)     | Yes      |     | Null    |        |
       +---------------|-------------+----------+-----+---------+--------+
Ans: create table countries(
     country_id int primary key,
     country_name varchar(50),
     region_id int
     );
     
Que.3. Write an SQL statement to create a table named jobs including columns job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000. Also set job_id as primary key and entering null values for job_title is not allowed.
Ans: create table jobs(
     job_id int primary key,
     job_tittle varchar(50),
     min_salary int,
     max_salary int,
     constraint chk_max_salary check(max_salary <= 25000)
     );

Que.4. Write a SQL statement to create a table named job_histry including columns
employee_id, start_date, end_date, job_id and department_id
Ans: create table job_histry(
     employee_id int primary key,
     start_date date,
     end_date date,
     job_int int,
     department_id int);

Que.5. Write an SQL statement to alter a table named countries to make sure that no duplicate data against column country_id will be allowed at the time of insertion.
Ans: alter table countries
     add primary key (country_id);

Que.6. Write an SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.
Ans: create table job(
     job_id int primary key,
     job_tittle varchar(50) default ' ',
     min_salary int ddefault 8000,
     max_salary int default null);

Que.7. Create a Department table with following structure
      +-----------------+--------------+------+------+---------+-------+
      | Field           | Type         | Null | key  | Default | Extra |
      |-----------------+--------------+----- +------+---------+-------+
      | department_id   | decimal(4,0) | no   | pri  | 0       |       |
      | department_name | varchar(30)  | no   |      | null    |       |
      | manager_id      | decimal(6,0) | no   | pri  | 0       |       |
      | location_id     | decimal(4,0) | no   |      | null    |       |
      +-----------------+--------------+------+------+---------+-------+
Ans:  create table department (
      department_id decimal(4,0) not null default 0,
      department_name varchar(30) not null,
      manager_id decimal(6,0) not null,
      location_id decimal(4,0) default null,
      primary key (department_id, manager_id)
      );

Que.8. Write an SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
Ans: create table employees (
     employee_id int not null primary key,
     first_name varchar(50),
     last_name varchar(50),
     email varchar(100),
     phone_number varchar(20),
     hire_date date,
     job_id int,
     salary decimal(10,2),
     commission decimal(5,2),
     manager_id decimal(6,0),
     department_id decimal(4,0),
     constraint fk_dept_manager
     foreign key (department_id, manager_id)
     references department(department_id, manager_id)
     );
