DELIMITER //
CREATE PROCEDURE ORDERED_NAMECUS ()
BEGIN
    SELECT C.FNAME, C.MINIT, C.LNAME , C.BIRTHDAY
	FROM CUSTOMER_ACC C,  DORDER D
		WHERE C.ID = D.CUS_ID
		GROUP BY C.FNAME, C.MINIT, C.LNAME , C.BIRTHDAY
		ORDER BY C.FNAME ASC ;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE EMP_BIRTH_LIST ()
BEGIN
    SELECT COUNT(*) NUMBER_EMPLOYEE
    FROM EMPLOYEE_ACC
    WHERE EMPLOYEE_ACC.BIRTHDAY LIKE '1971%';
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE SUM_EMP_SALARY ()
BEGIN
    SELECT SUM(SALARY) SUM_SALARY
    FROM EMPLOYEE_ACC;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AVERAGE_SALARY_EMP ()
BEGIN
    SELECT AVG(SALARY) AVERAGE_SALARY
    FROM EMPLOYEE_ACC ;
END //
DELIMITER ;


CALL ORDERED_NAMECUS();
CALL EMP_BIRTH_LIST ();
CALL SUM_EMP_SALARY ();
CALL AVERAGE_SALARY_EMP ();
DROP PROCEDURE EMP_BIRTH_LIST;

