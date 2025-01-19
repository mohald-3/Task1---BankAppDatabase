-- Use the Bank Database
USE BankDB;
GO

---- Create the Customers Table
--CREATE TABLE Customers (
--    CustomerId INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment primary key
--    Name NVARCHAR(100) NOT NULL,
--    Email NVARCHAR(100) NOT NULL UNIQUE,      -- Unique constraint for email
--    Mobile NVARCHAR(15) NOT NULL UNIQUE,      -- Unique constraint for mobile
--    Address NVARCHAR(255),
--    Birthday DATE
--);
--GO

---- Create the BankAccounts Table
--CREATE TABLE BankAccounts (
--    BankAccountId INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment primary key
--    Type NVARCHAR(50) NOT NULL,                 -- Account type (e.g., Savings, Checking)
--    Balance DECIMAL(18, 2) NOT NULL CHECK (Balance >= 0), -- Ensure balance is non-negative
--    CustomerId INT NOT NULL,                    -- Foreign key to Customers table
--    CONSTRAINT FK_BankAccounts_Customers FOREIGN KEY (CustomerId)
--        REFERENCES Customers(CustomerId) ON DELETE CASCADE
--);
--GO

---- Create the Transactions Table
--CREATE TABLE Transactions (
--    TransactionId INT IDENTITY(1,1) PRIMARY KEY, -- Auto-increment primary key
--    Amount DECIMAL(18, 2) NOT NULL CHECK (Amount > 0), -- Ensure positive transaction amounts
--    DateStamp DATETIME NOT NULL DEFAULT GETDATE(),    -- Default to current timestamp
--    SenderBankAccountId INT NULL,                     -- Foreign key to BankAccounts table
--    ReceiverBankAccountId INT NULL,                   -- Foreign key to BankAccounts table
--    CONSTRAINT FK_Transactions_Sender FOREIGN KEY (SenderBankAccountId)
--        REFERENCES BankAccounts(BankAccountId),
--    CONSTRAINT FK_Transactions_Receiver FOREIGN KEY (ReceiverBankAccountId)
--        REFERENCES BankAccounts(BankAccountId)
--);
--GO

--PRINT 'Database and tables have been created successfully!';


---- Insert sample data into Customers table
--INSERT INTO Customers (Name, Email, Mobile, Address, Birthday)
--VALUES 
--('Alice Johnson', 'alice.johnson@example.com', '1234567890', '123 Elm St, Springfield', '1985-06-15'),
--('Bob Smith', 'bob.smith@example.com', '2345678901', '456 Oak St, Springfield', '1990-04-22'),
--('Catherine Green', 'catherine.green@example.com', '3456789012', '789 Pine St, Springfield', '1983-11-08'),
--('David Brown', 'david.brown@example.com', '4567890123', '321 Maple St, Springfield', '1978-03-30'),
--('Eleanor White', 'eleanor.white@example.com', '5678901234', '654 Birch St, Springfield', '1995-07-19'),
--('Frank Wilson', 'frank.wilson@example.com', '6789012345', '987 Cedar St, Springfield', '1987-02-13'),
--('Grace King', 'grace.king@example.com', '7890123456', '159 Ash St, Springfield', '1992-12-05'),
--('Henry Adams', 'henry.adams@example.com', '8901234567', '753 Beech St, Springfield', '1980-09-28'),
--('Irene Harris', 'irene.harris@example.com', '9012345678', '246 Walnut St, Springfield', '1989-08-14'),
--('Jack Thompson', 'jack.thompson@example.com', '0123456789', '369 Chestnut St, Springfield', '1993-05-11');
--GO

---- Insert sample data into BankAccounts table
--INSERT INTO BankAccounts (Type, Balance, CustomerId)
--VALUES
--('Checking', 5000.00, 1),
--('Savings', 10000.00, 1),
--('Checking', 2000.00, 2),
--('Savings', 15000.00, 2),
--('Checking', 3000.00, 3),
--('Savings', 12000.00, 3),
--('Checking', 4000.00, 4),
--('Savings', 14000.00, 4),
--('Checking', 6000.00, 5),
--('Savings', 11000.00, 5),
--('Checking', 2500.00, 6),
--('Savings', 13000.00, 6),
--('Checking', 7000.00, 7),
--('Savings', 9000.00, 7),
--('Checking', 8000.00, 8),
--('Savings', 17000.00, 8),
--('Checking', 1000.00, 9),
--('Savings', 18000.00, 9),
--('Checking', 500.00, 10),
--('Savings', 20000.00, 10);
--GO

