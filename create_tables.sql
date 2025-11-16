CREATE DATABASE OSCAR;
GO

CREATE TABLE [MembershipCategory](
    [category] Varchar(50) NOT NULL,
    [number] Int NOT NULL PRIMARY KEY ([number]),
    [Cost] Float NOT NULL
);
GO

CREATE TABLE [Membership](
    [MembershipID] Char(9) NOT NULL PRIMARY KEY,
    [Number] Int NOT NULL FOREIGN KEY REFERENCES MembershipCategory([number]),
    [FirstName] Varchar(50) NOT NULL,
    [LastName] Varchar(50) NOT NULL,
    [Address] Varchar(50),
    [JoinDate] Datetime NOT NULL,
    [Email] Varchar(50)
);
GO

CREATE TABLE [CompetitionJudge](
    [MembershipID] Char(9) NOT NULL PRIMARY KEY,
    [Grade] INT NOT NULL,
    [WorkPlaceID] Int NOT NULL FOREIGN KEY REFERENCES WorkPlace([WorkPlaceID]),
    [JudgeDate] Datetime NOT NULL,
    [MovieID] INT NOT NULL FOREIGN KEY REFERENCES Movie([MovieID])
);
GO

CREATE TABLE [WorkPlace](
    [WorkPlaceID] Int NOT NULL PRIMARY KEY,
    [WorkPlaceName] Varchar(40),
    [WorkPlaceAddress] Varchar(50)
);
GO

CREATE TABLE [Producer](
    [ProducerID] Char(9) NOT NULL PRIMARY KEY,
    [WorkPlaceID] Int NOT NULL FOREIGN KEY REFERENCES WorkPlace([WorkPlaceID]),
    [FirstName] Varchar(50) NOT NULL,
    [LastName] Varchar(50) NOT NULL,
    [Address] Varchar(50)
);
GO

CREATE TABLE [OscarJudges](
    [MembershipID] CHAR(9) NOT NULL FOREIGN KEY REFERENCES [Membership]([MembershipID]),
    [OscarID] INT NOT NULL FOREIGN KEY REFERENCES [Oscar]([OscarID])
);
GO

CREATE TABLE [Oscar](
    [OscarID] Int NOT NULL PRIMARY KEY,
    [DateOfOscar] Datetime NOT NULL
);
GO

CREATE TABLE [Customer](
    [MovieID] INT NOT NULL FOREIGN KEY REFERENCES [Movie]([MovieID]),
    [OscarID] INT NOT NULL FOREIGN KEY REFERENCES [Oscar]([OscarID])
);
GO

CREATE TABLE [Movie](
    [MovieID] Int NOT NULL PRIMARY KEY,
    [MovieName] Varchar(50) NOT NULL,
    [DateOfMovie] Datetime NOT NULL,
    [Membership ID] Char(9) NOT NULL FOREIGN KEY REFERENCES CompetitionJudge([MembershipID]),
    [ProducerID] Char(9) NOT NULL FOREIGN KEY REFERENCES Producer([ProducerID])
);
GO
