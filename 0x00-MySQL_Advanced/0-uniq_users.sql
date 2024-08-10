-- creates a 'users' table if it doesn't already exist.

IF NOT EXISTS (SELECT * FROM sys.tables WHERE type = 'U' AND name = 'users')
BEGIN
    CREATE TABLE dbo.users
    (
        id INT IDENTITY(1,1) PRIMARY KEY,
        email VARCHAR(255) NOT NULL UNIQUE,
        name VARCHAR(255)
    );
END
