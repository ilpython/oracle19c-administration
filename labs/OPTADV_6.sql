SET SERVEROUTPUT ON
VARIABLE b_script CLOB
DECLARE
v_tname VARCHAR2(32767);
BEGIN
v_tname := 'my_task';
:b_script := DBMS_STATS.SCRIPT_ADVISOR_TASK(v_tname);
END;
/