---- Insert sample data into Transactions table
---- Randomized sender and receiver accounts with varied amounts and timestamps
--INSERT INTO Transactions (Amount, DateStamp, SenderBankAccountId, ReceiverBankAccountId)
--VALUES
--(150.00, '2025-01-01 10:30:00', 1, 3),
--(200.00, '2025-01-02 11:15:00', 3, 5),
--(350.00, '2025-01-03 12:45:00', 5, 7),
--(500.00, '2025-01-04 14:00:00', 7, 9),
--(450.00, '2025-01-05 15:30:00', 2, 4),
--(300.00, '2025-01-06 16:45:00', 4, 6),
--(400.00, '2025-01-07 17:50:00', 6, 8),
--(550.00, '2025-01-08 19:15:00', 8, 10),
--(250.00, '2025-01-09 08:20:00', 9, 1),
--(100.00, '2025-01-10 09:35:00', 10, 2),
--(175.00, '2025-01-11 10:50:00', 1, 5),
--(225.00, '2025-01-12 12:10:00', 3, 7),
--(300.00, '2025-01-13 13:25:00', 5, 9),
--(275.00, '2025-01-14 14:40:00', 7, 1),
--(125.00, '2025-01-15 15:55:00', 2, 6),
--(450.00, '2025-01-16 17:10:00', 4, 8),
--(500.00, '2025-01-17 18:25:00', 6, 10),
--(600.00, '2025-01-18 19:40:00', 8, 2),
--(350.00, '2025-01-19 20:55:00', 10, 4),
--(200.00, '2025-01-20 22:10:00', 9, 3),
---- Additional transactions for variety
--(175.00, '2025-01-21 08:00:00', 7, 5),
--(225.00, '2025-01-22 09:15:00', 5, 3),
--(300.00, '2025-01-23 10:30:00', 3, 1),
--(275.00, '2025-01-24 11:45:00', 1, 7),
--(125.00, '2025-01-25 13:00:00', 2, 8),
--(450.00, '2025-01-26 14:15:00', 4, 10),
--(500.00, '2025-01-27 15:30:00', 6, 9),
--(600.00, '2025-01-28 16:45:00', 8, 6),
--(350.00, '2025-01-29 18:00:00', 10, 5),
--(200.00, '2025-01-30 19:15:00', 9, 4);
--GO

--INSERT INTO Transactions (Amount, DateStamp, SenderBankAccountId, ReceiverBankAccountId)
--VALUES
--(300.00, '2025-01-31 08:10:00', 1, 4),
--(250.00, '2025-02-01 09:20:00', 4, 8),
--(400.00, '2025-02-02 10:30:00', 8, 10),
--(350.00, '2025-02-03 11:40:00', 10, 6),
--(275.00, '2025-02-04 12:50:00', 6, 2),
--(225.00, '2025-02-05 14:00:00', 2, 9),
--(375.00, '2025-02-06 15:10:00', 9, 3),
--(500.00, '2025-02-07 16:20:00', 3, 5),
--(450.00, '2025-02-08 17:30:00', 5, 7),
--(400.00, '2025-02-09 18:40:00', 7, 1),
--(325.00, '2025-02-10 19:50:00', 1, 8),
--(275.00, '2025-02-11 08:00:00', 8, 4),
--(250.00, '2025-02-12 09:10:00', 4, 6),
--(300.00, '2025-02-13 10:20:00', 6, 10),
--(350.00, '2025-02-14 11:30:00', 10, 9),
--(425.00, '2025-02-15 12:40:00', 9, 2),
--(275.00, '2025-02-16 13:50:00', 2, 3),
--(225.00, '2025-02-17 15:00:00', 3, 7),
--(375.00, '2025-02-18 16:10:00', 7, 5),
--(450.00, '2025-02-19 17:20:00', 5, 1);

--PRINT 'Sample data has been inserted into the tables!';


-- Inserting one million randomized transactions into the transaction table

---- Temporary table to store random transactions (optional for better performance)
--CREATE TABLE #RandomTransactions (
--    Amount DECIMAL(10, 2),
--    DateStamp DATETIME,
--    SenderBankAccountId INT,
--    ReceiverBankAccountId INT
--);

--DECLARE @Counter INT = 1;
--DECLARE @MaxTransactions INT = 1000000;

--WHILE @Counter <= @MaxTransactions
--BEGIN
--    -- Insert a random transaction into the temporary table
--    INSERT INTO #RandomTransactions (Amount, DateStamp, SenderBankAccountId, ReceiverBankAccountId)
--    SELECT
--        -- Generate a random amount between 1.00 and 10,000.00
--        ROUND(RAND() * 10000 + 1, 2) AS Amount,
--        -- Generate a random timestamp in the last 5 years
--        DATEADD(DAY, -CAST(365 * 5 * RAND() AS INT), GETDATE()) AS DateStamp,
--        -- Random sender bank account
--        (SELECT TOP 1 BankAccountId FROM BankAccounts ORDER BY NEWID()) AS SenderBankAccountId,
--        -- Random receiver bank account, ensuring it's different from the sender
--        (SELECT TOP 1 BankAccountId FROM BankAccounts WHERE BankAccountId != 
--            (SELECT TOP 1 BankAccountId FROM BankAccounts ORDER BY NEWID()) ORDER BY NEWID()) AS ReceiverBankAccountId;

--    SET @Counter = @Counter + 1;
--END

---- Insert all generated transactions into the main Transactions table
--INSERT INTO Transactions (Amount, DateStamp, SenderBankAccountId, ReceiverBankAccountId)
--SELECT Amount, DateStamp, SenderBankAccountId, ReceiverBankAccountId
--FROM #RandomTransactions;

---- Drop the temporary table
--DROP TABLE #RandomTransactions;

--PRINT '1,000,000 transactions inserted successfully!';

---- First test without index
--SELECT SenderBankAccountId, ReceiverBankAccountId FROM Transactions WHERE SenderBankAccountId = 15 AND ReceiverBankAccountId = 10 ;

---- Create Indexes for Foreign Keys in Transactions Table
--CREATE INDEX IDX_SenderReceiverBankAccountId ON Transactions (SenderBankAccountId, ReceiverBankAccountId);

---- Second test with index
--SELECT SenderBankAccountId, ReceiverBankAccountId FROM Transactions WHERE SenderBankAccountId = 15 AND ReceiverBankAccountId = 10 ;

-- Helper Queries
--DROP INDEX IDX_SenderReceiverBankAccountId ON Transactions;
--EXEC sp_helpindex 'Transactions';
