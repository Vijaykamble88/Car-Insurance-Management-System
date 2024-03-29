CREATE TABLE CUSTOMERS_DETAILS(CUSTOMER_ID NUMBER(5) CONSTRAINT CUSTDETAIL_CUST_ID_PK PRIMARY KEY,
FIRST_NAME VARCHAR2(20) CONSTRAINT CUSTDETAIL_FNAME NOT NULL,
LAST_NAME VARCHAR2(20) CONSTRAINT CUSTDETAIL_LNAME NOT NULL,
MOBILE_NUMBER NUMBER(12) CONSTRAINT CUSTDETAIL_MOBILE UNIQUE,
DOB DATE CONSTRAINT CUSTDETAIL_DOB NOT NULL,
ADDRESS VARCHAR2(40) CONSTRAINT CUSTDETAIL_ADDR NOT NULL,
GENDER VARCHAR2(5) CONSTRAINT CUSTDETAIL_GEN NOT NULL,
EMAIL VARCHAR2(30) CONSTRAINT CUSTDETAIL_EMAIL UNIQUE NOT NULL);

CREATE SEQUENCE SEQ_CUST
INCREMENT BY 1
START WITH 101
MINVALUE 101
MAXVALUE 115
NOCYCLE
NOCACHE;

INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'ANUJA','HARAL',8843890542,'25-07-2001','AHMEDNAGAR KEDGAON','F','anujaharal8@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'MADHUSUDAN','BHOSLE',9872638290,'05-04-1995','NANDED','M','madbhosle@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'MOHIT','GAIKWAD',8527390283,'22-03-1997','BARAMATI','M','mohitg@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'POONAM','KHOMANE',7532218328,'31-12-1999','AHMEDNAGAR','F','poonam123@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'JYOTI','NIKALJE',9876543210,'23-07-1998','PUNE','F','jnikalje@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'AVINASH','DALE',7654009800,'01-08-2001','SAMBHAJINAGAR','M','avidale257@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'ANIKET','MATERE',9860764180,'15-05-1999','PUNE','M','aniketbhau12@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'RUNALI','PAL',9404388078,'15-06-2001',' ','F','runa987@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'KALYANI','DEOGHARE',7536035212,'14-02-2001','WARDHA','F','sr45@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'SHUBHAM','RANE',8788459560,'11-09-1999','PUNE','M','shubhamrane2@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'GAURAV','NEWASE',9932761486,'18-07-2001','PUNE','M','gnewase234@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'RAHUL','PATIL',7020326379,'18-05-1998','SAMBHAJINAGAR','M','patil234@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'KALYANI','KALE',8530468586,'01-09-2001','BEED','M','kkale3@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'SONALI','PATANKAR',8830345097,'25-09-1998','PUNE','F','spatankar2@gmail.com');
INSERT INTO CUSTOMERS_DETAILS VALUES(SEQ_CUST.NEXTVAL,'RUTUJA','NAVAL',9804890940,'06-07-1997','AHMEDNAGAR','F','rutujanava28@gmail.com');

SELECT*
FROM CUSTOMERS_DETAILS;

CREATE TABLE CAR_DETAILS (CAR_ID VARCHAR2(16) CONSTRAINT CAR_ID_PK PRIMARY KEY,
CHASSIS_NO VARCHAR2(30) CONSTRAINT CAR_CHASSI UNIQUE,
MODEL_NO VARCHAR2(10) CONSTRAINT CAR_MOD NOT NULL,
YEAR NUMBER(10) CONSTRAINT CAR_YEAR NOT NULL,
ENGINE_NO VARCHAR2(20) CONSTRAINT CAR_ENG UNIQUE,
CUSTOMER_ID NUMBER(10), 
CONSTRAINT CAR_CUST_ID FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERs_DETAILS(CUSTOMER_ID));

