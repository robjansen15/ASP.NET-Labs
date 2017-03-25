select * from Login

execute CreateUser
@FNAME = 'Rob',
@LNAME = 'Jansen',
@EMAIL = 'robjansen15@gmail.com',
@PASSWORD = 'password'


ALTER PROCEDURE [dbo].[CheckLogin]
	@USER varchar(50),
	@PASS varchar(50)
AS
	SELECT * from Login
	where EMAIL = @USER
	and PASSWORD = @PASS;

RETURN 0


CREATE PROCEDURE [dbo].[UpdateVerification]
	@USER varchar(50)
AS
	Update Login
	SET CONFIRM_REG = 'yes'
	where EMAIL = @USER

RETURN 0



ALTER PROCEDURE [dbo].[CreateUser]
	@FNAME varchar(50),
	@LNAME varchar(50),
	@EMAIL varchar(50),
	@PASSWORD varchar(50),
	@RAND varchar(3)
AS
	insert into Login(F_NM, L_NM, EMAIL, PASSWORD, CONFIRM_REG)
	values (@FNAME,@LNAME,@EMAIL,@PASSWORD,@RAND);
		
RETURN 0

Execute CheckLogin
@USER = 'robjansen15@gmail.com',
@PASS = 'password'
