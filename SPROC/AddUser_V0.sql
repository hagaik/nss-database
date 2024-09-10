CREATE PROCEDURE AddUser_V0
    @Username NVARCHAR(255),
    @Email NVARCHAR(255),
    @PasswordHash NVARCHAR(255)
AS
BEGIN
    INSERT INTO Users_V0 (Username, Email, PasswordHash, CreatedAt)
    VALUES (@Username, @Email, @PasswordHash, GETDATE());
END;