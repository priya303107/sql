drop table bank_acccount

CREATE TABLE bank_acccount(account_id int primary key,acc_hold varchar(50),balance float);
INSERT INTO bank_acccount(account_id,acc_hold,balance)values 
(101,'john doe',2000.00),
(102,'jane smith',1500.00),
(103,'alice johnson',2000.00),
(104,'bob brown',3000.00);

BEGIN TRANSACTION;
 
UPDATE bank_acccount SET balance=balance-500 WHERE account_id  =101;

COMMIT;

BEGIN TRANSACTION;

UPDATE bank_acccount SET balance=balance -300 WHERE account_id =102;

IF @@ERROR <> 0
BEGIN
ROLLBACK;
END
ELSE 
BEGIN
COMMIT; 
END
SELECT * FROM bank_acccount;