CREATE SEQUENCE SEQ_CAR
INCREMENT BY 1
START WITH 101
MINVALUE 101
MAXVALUE 115
CYCLE
NOCACHE;


INSERT INTO CAR_DETAILS VALUES('MH26AA5555','5UXXW3C53J0T80683','LXI',2012,'52wvc10338',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH20AR6767','4S3BMHB68B3286050','VDI',2017,'238sh72872',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH12AB3539','HGBH41JXMN109186','TDI',2017,'23sndc2732',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH05CD5423','7C3FR76A515072256','XMS',2014,'32ghd54367',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH12TV9090','1HGBH41JXMN10919','RSX',2014,'76yhg67678',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH15AB2356','5YJSA1DG9DFP14705','XT',2003,'09jhy76789',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH14AA909','1GNCS18Z3M0115561','Pat',2012,'43gfr98765',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH25AC7876','1FTFW1R6XBFB08616','A5',2015,'23wer54686',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH14BA9656','JT1552EEA100302159','Camry',2012,'65tgf43567',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH12AB6565','1FTFX1E57JKE37092','92x',2017,'76hgf56789',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH26DA9009','5TFAW512HX597834','F150',2014,'09uyu65424',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH01AA1234','FFMN34A0L0085788','A3',2006,'56fds54326',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH12AD0007','WDB1290601F012345','X500',2015,'76tgh65432',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH14AE7777','1G1YY0786G5100001','Highland',2010,'87hju65437',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH44EE7878','1HGCM82633A004352','Maxima',2010,'98jhg34900',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH22BD5454','MT1558EEA100302159','92X',2017,'067yu65424',SEQ_CAR.NEXTVAL);
INSERT INTO CAR_DETAILS VALUES('MH20AK9090','T9XXW3C53J0T80683','AK500',2015,'90hju65437',SEQ_CAR.NEXTVAL);

SELECT* 
FROM CAR_DETAILS;
COMMIT;


CREATE TABLE PLAN_DETAILS(PLAN_ID NUMBER(5) CONSTRAINT PLANDE_PLNID_PK PRIMARY KEY,
PLAN_NAME VARCHAR2(50) CONSTRAINT PLANDE_NAME NOT NULL,
MATURITY_PERIOD NUMBER(5) CONSTRAINT PLANDE_MTP NOT NULL);

CREATE SEQUENCE SEQ_PLAN
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 4
NOCYCLE
NOCACHE;


INSERT INTO PLAN_DETAILS VALUES(SEQ_PLAN.NEXTVAL,'COMPREHENSIVE CAR INSURANCE',1);
INSERT INTO PLAN_DETAILS VALUES(SEQ_PLAN.NEXTVAL,'THIRD PARTY LIABILITY COVERAGE',2);
INSERT INTO PLAN_DETAILS VALUES(SEQ_PLAN.NEXTVAL,'COLLISION INSURANCE',3);
INSERT INTO PLAN_DETAILS VALUES(SEQ_PLAN.NEXTVAL,'STAND ALONE OWN DAMAGE CAR INSURANCE',4);


SELECT*
FROM PLAN_DETAILS;

CREATE TABLE POLICY_DETAILS(POLICY_NUMBER NUMBER(20) CONSTRAINT POLICYDE_PN_PK PRIMARY KEY,
PACKAGE_ID CHAR(3) CONSTRAINT POLICYDE_PACK NOT NULL,
PLAN_ID NUMBER(5), CONSTRAINT POLICYDE_PLAN FOREIGN KEY(PLAN_ID) REFERENCES PLAN_DETAILS(PLAN_ID),
CAR_ID VARCHAR2(20),CONSTRAINT POLICYDE_CAR FOREIGN KEY(CAR_ID) REFERENCES CAR_DETAILS(CAR_ID)
ON DELETE SET NULL,
MONTHLY_PREMIUM NUMBER(10) CONSTRAINT POLICYDE_MON CHECK(MONTHLY_PREMIUM>=500),
PACKAGE_NAME VARCHAR2(10) CONSTRAINT POLICYDE_PACKNAME NOT NULL,
COVERAGE NUMBER(10) CONSTRAINT POLICYDE_COVE NOT NULL,
START_DATE DATE CONSTRAINT START_CON NOT NULL,
END_DATE DATE CONSTRAINT END_CON NOT NULL);

CREATE SEQUENCE SEQ_POLY
INCREMENT BY 1
START WITH 123456788
MINVALUE 123456788
MAXVALUE 123456804
NOCYCLE
NOCACHE;

INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'A',1,'MH26AA5555',1000,'SILVER',200000,'13-02-2021','14-02-2022');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'B',2,'MH12AB3539',1500,'GOLD',500000,'14-01-2022','15-01-2024');	
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH12TV9090',2000,'PLATINUM',700000,'23-06-2020','24-05-2023');	
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'D',4,'MH15AB2356',2500,'DIAMOND', 1000000,'04-04-2020','05-04-2024');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH14AA909',2000,'PLATINUM',700000,'03-01-2021','04-01-2024');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'D',4,'MH25AC7876',2500,'DIAMOND',1000000,'23-03-2018','24-03-2022');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'B',2,'MH14BA9656',1500,'GOLD',500000,'02-02-2022','03-03-2024');	
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'B',2,'MH12AB6565',1500,'GOLD',500000,'03-01-2019','04-01-2021');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH26DA9009',2000,'PLATINUM',700000,'29-08-2021','30-08-2023');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'A',1,'MH01AA1234',1000,'SILVER',200000,'24-03-2021','25-03-2022');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'B',2,'MH12AD0007',1500,'GOLD',500000,'04-03-2016','05-03-2018');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH14AE7777',2000,'PLATINUM',700000,'23-01-2022','24-01-2025');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'D',4,'MH44EE7878',2500,'DIAMOND',1000000,'29-02-2020','01-03-2024');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'A',1,'MH22BD5454',1000,'SILVER',200000,'07-09-2018','08-09-2019');	
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'B',2,'MH20AK9090',1500,'GOLD',500000,'25-07-2019','25-07-2021');
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH20AR6767',2000,'PLATINUM',700000,'09-10-2020','10-10-2023');	
INSERT INTO POLICY_DETAILS VALUES(SEQ_POLY.NEXTVAL,'C',3,'MH05CD5423',2000,'PLATINUM',700000,'01-10-2018','02-10-2020');


