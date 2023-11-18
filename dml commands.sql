insert into DEPARTMENT values('Research',5, NULL, to_date('19880522','YYYYMMDD'));
insert into DEPARTMENT values('Administration',4, NULL, to_date('19950101','YYYYMMDD'));
insert into DEPARTMENT values('Headquarters',1, NULL, to_date('19810619','YYYYMMDD'));

update DEPARTMENT set mgr_ssn = 333445555 where dnumber = 5;
update DEPARTMENT set mgr_ssn = 987654321 where dnumber = 4;
update DEPARTMENT set mgr_ssn = 888665555 where dnumber = 1;

select * from department


insert into DEPT_LOCATIONS values(1, 'Houston');
insert into DEPT_LOCATIONS values(4, 'Stafford');
insert into DEPT_LOCATIONS values(5, 'Bellaire');
insert into DEPT_LOCATIONS values(5, 'Sugarland');
insert into DEPT_LOCATIONS values(5, 'Houston');

select * from DEPT_LOCATIONS




insert into EMPLOYEE values('John', 'B', 'Smith', 123456789, to_date('19650109','YYYYMMDD'), '731 Fondren, Houstom, TX', 'M', 30000, NULL, 5 );
insert into EMPLOYEE values('Franklin', 'T', 'Wong', 333445555, to_date('19551208','YYYYMMDD'), '636 Voss, Houston, TX', 'M', 40000, NULL, 5 );
insert into EMPLOYEE values('Alicia', 'J', 'Zelaya', 999887777, to_date('19680119','YYYYMMDD'), '3321 Castle, Spring, TX', 'F', 25000, NULL, 4 );
insert into EMPLOYEE values('Jennifer', 'S', 'Wallace', 987654321, to_date('19410620','YYYYMMDD'), '291 Berry, Bellaire, TX', 'F', 43000, NULL, 4 );
insert into EMPLOYEE values('Ramesh', 'K', 'Narayan', 666884444, to_date('19620915','YYYYMMDD'), '975 Fire Oak, Humble TX', 'M', 38000, NULL, 5);
insert into EMPLOYEE values('Joyce', 'K', 'English', 453453453, to_date('19720731','YYYYMMDD'), '5631 Rice, Houston, TX', 'F', 25000, NULL, 5);
insert into EMPLOYEE values('Ahmad', 'A', 'Jabbar', 987987987, to_date('19690329','YYYYMMDD'), '980 Dallas, Houston, TX', 'M', 25000, NULL, 4);
insert into EMPLOYEE values('James', 'E', 'Borg', 888665555, to_date('19731110','YYYYMMDD'), '450 Stone, Houston, TX', 'M', 55000, NULL, 1);


update EMPLOYEE set Super_ssn = 333445555 where ssn = 123456789;
update EMPLOYEE set Super_ssn = 888665555 where ssn = 333445555;
update EMPLOYEE set Super_ssn = 987654321 where ssn = 999887777;
update EMPLOYEE set Super_ssn = 888665555 where ssn = 987654321;
update EMPLOYEE set Super_ssn = 333445555 where ssn = 666884444;
update EMPLOYEE set Super_ssn = 333445555 where ssn = 453453453;
update EMPLOYEE set Super_ssn = 987654321 where ssn = 987987987;
update EMPLOYEE set Super_ssn = NULL where ssn = 888665555;
select * from EMPLOYEE


insert into PROJECT values('ProductX', 1, 'Bellaire', 5);
insert into PROJECT values('ProductY', 2, 'Sugarland', 5);
insert into PROJECT values('ProductZ', 3, 'Houstan', 5);
insert into PROJECT values('Computerization', 10, 'Stafford', 4);
insert into PROJECT values('Reorganization', 20, 'Houstan', 1);
insert into PROJECT values('Newbenefits', 30, 'Stafford', 4);

select * from PROJECT



INSERT INTO DEPENDENT VALUES(333445555,'Alice','F', to_date('19860405','YYYYMMDD'), 'Daughter')
INSERT INTO DEPENDENT VALUES (333445555,'Theodore','M', to_date('19831025','YYYYMMDD'), 'Son')
INSERT INTO DEPENDENT VALUES(333445555,'Joy','F', to_date('19580503','YYYYMMDD'), 'Spouse')
INSERT INTO DEPENDENT VALUES(987654321,'Abner','M', to_date('19420228','YYYYMMDD'), 'Spouse')
INSERT INTO DEPENDENT VALUES(123456789,'Michael','M', to_date('19880104','YYYYMMDD'), 'Son')
INSERT INTO DEPENDENT VALUES(123456789,'Alice','F', to_date('19881230','YYYYMMDD'), 'Daughter')
INSERT INTO DEPENDENT VALUES(123456789,'Elizabeth','F', to_date('19670505','YYYYMMDD'), 'Spouse')

select * from DEPENDENT

insert into WORKS_ON values(123456789, 1, 32.5);
insert into WORKS_ON values(123456789, 2, 7.5);
insert into WORKS_ON values(666884444, 3, 40.0);
insert into WORKS_ON values(453453453, 1, 20.0);
insert into WORKS_ON values(453453453, 2, 20.0);
insert into WORKS_ON values(333445555, 2, 10.0);
insert into WORKS_ON values(333445555, 3, 10.0);
insert into WORKS_ON values(333445555, 10, 10.0);
insert into WORKS_ON values(333445555, 20, 10.0);
insert into WORKS_ON values(999887777, 30, 30.0);
insert into WORKS_ON values(999887777, 10, 10.0);
insert into WORKS_ON values(987987987, 10, 35.0);
insert into WORKS_ON values(987987987, 30, 5.0);
insert into WORKS_ON values(987654321, 30, 20.0);
insert into WORKS_ON values(987654321, 20, 15.0);
insert into WORKS_ON values(888665555, 20, NULL);

select * from WORKS_ON;