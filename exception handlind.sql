-- no data found exception
DECLARE
sal NUMBER(20);
BEGIN
SELECT SALARY INTO sal FROM EMPLOYEE WHERE FNAME='XYZ';
DBMS_OUTPUT.PUT_LINE('Salary is:' || sal);
EXCEPTION
WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('No Data Found');
END;
/

-- divide by zero exception
DECLARE
sal NUMBER(20);
res NUMBER(20);
BEGIN
SELECT SALARY INTO sal FROM EMPLOYEE WHERE FNAME='John';
res:=sal/0;
EXCEPTION
WHEN ZERO_DIVIDE THEN DBMS_OUTPUT.PUT_LINE('Divide by zero detected');
END;
/