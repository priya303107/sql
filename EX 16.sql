declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200);

set @plaintext='santhosh'; 
set @key_passphrase='key';
go

declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200);

set @plaintext='santhosh'; 
set @key_passphrase='key';
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext);
go

declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200);

set @plaintext='santhosh'; 
set @key_passphrase='key';
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext);
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext); 
select @ciphertext;
go


declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200);
 
set @plaintext='santhosh';
set @key_passphrase='key';
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext); 
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext); 
select @ciphertext;
select @plaintext;



declare @decrypt varbinary(40);
select @decrypt=DECRYPTBYPASSPHRASE(@key_passphrase,@ciphertext);
go



declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200); 
set @plaintext='santhosh';
set @key_passphrase='key';
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext); 
declare @decrypt varbinary(40);

select @decrypt=DECRYPTBYPASSPHRASE(@key_passphrase,@ciphertext); 
select @decrypt;
GO

declare @key_passphrase varchar(40); 
declare @plaintext varchar(40); 
declare @ciphertext varbinary(200); 

set @plaintext='santhosh';
set @key_passphrase='key';
select @ciphertext=ENCRYPTBYPASSPHRASE(@key_passphrase,@plaintext); 



declare @decrypt varbinary(40);
Select @decrypt=DECRYPTBYPASSPHRASE(@key_passphrase,@ciphertext); 
select @decrypt;
Select CONVERT(varchar(200),DECRYPTBYPASSPHRASE(@key_passphrase,@ciphertext));
go 