SELECT * 
FROM POLICY_DETAILS;
COMMIT;

DROP TABLE POLICY_DETAILS;
DROP SEQUENCE SEQ_POLY;

CREATE TABLE INCIDENT_DETAILS(
INCIDENT_ID NUMBER(5) CONSTRAINT INCIDENT_ID_PK PRIMARY KEY,
COLLISSION_TYPE VARCHAR2(20) CONSTRAINT INCIDENT_COL_TY NOT NULL,
INCIDENT_TYPE VARCHAR2(20) CONSTRAINT INCIDENT_TYPE NOT NULL,
CUSTOMER_ID NUMBER CONSTRAINT INCIDENT_CUST NOT NULL,
POLICY_NUMBER NUMBER CONSTRAINT INCIDENT_POLICY NOT NULL,
INCIDENT_SEVERITY VARCHAR2(20) CONSTRAINT INCIDENT_SEVER NOT NULL,
INCIDENT_DATE DATE CONSTRAINT INCIDENT_DT NOT NULL,
CAR_ID VARCHAR2(20), CONSTRAINT INCIDENT_CAR FOREIGN KEY(CAR_ID) REFERENCES CAR_DETAILS(CAR_ID));

CREATE SEQUENCE SEQ_INCI
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 10
NOCYCLE
NOCACHE;

INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'SIDE_COLLISION','SINGLE_VEHICLE',101,123456788,'MINOR','12-04-2021','MH26AA5555');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'FRONT_COLLISION','MULTI_VEHICLE',102,123456789,'MAJOR','03-05-2022','MH12AB3539');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'FRONT_COLLISION','PARKED_CAR',103,123456790,'TOTAL_LOSS','06-01-2021','MH12TV9090');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'SIDE_COLLISION','MULTI_VEHICLE',104,123456791,'TOTAL_LOSS','05-08-2022','MH15AB2356');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'SIDE_COLLISION','SINGLE_VEHICLE',105,123456792,'MINOR','08-09-2022','MH14AA909');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'REAR_COLLISION','SINGLE_VEHICLE',106,123456793,'MAJOR','14-06-2022','MH25AC7876');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'FRONT_COLLISION','PARKE_CAR',107,123456794,'TOTAL_LOSS','31-12-2021','MH14BA9656');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'FRONT_COLLISION','MULTI_VEHICLE',108,123456795,'MAJOR','04-08-2020','MH12AB6565');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'SIDE_COLLISION','MULTI_VEHICLE',109,123456796,'MINOR','01-03-2022','MH26DA9009');
INSERT INTO INCIDENT_DETAILS VALUES(SEQ_INCI.NEXTVAL,'REAR_COLLISION','SINGLE_VEHICLE',110,123456797,'MINOR','23-07-2021','MH01AA1234');

SELECT * FROM INCIDENT_DETAILS;
COMMIT;

CREATE TABLE CLAIM_DETAILS(
CLAIM_ID VARCHAR2(5) CONSTRAINT CLAIM_PK PRIMARY KEY,
CLAIM_DATE DATE CONSTRAINT CLAIM_DAT NOT NULL,
CLAIM_STATUS VARCHAR2(10)CONSTRAINT CLAIM_STAT NOT NULL,
CLAIM_AMOUNT NUMBER(10) CONSTRAINT CLAIM_AM  CHECK (CLAIM_AMOUNT>=1000),
DESCRIPTION_DETAILS VARCHAR2(30) CONSTRAINT CLAIM_DESC NOT NULL,
POLICY_NUMBER NUMBER(10) CONSTRAINT CLAIM_POLICY UNIQUE,
INCIDENT_ID NUMBER(5), CONSTRAINT CLAIM_INCIDENT FOREIGN KEY(INCIDENT_ID) REFERENCES INCIDENT_DETAILS(INCIDENT_ID));

CREATE SEQUENCE SEQ_CLAIM
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 10
NOCYCLE
NOCACHE;

INSERT INTO CLAIM_DETAILS VALUES('C1','15-01-2022','NOT_ACTIVE',110000,'PENDING',123456788,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C2','11-04-2023','ACTIVE',350000,'APPROVED',123456789,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C3','15-03-2023','ACTIVE',500000,'APPROVED',123456790,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C4','29-11-2021','ACTIVE',654000,'APROVED',123456791,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C5','28-12-2021','NOT_ACTIVE',300000,'DENIED',123456792,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C6','13-10-2019','NOT_ACTIVE',750000,'PENDING',123456793,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C7','01-02-2023','ACTIVE',267000,'APPROVED',123456794,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C8','07-10-2022','ACTIVE',150000,'APRPROVED',123456795,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C9','11-03-2022','NOT_ACTIVE',545000,'DENIED',123456796,SEQ_CLAIM.NEXTVAL);
INSERT INTO CLAIM_DETAILS VALUES('C10','15-02-2022','NOT ACTIVE',30000,'DENIED',123456797,SEQ_CLAIM.NEXTVAL);
COMMIT;

SELECT * FROM CLAIM_DETAILS;

