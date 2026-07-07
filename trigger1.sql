create database trigers;
use trigers;
CREATE TABLE Studenttrig
(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Marks INT
);

INSERT INTO Studenttrig(StudentID, FirstName, LastName, Marks) VALUES
(1, 'John', 'Doe', 85),
(2, 'Alice', 'Smith', 90),
(3, 'Bob', 'Johnson', 78),
(4, 'Emma', 'Brown', 92),
(5, 'David', 'Wilson', 88);

select *from studenttrig;
create table studentaudit
(
studentid int identity(1,1) primary key,
message varchar(1000)
)
 select *from studenttrig;
create trigger tr_student_for_insert
on studenttrig
after insert 
AS
begin 
 insert into studentaudit
 select 
 'new student with id =' + cast(StudentID as varchar(50)) +
 ' fistname =' + cast(FirstName AS varchar(50)) +
 ' LastName =' + cast(LastName AS varchar(50)) +
 ' Marks =' + cast(Marks AS varchar(50)) +
 ' is added at' + cast(GETDATE() AS varchar(50))
 from inserted;
end;

insert into studenttrig values(7,'HUSSAIN','KHAN',70);
 select *from studenttrig;
 select *from studentaudit;

 create trigger tr_student_for_delete
 on studenttrig
 after delete
 AS
 BEGIN 
 insert into studentaudit
 select 
 ' deleted id =' + cast(studentid AS varchar(50)) +
 ' deleted fisrtname =' + cast(FirstName AS varchar(50)) +
 ' deleted LastName =' +cast(LastName AS varchar(50)) +
 ' deleted Marks =' +cast(Marks AS varchar(50)) +
 ' added at =' +cast(GETDATE() AS varchar(50))
 from deleted;
 End;

 delete from studenttrig where studentid = 7;
 select *from studenttrig;
 select *from studentaudit;

 create trigger tr_student_updts
 on studenttrig
 After update
 AS  
 begin
 declare @Studentid int 
    select @Studentid = Studentid from inserted
 declare @firstname varchar
  select @firstname = FirstName from inserted
 declare @lastname varchar
  select @LastName = LastName from inserted
 

 insert into studentaudit
 values('update student id =' +cast(@Studentid AS varchar(50)) +
 ' fistname = '+ cast(@FirstName AS varchar(50)) +
 ' lastname = ' + cast(@LastName AS varchar(50)) +
 ' added to = ' +cast(GETDATE() AS varchar(50)) 
 )
 end
 update studenttrig set marks =55 where Studentid =5;

 select *from studenttrig;
 select *from studentaudit;
