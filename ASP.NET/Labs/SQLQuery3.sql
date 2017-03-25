Alter PROCEDURE [dbo].[ChangePassword]
	@USER varchar(50),
	@NEWPASS varchar(50)
AS
	Update Login
	set PASSWORD = @NEWPASS
	where EMAIL = @USER
RETURN 0

select * from Login