CREATE TABLE  CLAIM_HISTORY(
CLAIM_ID VARCHAR2(5) CONSTRAINT CLAIM_IDD UNIQUE,
CLAIM_DATE DATE CONSTRAINT CLAIM_DT NOT NULL,
TOTAL_BILL_AMOUNT NUMBER(10) CONSTRAINT CLAIM_BILL NOT NULL,
STATUS VARCHAR2(20) CONSTRAINT CLAIM_STATUS NOT NULL);

SELECT * FROM CLAIM_HISTORY;
COMMIT;

INSERT INTO CLAIM_HISTORY VALUES('C1','15-01-2022',110000,'NOT_ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C2','11-04-2023',300000,'ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C3','15-03-2023',400000,'ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C4','29-11-2021',550000,'ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C5','28-12-2021',650000,'NOT_ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C6','13-10-2019',660000,'NOT_ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C7','01-02-2023',24000,'ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C8','07-10-2022',140000,'ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C9','11-03-2022',50000,'NOT_ACTIVE');
INSERT INTO CLAIM_HISTORY VALUES('C10','15-02-2022',25000,'NOT_ACTIVE');


SELECT * FROM CUSTOMERs_DETAILS;
SELECT * FROM CAR_DETAILS;
SELECT * FROM PLAN_DETAILS;
SELECT * FROM INCIDENT_DETAILS;
SELECT * FROM POLICY_DETAILS;
SELECT * FROM CLAIM_DETAILS;
SELECT * FROM CLAIM_HISTORY;

COMMIT;



-----------------------**  Car Insurance Project Queries  **-------------------------------

SELECT * FROM CUSTOMER_DETAILS;
SELECT * FROM CAR_DETAILS;
SELECT * FROM PLAN_DETAILS;
SELECT * FROM INCIDENT_DETAILS;
SELECT * FROM POLICY_DETAILS;
SELECT * FROM CLAIM_DETAILS;
SELECT * FROM CLAIM_HISTORY;

--1) show customer details are from Pune district
SELECT *
FROM CUSTOMERS_DETAILS
WHERE ADDRESS IN('PUNE','pune','Pune');

--2)how many customer are from Pune and Nanded city
SELECT ADDRESS,COUNT(*)
FROM CUSTOMERS_DETAILS
WHERE ADDRESS IN ('PUNE','Pune','pune')
OR ADDRESS IN ('NANDED','Nanded','nanded')
GROUP BY ADDRESS;

--3)THOSE CUSTOMER WHOSE DOB > THAN 1998
SELECT *
FROM CUSTOMERS_DETAILS
WHERE DOB >ANY (SELECT DOB
            FROM CUSTOMER_DETAILS
            WHERE DOB>'31-12-1998');
            
--4) WAQ OF THOSE CUSTOMER WHOSE MONTHLY PREMIUN >1500
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,CAR_ID,MONTHLY_PREMIUM,COUNT(*)
FROM CUSTOMERS_DETAILS JOIN CAR_DETAILS
USING(CUSTOMER_ID)
JOIN POLICY_DETAILS
USING(CAR_ID)
WHERE MONTHLY_PREMIUM>1500
GROUP BY CUSTOMER_ID,FIRST_NAME,LAST_NAME,CAR_ID,MONTHLY_PREMIUM ;

--5) HOW MANY CUSTOMER PAID 2000 PREMIUM MONTHLY
SELECT MONTHLY_PREMIUM,COUNT(*)
FROM POLICY_DETAILS
WHERE MONTHLY_PREMIUM=2000
GROUP BY MONTHLY_PREMIUM;

--6)SHOW THOSE CUSTOMER > 1 CAR WITH CAR DETAILS
SELECT FIRST_NAME,LAST_NAME,CUSTOMER_ID,COUNT(*)
FROM CUSTOMERS_DETAILS JOIN CAR_DETAILS
USING (CUSTOMER_ID)
GROUP BY FIRST_NAME,LAST_NAME,CUSTOMER_ID
HAVING COUNT(*)>1;

--7)SUM OF PREMIUM
SELECT SUM(MONTHLY_PREMIUM)
FROM POLICY_DETAILS;

