-- Sum of two numbers
DECLARE
A number(2);
В number(2);
С number(3);
BEGIN
A:=10;
B:=20;
C:=A+B;
DBMS_OUTPUT.PUT_LINE(C);
DBMS_OUTPUT.PUT_LINE('Sum of two numbers: || c');
END;
/
-- postive / negative 
DECLARE
A NUMBER:=10;
BEGIN
IF A>0 THEN
DBMS_OUTPUT.PUT_LINE(A || ' is Postitive');
ELSE
DBMS_OUTPUT.PUT_LINE (A || ' is Negative');
END IF;
END;
/
-- largest of two numbers
DECLARE
A NUMBER:=10;
B NUMBER:=20;
BEGIN
IF A>B THEN
DBMS_OUTPUT.PUT_LINE(A || ' is Larger');
ELSIF A<B THEN
DBMS_OUTPUT.PUT_LINE(B || ' is Larger');
ELSE
DBMS_OUTPUT.PUT_LINE ('Both are equal');
END IF;
END;
/
-- Simple calculator
DECLARE
A NUMBER:=8;
B NUMBER:=2;
OP CHAR(1):='+';
BEGIN
CASE OP
WHEN '+' THEN DBMS_OUTPUT.PUT_LINE(A+B);
WHEN '-' THEN DBMS_OUTPUT.PUT_LINE(A-B);
WHEN '*' THEN DBMS_OUTPUT.PUT_LINE(A*B);
WHEN '/' THEN DBMS_OUTPUT.PUT_LINE(A/B);
ELSE DBMS_OUTPUT.PUT_LINE('Invalid Operator');
END CASE;
END;
/
-- Sum of 5 natural numbers
DECLARE
A NUMBER:=5;
RES NUMBER:=0;
BEGIN
WHILE A>0
LOOP
RES:=RES+A;
A:=A-1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Sum is ' || RES);
END;
/
-- Reverse a string
DECLARE
STR VARCHAR(20):= 'Vivek';
REV VARCHAR(20):='';
len NUMBER:=LENGTH(STR);
BEGIN
WHILE len>0
LOOP
REV:=REV || SUBSTR(STR,len,1);
len:=len-1;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Original String: ' || STR);
DBMS_OUTPUT.PUT_LINE('Reversed String: ' || REV);
END;
/