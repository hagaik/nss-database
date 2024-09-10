CREATE PROCEDURE GetUser_V0
    @Username NVARCHAR(255)
AS
BEGIN
    -- Select user information based on the provided username
    SELECT 
        Username,
        Email,
        PasswordHash,
        CreatedAt
    FROM 
        Users_V0
    WHERE 
        Username = @Username;
END;