--8)Show Duplicate record
SELECT CUSTOMER_ID ,COUNT(CUSTOMER_ID)
FROM CAR_DETAILS
GROUP BY CUSTOMER_ID
HAVING COUNT(CUSTOMER_ID)>1;


---DUPLICATE RECORD--
SELECT CUSTOMER_ID,FIRST_NAME,COUNT(*) AS COUNTS
FROM CUSTOMERS_DETAILS JOIN CAR_DETAILS
USING(CUSTOMER_ID)
GROUP BY CUSTOMER_ID,FIRST_NAME
HAVING COUNT(*)>1;

--8)Show Duplicate record with name (NOT VALID)_
SELECT*
FROM 
( 
SELECT CUSTOMER_ID,CAR_ID,MODEL_NO,FIRST_NAME,LAST_NAME,DENSE_RANK()OVER(ORDER BY CUSTOMER_ID)AS RNK
FROM CAR_DETAILS JOIN CUSTOMERS_DETAILS
USING(CUSTOMER_ID))
WHERE RNK IN (1,2);

--9)SHOW CUSTOMER DETAILS ALONG WITH THEIR PLAN NAME
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,CAR_ID,POLICY_NUMBER,PLAN_ID,PLAN_NAME
FROM CUSTOMERS_DETAILS JOIN CAR_DETAILS
USING(CUSTOMER_ID)
JOIN POLICY_DETAILS
USING(CAR_ID)
JOIN PLAN_DETAILS
USING(PLAN_ID);

--10)show the deatils of pending policy
SELECT CD.CUSTOMER_ID,CD.FIRST_NAME,C.CAR_ID,I.INCIDENT_ID,CLD.DESCRIPTION_DETAILS
FROM CUSTOMERS_DETAILS CD JOIN CAR_DETAILS C
ON(CD.CUSTOMER_ID=C.CUSTOMER_ID)
JOIN INCIDENT_DETAILS I
ON(C.CAR_ID=I.CAR_ID)
JOIN CLAIM_DETAILS CLD
ON(I.INCIDENT_ID=CLD.INCIDENT_ID)
WHERE CLD.DESCRIPTION_DETAILS='PENDING';

SELECT CD.CUSTOMER_ID,CD.FIRST_NAME,CR.CAR_ID,IDS.POLICY_NUMBER
FROM CUSTOMERS_DETAILS CD JOIN CAR_DETAILS CR
ON(CD.CUSTOMER_ID=CR.CUSTOMER_ID)
JOIN INCIDENT_DETAILS IDS
ON(CR.CAR_ID=IDS.CAR_ID);

--11)SHOW THE DETAILS PLAN_NAME WITH CUSTOMER NAME AND POLICY NUMBER
SELECT CUSTOMER_ID,FIRST_NAME,POLICY_NUMBER,PLAN_NAME
FROM CUSTOMERS_DETAILS JOIN CAR_DETAILS
USING(CUSTOMER_ID)
JOIN POLICY_DETAILS
USING(CAR_ID)
JOIN PLAN_DETAILS
USING(PLAN_ID);

--12)
SELECT FIRST_NAME,COUNT(*) AS COUNTS
FROM CUSTOMERS_DETAILS
GROUP BY FIRST_NAME
HAVING COUNT(*)>1;

--13) avg premium of policy
SELECT AVG(MONTHLY_PREMIUM)AS AVG_PREMIUM,COUNT(*)
FROM POLICY_DETAILS
GROUP BY MONTHLY_PREMIUM
HAVING COUNT(*)>1;

SELECT MONTHLY_PREMIUM ,COUNT(*) AS NUMBER_OF_PEOPLE
FROM POLICY_DETAILS
GROUP BY MONTHLY_PREMIUM
HAVING MONTHLY_PREMIUM BETWEEN 1500 AND 2000;


DESC CUSTOMERS_DETAILS;


