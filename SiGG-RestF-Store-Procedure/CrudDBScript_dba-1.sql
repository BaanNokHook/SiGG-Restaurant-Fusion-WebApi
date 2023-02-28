GO  
/****** Object:  Database [CRUD_Script_dba-1]    Script Date: 03/01/2023 09:09: AM ******/
CREATE DATABASE [CRUD_SCRIPT] ON PRIMARY  
( NAME = N'CRUD_SCRIPT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CRUD_SCRIPT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
LOG ON     
( NAME = N'CRUD_SCRIPT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CRUD_SCRIPT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)     
GO    
IF (1 = FULLTEXTSERVICEPROPERTY('isFullTextInstalled'))  
begin 
EXEC [CRUD_SCRIPT].[dbo].[sp_fulltext_database] @action = 'enable'   
end   
GO                                             
ALTER DATABASE [CDUD_SCRIPT] SET ANSI_NULL_DEFAULT OFF      
GO   
ALTER DATABASE [CRUD_SCRIPT] SET ANSI_NULLS OFF
GO   
ALTER DATABASE [CRUD_SCRIPT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRUD_SCRIPT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRUD_SCRIPT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CRUD_SCRIPT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRUD_SCRIPT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRUD_SCRIPT] SET RECOVERY FULL 
GO
ALTER DATABASE [CRUD_SCRIPT] SET  MULTI_USER 
GO
ALTER DATABASE [CRUD_SCRIPT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRUD_SCRIPT] SET DB_CHAINING OFF 
GO  
EXEC sys.sp_sb_vardecimal_storage_format N'CRUD_SCRIPT', N'ON'
GO      
USE [CRUD_SCRIPT]    
GO    
/****** Object:  Table [dbo].[Customers]    Script Date: 03/01/2023 09:09: AM ******/
SET ANSI_NULLS ON      
GO    
SET QUOTED_IDENTIFIER ON     
GO    
SET ANSI_PADDING ON   
GO  
CREATE TABLE [dbo].[Customers](                 
      [Id] [bigint] NOT NULL,  
      [CustName] [varchar](100) NULL,  
      [CustEmail] [varchar](150) NULL,   
CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED       
(
      [Id] ASC     
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
) ON [PRIMARY]
GO   
SET ANSI_PADDING OFF     
GO       

/****** Object:  StoredProcedure [dbo].[Delete_Customer]    Script Date: 03/01/2023 09:09: AM ******/  
SET ANSI_NULLS ON   
GO   
SET QUOTED_IDENTIFIER ON   
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_Customer]   
      -- Add the parameters for the stored procedure here    
      @Id Bigint       
AS   
BEGIN     
      -- SET NOCOUNT ON added to prevent extra result sets from                    
      @Id BigInt   
AS   
BEGIN                                                          
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


      -- Insert statements for procedure here   
      DELETE FROM[dbo].[Customers] WHERE [Id] = @Id   
      SELECT 1   
END  

GO 
/****** Object:  StoredProcedure [dbo].[Get_Customer]    Script Date: 03/01/2023 09:09: AM ******/  
SET ANSI_NULLS ON          
GO   
SET QUOTED_IDENTIFIER ON  
GO  
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Customer]
      -- Add the parameters for the stored procedure  here   
      @Count BIGINT     
AS
BEGIN                                                                                                                     
      -- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
      SET NOCOUNT ON;  

      -- Insert statements for procedure here   
      SELECT top(@Count)* FROM [dbo].[Customers]   
END   

GO  
/****** Object:  StoredProcedure [dbo].[Get_CustomerbyID]    Script Date: 03/01/2023 09:09: AM ******/  
SET ANSI_NULLS ON                                                                  
GO                                             
SET QUOTED_IDENTIFIER ON                                                                                        
GO                                               
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_CustomerbyID]
      -- Add the parameters for the stored procedure here                               
      @Id BIGINT                                                   
AS                     
BEGIN                                                                             
      -- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
      SET NOCOUNT ON;      

      -- Insert statements for procedure here   
      SELECT * FROM [dbo]/[Customers]
      WHERE Id=@Id     
END     

GO   

/****** Object:  StoredProcedure [dbo].[Set_Customer]    Script Date: 03/01/2023 09:09: AM ******/ 
SET ANSI_NULLS ON    
GO                                                                                               
SET QUOTED_IDENTIFIER ON                                                                                 
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================  
CREATE PROCEDURE [dbo].[Set_Customer]    
      -- Add the parameters for the stored procedure here                
      @CustName Nvarchar(100) 
     ,@CustEmail Nvarchar(150)                                         
AS  
BEGIN             
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
      SET NOCOUNT ON;   

      DECLARE @Id bigint   
      SET @Id = ISNULL((SELECT MAX(Id) FROM [Customers])+1,'1')                                              

      -- Insert statements for procedure here   
      INSERT INTO [dbo].[Customers] ([Id],[CustName],[CustEmail])   
      VALUES(@Id,@CustName,@CustEmail)   
      SELECT 1    
END     
GO  
/****** Object:  StoredProcedure [dbo].[Update_Customer]    Script Date: 03/01/2023 09:09: AM ******/    
SET ANSI_NULLS ON               
GO                
SET QUOTED_IDENTIFIER ON               
GO           
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Customer]                              
      -- Add the parameters for the stored procedure here                       
      @Id Bigint         
     ,@CustName Nvarchar(100)   
     ,@CustEmail Nvarchar(150)                          
AS             
BEGIN                                       
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
      SET NOCOUNT ON;                           

      -- Insert statements for procedure here        
      UPDATE [dbo].[Customers] SET[CustName] = @CustName ,[CustEmail]= @CustEmail      
      WHERE [Id] = @Id                                         
      SELECT 1                                                                                       
END          


GO 
USE [master]  
GO                                
ALTER DATABASE [CRUD_SCRIPT] SET READ_WRITE              
GO