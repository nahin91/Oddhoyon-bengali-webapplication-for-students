
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/19/2018 17:35:01
-- Generated from EDMX file: E:\FUAS\winter101\sample projects\Oddhoyon_Final_Project\BOL\OddhoyonModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Oddhoyon_AdminPanel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Comment_Post]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Post];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseEnrolled_CourseTest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CourseEnrolled] DROP CONSTRAINT [FK_CourseEnrolled_CourseTest];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseEnrolled_tbl_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CourseEnrolled] DROP CONSTRAINT [FK_CourseEnrolled_tbl_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseVidTest_CourseTest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CourseVidTest] DROP CONSTRAINT [FK_CourseVidTest_CourseTest];
GO
IF OBJECT_ID(N'[dbo].[FK_Post_PostCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK_Post_PostCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_ChapQuestion_tbl_SubChapExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_ChapQuestion] DROP CONSTRAINT [FK_tbl_ChapQuestion_tbl_SubChapExam];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_Chapter_tbl_TextBook]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_Chapter] DROP CONSTRAINT [FK_tbl_Chapter_tbl_TextBook];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_ChapterContent_tbl_ChapterDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_ChapterContent] DROP CONSTRAINT [FK_tbl_ChapterContent_tbl_ChapterDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_ChapterDetails_tbl_Chapter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_ChapterDetails] DROP CONSTRAINT [FK_tbl_ChapterDetails_tbl_Chapter];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_PublicExamSuggestion_tbl_PublicExam]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_PublicExamSuggestion] DROP CONSTRAINT [FK_tbl_PublicExamSuggestion_tbl_PublicExam];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_SubChapExam_tbl_Chapter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_SubChapExam] DROP CONSTRAINT [FK_tbl_SubChapExam_tbl_Chapter];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_SuggestionLists_tbl_PublicExamSuggestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_SuggestionLists] DROP CONSTRAINT [FK_tbl_SuggestionLists_tbl_PublicExamSuggestion];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_TextBook_tbl_Class]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_TextBook] DROP CONSTRAINT [FK_tbl_TextBook_tbl_Class];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_UserAnsOfChap_tbl_ChapQuestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_UserAnsOfChap] DROP CONSTRAINT [FK_tbl_UserAnsOfChap_tbl_ChapQuestion];
GO
IF OBJECT_ID(N'[dbo].[FK_tbl_UserAnsOfChap_tbl_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_UserAnsOfChap] DROP CONSTRAINT [FK_tbl_UserAnsOfChap_tbl_Users];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Comment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comment];
GO
IF OBJECT_ID(N'[dbo].[CourseEnrolled]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CourseEnrolled];
GO
IF OBJECT_ID(N'[dbo].[CourseTest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CourseTest];
GO
IF OBJECT_ID(N'[dbo].[CourseVidTest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CourseVidTest];
GO
IF OBJECT_ID(N'[dbo].[Post]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Post];
GO
IF OBJECT_ID(N'[dbo].[PostCategory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PostCategory];
GO
IF OBJECT_ID(N'[dbo].[tbl_AnonymousMsg]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_AnonymousMsg];
GO
IF OBJECT_ID(N'[dbo].[tbl_ChapQuestion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_ChapQuestion];
GO
IF OBJECT_ID(N'[dbo].[tbl_Chapter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_Chapter];
GO
IF OBJECT_ID(N'[dbo].[tbl_ChapterContent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_ChapterContent];
GO
IF OBJECT_ID(N'[dbo].[tbl_ChapterDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_ChapterDetails];
GO
IF OBJECT_ID(N'[dbo].[tbl_Class]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_Class];
GO
IF OBJECT_ID(N'[dbo].[tbl_PublicExam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_PublicExam];
GO
IF OBJECT_ID(N'[dbo].[tbl_PublicExamSuggestion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_PublicExamSuggestion];
GO
IF OBJECT_ID(N'[dbo].[tbl_SubChapExam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_SubChapExam];
GO
IF OBJECT_ID(N'[dbo].[tbl_SuggestionLists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_SuggestionLists];
GO
IF OBJECT_ID(N'[dbo].[tbl_TextBook]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_TextBook];
GO
IF OBJECT_ID(N'[dbo].[tbl_UserAnsOfChap]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_UserAnsOfChap];
GO
IF OBJECT_ID(N'[dbo].[tbl_Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tbl_Chapter'
CREATE TABLE [dbo].[tbl_Chapter] (
    [ChapterID] int IDENTITY(1,1) NOT NULL,
    [BookID] int  NOT NULL,
    [ChapterTitle] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_ChapterContent'
CREATE TABLE [dbo].[tbl_ChapterContent] (
    [ChapterContentID] int IDENTITY(1,1) NOT NULL,
    [ChapterDetailsID] int  NOT NULL,
    [TopicTitle] nvarchar(max)  NULL,
    [TopicDetails] nvarchar(max)  NULL,
    [Qst] varchar(max)  NULL,
    [Ans] varchar(max)  NULL,
    [Image] nvarchar(max)  NULL,
    [Video] nvarchar(150)  NULL
);
GO

-- Creating table 'tbl_ChapterDetails'
CREATE TABLE [dbo].[tbl_ChapterDetails] (
    [ChapterDetailsID] int IDENTITY(1,1) NOT NULL,
    [ChapterID] int  NOT NULL,
    [ChapterName] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_Class'
CREATE TABLE [dbo].[tbl_Class] (
    [ClassID] int IDENTITY(1,1) NOT NULL,
    [ClassName] varchar(50)  NOT NULL
);
GO

-- Creating table 'tbl_PublicExam'
CREATE TABLE [dbo].[tbl_PublicExam] (
    [PublicExamID] int IDENTITY(1,1) NOT NULL,
    [PublicExamName] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_PublicExamSuggestion'
CREATE TABLE [dbo].[tbl_PublicExamSuggestion] (
    [SuggestionID] int IDENTITY(1,1) NOT NULL,
    [PublicExamID] int  NULL,
    [SubjectName] nvarchar(50)  NULL,
    [Image] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_TextBook'
CREATE TABLE [dbo].[tbl_TextBook] (
    [BookID] int IDENTITY(1,1) NOT NULL,
    [BookName] nvarchar(max)  NULL,
    [BookType] varchar(50)  NULL,
    [YearOfEdition] datetime  NULL,
    [Description] varchar(50)  NULL,
    [ClassID] int  NOT NULL
);
GO

-- Creating table 'tbl_Users'
CREATE TABLE [dbo].[tbl_Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(50)  NULL,
    [UserEmail] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [Role] nvarchar(1)  NULL
);
GO

-- Creating table 'tbl_SuggestionLists'
CREATE TABLE [dbo].[tbl_SuggestionLists] (
    [SuggestionListID] int IDENTITY(1,1) NOT NULL,
    [SuggestionID] int  NULL,
    [Sug1Title] nvarchar(max)  NULL,
    [Sug1image] nvarchar(max)  NULL,
    [Sug2Title] nvarchar(max)  NULL,
    [Sug2image] nvarchar(max)  NULL,
    [Sug3Title] nvarchar(max)  NULL,
    [Sug3image] nvarchar(max)  NULL
);
GO

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [CommentID] int IDENTITY(1,1) NOT NULL,
    [PostID] int  NULL,
    [Created] datetime  NOT NULL,
    [Author] nvarchar(50)  NULL,
    [UserID] int  NULL,
    [Contents] nvarchar(max)  NULL
);
GO

-- Creating table 'Posts'
CREATE TABLE [dbo].[Posts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Created] datetime  NOT NULL,
    [Titile] nvarchar(150)  NULL,
    [Summary] nvarchar(150)  NULL,
    [Contents] nvarchar(max)  NULL,
    [CatID] int  NULL,
    [Author] nvarchar(50)  NULL
);
GO

-- Creating table 'PostCategories'
CREATE TABLE [dbo].[PostCategories] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'CourseTests'
CREATE TABLE [dbo].[CourseTests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(250)  NULL,
    [Summary] nvarchar(500)  NULL,
    [ImgIcon] nvarchar(250)  NULL,
    [Videolink] nvarchar(1000)  NULL
);
GO

-- Creating table 'CourseVidTests'
CREATE TABLE [dbo].[CourseVidTests] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CourseId] int  NOT NULL,
    [Video] nvarchar(100)  NULL,
    [Title] nvarchar(100)  NULL
);
GO

-- Creating table 'tbl_ChapQuestion'
CREATE TABLE [dbo].[tbl_ChapQuestion] (
    [QuesID] int IDENTITY(1,1) NOT NULL,
    [Question] nvarchar(max)  NULL,
    [Opt1] nvarchar(50)  NULL,
    [Opt2] nvarchar(50)  NULL,
    [Opt3] nvarchar(50)  NULL,
    [Opt4] nvarchar(50)  NULL,
    [CorrectAns] nvarchar(2)  NULL,
    [SubChapExamID] int  NULL
);
GO

-- Creating table 'tbl_SubChapExam'
CREATE TABLE [dbo].[tbl_SubChapExam] (
    [SubChapExamID] int IDENTITY(1,1) NOT NULL,
    [ChapterID] int  NOT NULL,
    [Title] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_UserAnsOfChap'
CREATE TABLE [dbo].[tbl_UserAnsOfChap] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserAns] nvarchar(2)  NULL,
    [QstId] int  NULL,
    [UserId] int  NULL
);
GO

-- Creating table 'tbl_AnonymousMsg'
CREATE TABLE [dbo].[tbl_AnonymousMsg] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Message] nvarchar(1000)  NOT NULL
);
GO

-- Creating table 'CourseEnrolleds'
CREATE TABLE [dbo].[CourseEnrolleds] (
    [CourseEnrolledID] int IDENTITY(1,1) NOT NULL,
    [UserId] int  NOT NULL,
    [CourseId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ChapterID] in table 'tbl_Chapter'
ALTER TABLE [dbo].[tbl_Chapter]
ADD CONSTRAINT [PK_tbl_Chapter]
    PRIMARY KEY CLUSTERED ([ChapterID] ASC);
GO

-- Creating primary key on [ChapterContentID] in table 'tbl_ChapterContent'
ALTER TABLE [dbo].[tbl_ChapterContent]
ADD CONSTRAINT [PK_tbl_ChapterContent]
    PRIMARY KEY CLUSTERED ([ChapterContentID] ASC);
GO

-- Creating primary key on [ChapterDetailsID] in table 'tbl_ChapterDetails'
ALTER TABLE [dbo].[tbl_ChapterDetails]
ADD CONSTRAINT [PK_tbl_ChapterDetails]
    PRIMARY KEY CLUSTERED ([ChapterDetailsID] ASC);
GO

-- Creating primary key on [ClassID] in table 'tbl_Class'
ALTER TABLE [dbo].[tbl_Class]
ADD CONSTRAINT [PK_tbl_Class]
    PRIMARY KEY CLUSTERED ([ClassID] ASC);
GO

-- Creating primary key on [PublicExamID] in table 'tbl_PublicExam'
ALTER TABLE [dbo].[tbl_PublicExam]
ADD CONSTRAINT [PK_tbl_PublicExam]
    PRIMARY KEY CLUSTERED ([PublicExamID] ASC);
GO

-- Creating primary key on [SuggestionID] in table 'tbl_PublicExamSuggestion'
ALTER TABLE [dbo].[tbl_PublicExamSuggestion]
ADD CONSTRAINT [PK_tbl_PublicExamSuggestion]
    PRIMARY KEY CLUSTERED ([SuggestionID] ASC);
GO

-- Creating primary key on [BookID] in table 'tbl_TextBook'
ALTER TABLE [dbo].[tbl_TextBook]
ADD CONSTRAINT [PK_tbl_TextBook]
    PRIMARY KEY CLUSTERED ([BookID] ASC);
GO

-- Creating primary key on [UserID] in table 'tbl_Users'
ALTER TABLE [dbo].[tbl_Users]
ADD CONSTRAINT [PK_tbl_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [SuggestionListID] in table 'tbl_SuggestionLists'
ALTER TABLE [dbo].[tbl_SuggestionLists]
ADD CONSTRAINT [PK_tbl_SuggestionLists]
    PRIMARY KEY CLUSTERED ([SuggestionListID] ASC);
GO

-- Creating primary key on [CommentID] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([CommentID] ASC);
GO

-- Creating primary key on [Id] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [PK_Posts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'PostCategories'
ALTER TABLE [dbo].[PostCategories]
ADD CONSTRAINT [PK_PostCategories]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'CourseTests'
ALTER TABLE [dbo].[CourseTests]
ADD CONSTRAINT [PK_CourseTests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CourseVidTests'
ALTER TABLE [dbo].[CourseVidTests]
ADD CONSTRAINT [PK_CourseVidTests]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [QuesID] in table 'tbl_ChapQuestion'
ALTER TABLE [dbo].[tbl_ChapQuestion]
ADD CONSTRAINT [PK_tbl_ChapQuestion]
    PRIMARY KEY CLUSTERED ([QuesID] ASC);
GO

-- Creating primary key on [SubChapExamID] in table 'tbl_SubChapExam'
ALTER TABLE [dbo].[tbl_SubChapExam]
ADD CONSTRAINT [PK_tbl_SubChapExam]
    PRIMARY KEY CLUSTERED ([SubChapExamID] ASC);
GO

-- Creating primary key on [Id] in table 'tbl_UserAnsOfChap'
ALTER TABLE [dbo].[tbl_UserAnsOfChap]
ADD CONSTRAINT [PK_tbl_UserAnsOfChap]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'tbl_AnonymousMsg'
ALTER TABLE [dbo].[tbl_AnonymousMsg]
ADD CONSTRAINT [PK_tbl_AnonymousMsg]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [CourseEnrolledID] in table 'CourseEnrolleds'
ALTER TABLE [dbo].[CourseEnrolleds]
ADD CONSTRAINT [PK_CourseEnrolleds]
    PRIMARY KEY CLUSTERED ([CourseEnrolledID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BookID] in table 'tbl_Chapter'
ALTER TABLE [dbo].[tbl_Chapter]
ADD CONSTRAINT [FK_tbl_Chapter_tbl_TextBook]
    FOREIGN KEY ([BookID])
    REFERENCES [dbo].[tbl_TextBook]
        ([BookID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_Chapter_tbl_TextBook'
CREATE INDEX [IX_FK_tbl_Chapter_tbl_TextBook]
ON [dbo].[tbl_Chapter]
    ([BookID]);
GO

-- Creating foreign key on [ChapterDetailsID] in table 'tbl_ChapterDetails'
ALTER TABLE [dbo].[tbl_ChapterDetails]
ADD CONSTRAINT [FK_tbl_ChapterDetails_tbl_Chapter]
    FOREIGN KEY ([ChapterDetailsID])
    REFERENCES [dbo].[tbl_Chapter]
        ([ChapterID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ChapterDetailsID] in table 'tbl_ChapterContent'
ALTER TABLE [dbo].[tbl_ChapterContent]
ADD CONSTRAINT [FK_tbl_ChapterContent_tbl_ChapterDetails]
    FOREIGN KEY ([ChapterDetailsID])
    REFERENCES [dbo].[tbl_ChapterDetails]
        ([ChapterDetailsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_ChapterContent_tbl_ChapterDetails'
CREATE INDEX [IX_FK_tbl_ChapterContent_tbl_ChapterDetails]
ON [dbo].[tbl_ChapterContent]
    ([ChapterDetailsID]);
GO

-- Creating foreign key on [ClassID] in table 'tbl_TextBook'
ALTER TABLE [dbo].[tbl_TextBook]
ADD CONSTRAINT [FK_tbl_TextBook_tbl_Class]
    FOREIGN KEY ([ClassID])
    REFERENCES [dbo].[tbl_Class]
        ([ClassID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_TextBook_tbl_Class'
CREATE INDEX [IX_FK_tbl_TextBook_tbl_Class]
ON [dbo].[tbl_TextBook]
    ([ClassID]);
GO

-- Creating foreign key on [PublicExamID] in table 'tbl_PublicExamSuggestion'
ALTER TABLE [dbo].[tbl_PublicExamSuggestion]
ADD CONSTRAINT [FK_tbl_PublicExamSuggestion_tbl_PublicExam]
    FOREIGN KEY ([PublicExamID])
    REFERENCES [dbo].[tbl_PublicExam]
        ([PublicExamID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_PublicExamSuggestion_tbl_PublicExam'
CREATE INDEX [IX_FK_tbl_PublicExamSuggestion_tbl_PublicExam]
ON [dbo].[tbl_PublicExamSuggestion]
    ([PublicExamID]);
GO

-- Creating foreign key on [SuggestionID] in table 'tbl_SuggestionLists'
ALTER TABLE [dbo].[tbl_SuggestionLists]
ADD CONSTRAINT [FK_tbl_SuggestionLists_tbl_PublicExamSuggestion]
    FOREIGN KEY ([SuggestionID])
    REFERENCES [dbo].[tbl_PublicExamSuggestion]
        ([SuggestionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_SuggestionLists_tbl_PublicExamSuggestion'
CREATE INDEX [IX_FK_tbl_SuggestionLists_tbl_PublicExamSuggestion]
ON [dbo].[tbl_SuggestionLists]
    ([SuggestionID]);
GO

-- Creating foreign key on [PostID] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [FK_Comment_Post]
    FOREIGN KEY ([PostID])
    REFERENCES [dbo].[Posts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Comment_Post'
CREATE INDEX [IX_FK_Comment_Post]
ON [dbo].[Comments]
    ([PostID]);
GO

-- Creating foreign key on [CatID] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [FK_Post_PostCategory]
    FOREIGN KEY ([CatID])
    REFERENCES [dbo].[PostCategories]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Post_PostCategory'
CREATE INDEX [IX_FK_Post_PostCategory]
ON [dbo].[Posts]
    ([CatID]);
GO

-- Creating foreign key on [CourseId] in table 'CourseVidTests'
ALTER TABLE [dbo].[CourseVidTests]
ADD CONSTRAINT [FK_CourseVidTest_CourseTest]
    FOREIGN KEY ([CourseId])
    REFERENCES [dbo].[CourseTests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseVidTest_CourseTest'
CREATE INDEX [IX_FK_CourseVidTest_CourseTest]
ON [dbo].[CourseVidTests]
    ([CourseId]);
GO

-- Creating foreign key on [SubChapExamID] in table 'tbl_ChapQuestion'
ALTER TABLE [dbo].[tbl_ChapQuestion]
ADD CONSTRAINT [FK_tbl_ChapQuestion_tbl_SubChapExam]
    FOREIGN KEY ([SubChapExamID])
    REFERENCES [dbo].[tbl_SubChapExam]
        ([SubChapExamID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_ChapQuestion_tbl_SubChapExam'
CREATE INDEX [IX_FK_tbl_ChapQuestion_tbl_SubChapExam]
ON [dbo].[tbl_ChapQuestion]
    ([SubChapExamID]);
GO

-- Creating foreign key on [QstId] in table 'tbl_UserAnsOfChap'
ALTER TABLE [dbo].[tbl_UserAnsOfChap]
ADD CONSTRAINT [FK_tbl_UserAnsOfChap_tbl_ChapQuestion]
    FOREIGN KEY ([QstId])
    REFERENCES [dbo].[tbl_ChapQuestion]
        ([QuesID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_UserAnsOfChap_tbl_ChapQuestion'
CREATE INDEX [IX_FK_tbl_UserAnsOfChap_tbl_ChapQuestion]
ON [dbo].[tbl_UserAnsOfChap]
    ([QstId]);
GO

-- Creating foreign key on [ChapterID] in table 'tbl_SubChapExam'
ALTER TABLE [dbo].[tbl_SubChapExam]
ADD CONSTRAINT [FK_tbl_SubChapExam_tbl_Chapter]
    FOREIGN KEY ([ChapterID])
    REFERENCES [dbo].[tbl_Chapter]
        ([ChapterID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_SubChapExam_tbl_Chapter'
CREATE INDEX [IX_FK_tbl_SubChapExam_tbl_Chapter]
ON [dbo].[tbl_SubChapExam]
    ([ChapterID]);
GO

-- Creating foreign key on [UserId] in table 'tbl_UserAnsOfChap'
ALTER TABLE [dbo].[tbl_UserAnsOfChap]
ADD CONSTRAINT [FK_tbl_UserAnsOfChap_tbl_Users]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[tbl_Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_tbl_UserAnsOfChap_tbl_Users'
CREATE INDEX [IX_FK_tbl_UserAnsOfChap_tbl_Users]
ON [dbo].[tbl_UserAnsOfChap]
    ([UserId]);
GO

-- Creating foreign key on [CourseId] in table 'CourseEnrolleds'
ALTER TABLE [dbo].[CourseEnrolleds]
ADD CONSTRAINT [FK_CourseEnrolled_CourseTest]
    FOREIGN KEY ([CourseId])
    REFERENCES [dbo].[CourseTests]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseEnrolled_CourseTest'
CREATE INDEX [IX_FK_CourseEnrolled_CourseTest]
ON [dbo].[CourseEnrolleds]
    ([CourseId]);
GO

-- Creating foreign key on [UserId] in table 'CourseEnrolleds'
ALTER TABLE [dbo].[CourseEnrolleds]
ADD CONSTRAINT [FK_CourseEnrolled_tbl_Users]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[tbl_Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseEnrolled_tbl_Users'
CREATE INDEX [IX_FK_CourseEnrolled_tbl_Users]
ON [dbo].[CourseEnrolleds]
    ([UserId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------