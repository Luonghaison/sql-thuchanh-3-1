create database insert_into;
use insert_into;

create table insert_into.class(
classId int primary key auto_increment,
className varchar(50),
startDate date,
status tinyint(1)

);

create table insert_into.student(
studentId int primary key auto_increment,
studentName varchar(50),
address varchar(255),
phone varchar(50),
status tinyint(1),
classId int,
foreign key(classId) references insert_into.class(classId)
);

create table subject(
subjectId int primary key auto_increment,
subName varchar(50),
credit int,
status tinyint(1)

);

create table mark(
markId int primary key auto_increment,
subId int,
foreign key(subId) references subject(subjectId),
studentId int,
foreign key(studentId) references insert_into.student(studentId),
mark int,
examtime int
);

INSERT INTO insert_into.class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO insert_into.class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO insert_into.class
VALUES (3, 'B3', current_date, 0);

INSERT INTO insert_into.student (studentName, address, phone, status, classId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO insert_into.student (studentName, address, status, classId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO insert_into.student (studentName, address, phone, status, classId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);


INSERT INTO subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);

INSERT INTO mark (subId, studentId, mark, examtime)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);