USE [master]
GO
/****** Object:  Database [OnlineStoreDB]    Script Date: 7/29/2019 7:44:08 PM ******/
CREATE DATABASE [OnlineStoreDB]
 
GO
USE [OnlineStoreDB]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/29/2019 7:44:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[ProductDetails] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[ProductImg] [nvarchar](150) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [ProductId], [Quantity], [UserId]) VALUES (28, 2, 1, 1)
INSERT [dbo].[Cart] ([Id], [ProductId], [Quantity], [UserId]) VALUES (29, 4, 1, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [ProductName], [ProductDetails], [Price], [ProductImg]) VALUES (1, N'Mi LED Smart TV 4A Pro 108 cm (43) with Android', N'No cost EMI ₹612/month. Debit/ Online Store EMI also availableView Plans<br/>

Get upto ₹9000 off on exchangeBuy with Exchange<br/>

Special PriceGet extra ₹1000 off (price inclusive of discount)T&C<br/>

Bank Offer5% Unlimited Cashback on Flipkart Axis Bank Credit CardT&C', CAST(2000.00 AS Decimal(18, 2)), N'apple-iphone-x.jpeg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductDetails], [Price], [ProductImg]) VALUES (2, N'Apple iPhone X (Space Gray, 64 GB)', N'No cost EMI ₹112/month. Debit/ Online Store EMI also availableView Plans<br/>

Get upto ₹600 off on exchangeBuy with Exchange<br/>

Special PriceGet extra ₹200 off (price inclusive of discount)T&C<br/>

Bank Offer5% Unlimited Cashback on Flipkart Axis Bank Credit CardT&C', CAST(3000.00 AS Decimal(18, 2)), N'apple-iphone-x.jpeg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductDetails], [Price], [ProductImg]) VALUES (3, N'Mi LED Smart TV 4A Pro 108 cm (43) with Android', N'No cost EMI ₹425/month. Debit/ Online Store EMI also availableView Plans<br/>

Get upto ₹8000 off on exchangeBuy with Exchange<br/>

Special PriceGet extra ₹600 off (price inclusive of discount)T&C<br/>

Bank Offer5% Unlimited Cashback on Flipkart Axis Bank Credit CardT&C', CAST(4000.00 AS Decimal(18, 2)), N'apple-iphone-x.jpeg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductDetails], [Price], [ProductImg]) VALUES (4, N'Apple iPhone X (Space Gray, 64 GB)', N'No cost EMI ₹112/month. Debit/ Online Store EMI also availableView Plans<br/>

Get upto ₹600 off on exchangeBuy with Exchange<br/>

Special PriceGet extra ₹200 off (price inclusive of discount)T&C<br/>

Bank Offer5% Unlimited Cashback on Flipkart Axis Bank Credit CardT&C', CAST(25000.00 AS Decimal(18, 2)), N'apple-iphone-x.jpeg')
INSERT [dbo].[Product] ([Id], [ProductName], [ProductDetails], [Price], [ProductImg]) VALUES (5, N'Product 5', N'No cost EMI ₹425/month. Debit/ Online Store EMI also availableView Plans<br/>

Get upto ₹8000 off on exchangeBuy with Exchange<br/>

Special PriceGet extra ₹600 off (price inclusive of discount)T&C<br/>

Bank Offer5% Unlimited Cashback on Flipkart Axis Bank Credit CardT&C', CAST(35000.00 AS Decimal(18, 2)), N'apple-iphone-x.jpeg')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [ProductId], [Quantity]) VALUES (1, 1, 3)
INSERT [dbo].[Stock] ([Id], [ProductId], [Quantity]) VALUES (2, 2, 15)
INSERT [dbo].[Stock] ([Id], [ProductId], [Quantity]) VALUES (3, 3, 0)
INSERT [dbo].[Stock] ([Id], [ProductId], [Quantity]) VALUES (4, 4, 23)
INSERT [dbo].[Stock] ([Id], [ProductId], [Quantity]) VALUES (5, 5, 3)
SET IDENTITY_INSERT [dbo].[Stock] OFF
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Product]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cart_D]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      -- Author:		<Author,,Name>
      -- Create date: <Create Date,,>
      -- Description:	<Description,,>
      -- =============================================
 CREATE PROCEDURE [dbo].[Usp_Cart_D] 
   (
    @Id int=null
	) AS 
      BEGIN
         -- SET NOCOUNT ON added to prevent extra result sets from
         -- interfering with SELECT statements.
         SET
            NOCOUNT 
            ON;
BEGIN
   TRAN CartTrans 
   BEGIN
      TRY 		-- Insert statements for procedure here
   DELETE from Cart WHERE Id=@Id
         COMMIT TRANSACTION CartTrans 
   END
   TRY 
   BEGIN
      CATCH ROLLBACK TRAN CartTrans 
   END
   CATCH 
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Cart_IU]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
      -- Author:		<Author,,Name>
      -- Create date: <Create Date,,>
      -- Description:	<Description,,>
      -- =============================================
 CREATE PROCEDURE [dbo].[Usp_Cart_IU] --1,1,2
   (
    @Id int=null , @ProductId int, @Quantity int 
	) AS 
      BEGIN
         -- SET NOCOUNT ON added to prevent extra result sets from
         -- interfering with SELECT statements.
         SET
            NOCOUNT 
            ON;
BEGIN
   TRAN CartTrans 
   BEGIN
      TRY 		-- Insert statements for procedure here
      IF EXISTS 
      (
         SELECT
            Id 
         FROM
            Cart 
         WHERE
           ProductId = @ProductId 
      )
      BEGIN
         UPDATE
            Cart 
         SET
            ProductId = @ProductId,
            Quantity = @Quantity         
          WHERE
           ProductId = @ProductId 
      END
      ELSE
         BEGIN
            INSERT INTO
               Cart (ProductId, Quantity, UserId) 
            VALUES
               (
                  @ProductId,
                  @Quantity,
                  1
               )
         END
         COMMIT TRANSACTION CartTrans 
   END
   TRY 
   BEGIN
      CATCH ROLLBACK TRAN CartTrans 
   END
   CATCH 
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetCartProduct]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_GetCartProduct]
	
AS
BEGIN

SET NOCOUNT ON;
SELECT
	p.Id as ProductId
   ,ProductName
   ,ProductDetails
   ,Price
   ,c.id as cartId
   ,c.Quantity
   ,P.ProductImg
   ,s.Quantity as StockQuantity
FROM Product as p INNER JOIN Cart as c on p.Id=c.ProductId
INNER JOIN Stock as s ON p.Id=s.ProductId
END


GO
/****** Object:  StoredProcedure [dbo].[Usp_GetProduct]    Script Date: 7/29/2019 7:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_GetProduct]
	
AS
BEGIN

SET NOCOUNT ON;
SELECT
	p.Id 
   ,ProductName
   ,ProductDetails
   ,Price
   ,s.Quantity
   ,P.ProductImg
   ,(Case when (select Id from Cart where Cart.ProductId=p.Id)>0 then 1 else 0 end) as IsInCart
FROM Product as p LEFT JOIN Stock as s on p.Id=s.ProductId


END

GO
USE [master]
GO
ALTER DATABASE [OnlineStoreDB] SET  READ_WRITE 
GO
