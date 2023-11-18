-- procedure to insert record
CREATE OR REPLACE PROCEDURE insertRecord(
    courseId IN STUDENT_COURSE.COURSE_ID%TYPE,
    rollNo IN STUDENT_COURSE.ROLL_NO%TYPE)
AS BEGIN
INSERT INTO STUDENT_COURSE VALUES (courseId , rollNo);
END insertRecord;
/

begin
insertRecord(10, 21);
end

-- function to find factorial
CREATE OR REPLACE FUNCTION FACT(N NUMBER)
RETURN NUMBER IS
  i NUMBER := 1;
  f NUMBER := 1;
BEGIN
  FOR i IN 1..N LOOP
    f := f * i;
  END LOOP;
  RETURN f;
END FACT;
/

select FACT(5) from dual;

-- trigger for inserting grade
CREATE OR REPLACE TRIGGER T1 BEFORE INSERT ON STUDENT
FOR EACH ROW BEGIN
IF (:new.sub1 < 20 OR :new.sub2 < 20 OR :new.sub3 < 20 OR :new.sub4 < 20 OR :new.sub5 < 20 OR :new.sub6 < 20) THEN
    :new.status := 'Fail';
ELSE
    :new.status := 'Pass';
END IF;
END;

-- trigger to send error when an conditions isn't matched
CREATE OR REPLACE TRIGGER T2 BEFORE INSERT ON EMPLOYEE
FOR EACH ROW WHEN(NEW.SEX != 'M' OR NEW.SEX != 'F')
BEGIN
RAISE_APPLICATION_ERROR(-20998, 'INVALID GENDER');
END;
/