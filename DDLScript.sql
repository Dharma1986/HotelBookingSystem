SET QUOTED_IDENTIFIER OFF;
GO
USE [HotelBookingSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[Hotel].[RoomBooking]', 'U') IS NOT NULL
    DROP TABLE [Hotel].[RoomBookings];
GO
IF OBJECT_ID(N'[Hotel].[Room]', 'U') IS NOT NULL
    DROP TABLE [Hotel].[Rooms];
GO
IF OBJECT_ID(N'[master].[BookingStatus]', 'U') IS NOT NULL
    DROP TABLE [master].[BookingStatus];
GO
IF OBJECT_ID(N'[master].[RoomType]', 'U') IS NOT NULL
    DROP TABLE [master].[RoomTypes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------


GO

-- Creating table 'RoomBooking'
CREATE TABLE [dbo].[RoomBooking] (
    [BookingId] int IDENTITY(1,1) NOT NULL,
    [EmailAddress] nvarchar(250)  NOT NULL,
    [BookingFrom] datetime  NOT NULL,
    [BookingTo] datetime  NOT NULL,
	[RoomNumber] varchar(4) NOT NULL,
    [RoomTypeId] int  NOT NULL
);
GO

-- Creating table 'Room'
CREATE TABLE [dbo].[Room] (
    [RoomId] int IDENTITY(1,1) NOT NULL,
    [RoomNumber] varchar(4) unique  NOT NULL,
    [BookingStatusId] int  NOT NULL,
    [RoomTypeId] int  NOT NULL
);
GO

-- Creating table 'BookingStatus'
CREATE TABLE [dbo].[BookingStatus] (
    [BookingStatusId] int IDENTITY(1,1) NOT NULL,
    [Status] varchar(50)  NOT NULL
);
GO


-- Creating table 'RoomType'
CREATE TABLE [dbo].[RoomType] (
    [RoomTypeId] int IDENTITY(1,1) NOT NULL,
    [RoomTypeName] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BookingId] in table 'RoomBooking'
ALTER TABLE [dbo].[RoomBooking]
ADD CONSTRAINT [PK_RoomBooking]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- Creating primary key on [RoomId] in table 'Rooms'
ALTER TABLE [dbo].[Room]
ADD CONSTRAINT [PK_Room]
    PRIMARY KEY CLUSTERED ([RoomId] ASC);
GO

-- Creating primary key on [BookingStatusId] in table 'BookingStatus'
ALTER TABLE [dbo].[BookingStatus]
ADD CONSTRAINT [PK_BookingStatus]
    PRIMARY KEY CLUSTERED ([BookingStatusId] ASC);
GO

-- Creating primary key on [RoomTypeId] in table 'RoomTypes'
ALTER TABLE [dbo].[RoomType]
ADD CONSTRAINT [PK_RoomType]
    PRIMARY KEY CLUSTERED ([RoomTypeId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

ALTER TABLE Room
ADD CONSTRAINT FK_BookingStatusId FOREIGN KEY (BookingStatusId)
    REFERENCES BookingStatus(BookingStatusId);

ALTER TABLE Room
ADD CONSTRAINT FK_RoomTypeId FOREIGN KEY (RoomTypeId)
    REFERENCES RoomType(RoomTypeId);

ALTER TABLE RoomBooking
ADD CONSTRAINT FK_BookedRoomTypeId FOREIGN KEY (RoomTypeId)
    REFERENCES RoomType(RoomTypeId);

ALTER TABLE RoomBooking
ADD CONSTRAINT FK_BookedRoomNumber FOREIGN KEY (RoomNumber)
    REFERENCES Room(RoomNumber);

--- Insert test data scripts.

INSERT INTO RoomType VALUES ('Single');
INSERT INTO RoomType VALUES ('Double');

INSERT INTO BookingStatus VALUES ('Booked')
INSERT INTO BookingStatus VALUES ('Not Booked')

INSERT INTO Room VALUES('A1', 1, 2)
INSERT INTO Room VALUES('A2', 1, 1)

--- selet scripts
select * from RoomType
SELECT * FROM BookingStatus
select * from Room
select * from RoomBooking



-- --------------------------------------------------
-- Script has end
-- --------------------------------------------------