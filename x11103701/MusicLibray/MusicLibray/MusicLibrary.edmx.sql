
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/09/2013 15:18:37
-- Generated from EDMX file: H:\Advanced Internet technologies\MusicLibray\MusicLibray\MusicLibrary.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MusicLibrary];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AlbumBand]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_AlbumBand];
GO
IF OBJECT_ID(N'[dbo].[FK_BandCountry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bands] DROP CONSTRAINT [FK_BandCountry];
GO
IF OBJECT_ID(N'[dbo].[FK_BandGenre_Band]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BandGenre] DROP CONSTRAINT [FK_BandGenre_Band];
GO
IF OBJECT_ID(N'[dbo].[FK_BandGenre_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BandGenre] DROP CONSTRAINT [FK_BandGenre_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_CountryLabel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Labels] DROP CONSTRAINT [FK_CountryLabel];
GO
IF OBJECT_ID(N'[dbo].[FK_AlbumGenre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_AlbumGenre];
GO
IF OBJECT_ID(N'[dbo].[FK_BandLabel_Band]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BandLabel] DROP CONSTRAINT [FK_BandLabel_Band];
GO
IF OBJECT_ID(N'[dbo].[FK_BandLabel_Label]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BandLabel] DROP CONSTRAINT [FK_BandLabel_Label];
GO
IF OBJECT_ID(N'[dbo].[FK_AlbumLabel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_AlbumLabel];
GO
IF OBJECT_ID(N'[dbo].[FK_GenreLabel_Genre]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GenreLabel] DROP CONSTRAINT [FK_GenreLabel_Genre];
GO
IF OBJECT_ID(N'[dbo].[FK_GenreLabel_Label]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GenreLabel] DROP CONSTRAINT [FK_GenreLabel_Label];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Albums]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Albums];
GO
IF OBJECT_ID(N'[dbo].[Bands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bands];
GO
IF OBJECT_ID(N'[dbo].[Countries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Countries];
GO
IF OBJECT_ID(N'[dbo].[Labels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Labels];
GO
IF OBJECT_ID(N'[dbo].[Genres]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Genres];
GO
IF OBJECT_ID(N'[dbo].[BandGenre]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BandGenre];
GO
IF OBJECT_ID(N'[dbo].[BandLabel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BandLabel];
GO
IF OBJECT_ID(N'[dbo].[GenreLabel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GenreLabel];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ReleaseDate] datetime  NOT NULL,
    [CoverImage] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Band_Id] int  NOT NULL,
    [Genre_Id] int  NOT NULL,
    [Label_Id] int  NOT NULL
);
GO

-- Creating table 'Bands'
CREATE TABLE [dbo].[Bands] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [GenreId] int  NOT NULL,
    [Country_Id] int  NOT NULL
);
GO

-- Creating table 'Countries'
CREATE TABLE [dbo].[Countries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Labels'
CREATE TABLE [dbo].[Labels] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Address1] nvarchar(max)  NOT NULL,
    [Address2] nvarchar(max)  NOT NULL,
    [Address3] nvarchar(max)  NOT NULL,
    [CountryId] int  NOT NULL
);
GO

-- Creating table 'Genres'
CREATE TABLE [dbo].[Genres] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BandGenre'
CREATE TABLE [dbo].[BandGenre] (
    [Bands1_Id] int  NOT NULL,
    [Genres_Id] int  NOT NULL
);
GO

-- Creating table 'BandLabel'
CREATE TABLE [dbo].[BandLabel] (
    [Bands_Id] int  NOT NULL,
    [Labels_Id] int  NOT NULL
);
GO

-- Creating table 'GenreLabel'
CREATE TABLE [dbo].[GenreLabel] (
    [Genres_Id] int  NOT NULL,
    [Labels_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Bands'
ALTER TABLE [dbo].[Bands]
ADD CONSTRAINT [PK_Bands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Countries'
ALTER TABLE [dbo].[Countries]
ADD CONSTRAINT [PK_Countries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Labels'
ALTER TABLE [dbo].[Labels]
ADD CONSTRAINT [PK_Labels]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Genres'
ALTER TABLE [dbo].[Genres]
ADD CONSTRAINT [PK_Genres]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Bands1_Id], [Genres_Id] in table 'BandGenre'
ALTER TABLE [dbo].[BandGenre]
ADD CONSTRAINT [PK_BandGenre]
    PRIMARY KEY NONCLUSTERED ([Bands1_Id], [Genres_Id] ASC);
GO

-- Creating primary key on [Bands_Id], [Labels_Id] in table 'BandLabel'
ALTER TABLE [dbo].[BandLabel]
ADD CONSTRAINT [PK_BandLabel]
    PRIMARY KEY NONCLUSTERED ([Bands_Id], [Labels_Id] ASC);
GO

-- Creating primary key on [Genres_Id], [Labels_Id] in table 'GenreLabel'
ALTER TABLE [dbo].[GenreLabel]
ADD CONSTRAINT [PK_GenreLabel]
    PRIMARY KEY NONCLUSTERED ([Genres_Id], [Labels_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Band_Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_AlbumBand]
    FOREIGN KEY ([Band_Id])
    REFERENCES [dbo].[Bands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlbumBand'
CREATE INDEX [IX_FK_AlbumBand]
ON [dbo].[Albums]
    ([Band_Id]);
GO

-- Creating foreign key on [Country_Id] in table 'Bands'
ALTER TABLE [dbo].[Bands]
ADD CONSTRAINT [FK_BandCountry]
    FOREIGN KEY ([Country_Id])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BandCountry'
CREATE INDEX [IX_FK_BandCountry]
ON [dbo].[Bands]
    ([Country_Id]);
GO

-- Creating foreign key on [Bands1_Id] in table 'BandGenre'
ALTER TABLE [dbo].[BandGenre]
ADD CONSTRAINT [FK_BandGenre_Band]
    FOREIGN KEY ([Bands1_Id])
    REFERENCES [dbo].[Bands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Genres_Id] in table 'BandGenre'
ALTER TABLE [dbo].[BandGenre]
ADD CONSTRAINT [FK_BandGenre_Genre]
    FOREIGN KEY ([Genres_Id])
    REFERENCES [dbo].[Genres]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BandGenre_Genre'
CREATE INDEX [IX_FK_BandGenre_Genre]
ON [dbo].[BandGenre]
    ([Genres_Id]);
GO

-- Creating foreign key on [CountryId] in table 'Labels'
ALTER TABLE [dbo].[Labels]
ADD CONSTRAINT [FK_CountryLabel]
    FOREIGN KEY ([CountryId])
    REFERENCES [dbo].[Countries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountryLabel'
CREATE INDEX [IX_FK_CountryLabel]
ON [dbo].[Labels]
    ([CountryId]);
GO

-- Creating foreign key on [Genre_Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_AlbumGenre]
    FOREIGN KEY ([Genre_Id])
    REFERENCES [dbo].[Genres]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlbumGenre'
CREATE INDEX [IX_FK_AlbumGenre]
ON [dbo].[Albums]
    ([Genre_Id]);
GO

-- Creating foreign key on [Bands_Id] in table 'BandLabel'
ALTER TABLE [dbo].[BandLabel]
ADD CONSTRAINT [FK_BandLabel_Band]
    FOREIGN KEY ([Bands_Id])
    REFERENCES [dbo].[Bands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Labels_Id] in table 'BandLabel'
ALTER TABLE [dbo].[BandLabel]
ADD CONSTRAINT [FK_BandLabel_Label]
    FOREIGN KEY ([Labels_Id])
    REFERENCES [dbo].[Labels]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BandLabel_Label'
CREATE INDEX [IX_FK_BandLabel_Label]
ON [dbo].[BandLabel]
    ([Labels_Id]);
GO

-- Creating foreign key on [Label_Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_AlbumLabel]
    FOREIGN KEY ([Label_Id])
    REFERENCES [dbo].[Labels]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AlbumLabel'
CREATE INDEX [IX_FK_AlbumLabel]
ON [dbo].[Albums]
    ([Label_Id]);
GO

-- Creating foreign key on [Genres_Id] in table 'GenreLabel'
ALTER TABLE [dbo].[GenreLabel]
ADD CONSTRAINT [FK_GenreLabel_Genre]
    FOREIGN KEY ([Genres_Id])
    REFERENCES [dbo].[Genres]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Labels_Id] in table 'GenreLabel'
ALTER TABLE [dbo].[GenreLabel]
ADD CONSTRAINT [FK_GenreLabel_Label]
    FOREIGN KEY ([Labels_Id])
    REFERENCES [dbo].[Labels]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GenreLabel_Label'
CREATE INDEX [IX_FK_GenreLabel_Label]
ON [dbo].[GenreLabel]
    ([Labels_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------