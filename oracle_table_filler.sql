DECLARE
   curId NUMBER;
   stamp TIMESTAMP;
   
BEGIN 
    SELECT NVL(max(id),0) INTO curId FROM tablea;
    
    FOR x IN 1 .. 1000 LOOP
        curId := curId + x;
        stamp := CURRENT_TIMESTAMP;
        
        INSERT INTO tablea (id,name,stamp) VALUES(curId,'lol',stamp);
    END LOOP;
END;