CREATE TABLE CLAIM_AUDIT(USER_NAME VARCHAR2(20),
ENTRY_DATE DATE,
CLAIM_ID NUMBER,
CLAIM_DATE DATE,
CLAIM_STATUS VARCHAR2(20),
CLAIM_AMOUNT NUMBER,
DESCRIPTION_DETAILS VARCHAR2(20),
POLICY_NUMBER NUMBER,
INCIDENT_ID NUMBER);

SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER CLAIM_HISTORY
AFTER
DELETE 
ON CLAIM_DETAILS
FOR EACH ROW
BEGIN
INSERT INTO CLAIM_AUDIT VALUES(USER,SYSDATE,:NEW.CLAIM_ID,:NEW.CLAIM_DATE,:NEW.CLAIM_STATUS,:NEW.CLAIM_AMOUNT,
:NEW.DESCRIPTION_DETAILS,:NEW.POLICY_NUMBER,:NEW.INCIDENT_ID);
END;

SELECT * FROM CLAIM_AUDIT;

DELETE 
FROM CLAIM_DETAILS
WHERE CLAIM_ID='C1';

COMMIT;


---top selled package
create or replace procedure top_selled_plan(rank_ number)
as 
cursor abc is(
select *
from(
select p.plan_id ,p.plan_name,count(*) as cnt,
dense_rank() over (order by count(*) desc) as rnk
from plan_details p join policy_details pd
on(p.plan_id = pd.plan_id)
group by p.plan_id,p.plan_name)
where rnk <= rank_);
begin
for i in abc
loop
dbms_output.put_line(i.plan_id ||' '||i.plan_name||' '||i.cnt);
end loop;
end;


execute top_selled_plan(2);

--which plan sold how many times sold in particular year
create or replace procedure plan_sold_bet_year(s_date varchar2, e_date varchar2)
as 
cursor pqr is (
select pd.plan_id,p.plan_name, count(*) as cnt
from plan_details p join policy_details pd
on(p.plan_id = pd.plan_id)
where to_char(start_date,'yyyy') between s_date and e_date
group by pd.plan_id,p.plan_name);

begin
for i in pqr
loop
dbms_output.put_line(i.plan_id||' '||i.plan_name||' '||i.cnt);
end loop;
end;

execute plan_sold_bet_year('2020','2022');


--Total premium calculate per customer
create or replace procedure premium_calculation(cid number) 
as
cursor abc is
select c.customer_id, c.first_name, sum(p.monthly_premium) as total_premium
from customers_details c join car_details cd
on(c.customer_id = cd.customer_id)
join policy_details p
on(cd.car_id = p.car_id)
where c.customer_id = cid
group by  c.customer_id, c.first_name;

begin 
for i in abc 
loop
dbms_output.put_line(i.customer_id||' '||i.first_name||' '||i.total_premium);
end loop;
end;


execute premium_calculation(110);


create or replace procedure monthwise_claim_cnt(date_ date) 
as
cursor abc is
SELECT
    TO_CHAR(date_, 'YYYY-MM') AS month,
    COUNT(*) AS claim_count
FROM
    claim_details
GROUP BY
    TO_CHAR(date_, 'YYYY-MM')
ORDER BY month;

begin
for i in abc
loop 
dbms_output.put_line(i.month||' '||i.claim_count);
end loop;
end;

execute monthwise_claim_cnt('20-10-2021');


-- procedure to update premium amount

CREATE OR REPLACE PROCEDURE update_policy_premium(
    p_policy_id IN NUMBER,
    p_new_premium IN NUMBER
)
IS
BEGIN
    UPDATE policy_details
    SET monthly_premium = p_new_premium
    WHERE policy_number = p_policy_id;

    DBMS_OUTPUT.PUT_LINE('Policy premium updated successfully.');
END update_policy_premium;

execute update_policy_premium(123456788,1100);

select * from policy_details;



