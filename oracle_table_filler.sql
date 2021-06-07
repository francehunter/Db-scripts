DECLARE
   curId NUMBER;
   cnt NUMBER;
   stamp TIMESTAMP;
   fname VARCHAR2(20);
   
BEGIN 
    SELECT NVL(max(id),0) INTO curId FROM tablea;
    
    FOR x IN 1 .. 1000 LOOP
        curId := curId + 1;
        select current_timestamp + numToDSInterval( dbms_random.value(1, 100*24*60*60), 'second' ) INTO stamp from dual;        
        fname := DBMS_RANDOM.string('x',20);
        cnt := DBMS_RANDOM.RANDOM();
        
        INSERT INTO tablea (id,name,stamp,cnt) VALUES(curId,fname,stamp,cnt);
    END LOOP;
END;
