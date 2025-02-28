-- Departments tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Employees tablosunun oluşturulması ve veri eklenmesi
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Age, DepartmentID, Salary, JoinDate) VALUES
(1, 'John', 'Doe', 30, 1, 55000, '2020-01-15'),
(2, 'Jane', 'Smith', 45, 2, 65000, '2018-07-20'),
(3, 'Sam', 'Brown', 28, 1, 52000, '2021-04-25'),
(4, 'Lisa', 'White', 35, 3, 70000, '2019-03-18'),
(5, 'Mark', 'Black', 50, 1, 75000, '2015-11-05'),
(6, 'Lucy', 'Green', 40, 2, 60000, '2017-10-10');



--bütün employees değerlerini getir
select *from employees;

-- belirtilen durumda ki listeyi getir
select firstName,lastname,salary 
from employees; -- belirtilen durumda ki listeyi getir

--departmanı benzersiz olanları getir
select distinct DepartmentID || firstname
from employees; 

--departmanları it olanları listele
select firstName,lastName
from employees
where DepartmentID=1;

--maaşları büyükten küçüğe sıralama
select firstName,Salary
from employees
order by salary desc;

--maaşları küçükten büyüğe sıralama
select firstName,Salary
from employees
order by salary asc;

--kolon birleştirme
select firstName || ' & ' ||LastName as fullName
from employees;

--kolon birleştirme
select concat(firstName,'  &  ',lastName,' & ',age) as fullName
from employees;


/*Ödev harici basit alıştırmalar*/
--maaşı 70000 fazla olanı getir
select firstName,salary
from employees
where salary>7000;

--Maaşı 7000 den az olanlara parasız erkeği annesi bile sevmez de;:)
select firstName,salary,'Fakir ' as maddiDurumu
from employees
where salary<56000

--yaşı 40 25 arası olanları getir
select firstName,age
from employees
where age<40 and age>25;

select firstName,age
from employees
where age between 25 and 40;