USE [db_DrinkeryManage]
GO
/****** Object:  Table [dbo].[tb_menu]    Script Date: 11/17/2017 09:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_menu](
	[num] [char](8) NOT NULL,
	[sort_id] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[code] [varchar](10) NOT NULL,
	[unit] [varchar](4) NOT NULL,
	[unit_price] [int] NOT NULL,
	[state] [char](4) NOT NULL,
 CONSTRAINT [PK_TB_MENU] PRIMARY KEY CLUSTERED 
(
	[num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122401', 22, N'红*狮子头', N'hsszt', N'盘', 168, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122402', 22, N'虾*蝎将', N'xbxj', N'盘', 128, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122403', 23, N'雪*火焰山', N'xmhys', N'盘', 16, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122404', 22, N'水*肉片', N'szrp', N'碗', 66, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122405', 24, N'纯*', N'cs', N'瓶', 3, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122406', 24, N'可乐', N'kl', N'瓶', 6, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122407', 26, N'水饺', N'sj', N'斤', 16, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122408', 22, N'清*鲤鱼', N'qzly', N'盘', 68, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122801', 22, N'干*鲫鱼', N'gbjy', N'盘', 56, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'07122802', 22, N'干*蚕蛹', N'gbcy', N'盘', 98, N'销售')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011501', 23, N'a', N'33', N'33', 33, N'删除')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011502', 23, N'f', N'f', N'f', 3, N'删除')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011503', 23, N'd', N'd', N'd', 4, N'删除')
INSERT [dbo].[tb_menu] ([num], [sort_id], [name], [code], [unit], [unit_price], [state]) VALUES (N'08011504', 22, N'小鱼', N'XY', N'盘', 10, N'删除')
/****** Object:  Table [dbo].[tb_desk]    Script Date: 11/17/2017 09:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_desk]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_desk](
	[num] [varchar](5) NOT NULL,
	[seating] [int] NOT NULL,
 CONSTRAINT [PK_TB_DESK] PRIMARY KEY CLUSTERED 
(
	[num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8001', 6)
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8002', 6)
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8003', 8)
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8004', 2)
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8006', 8)
INSERT [dbo].[tb_desk] ([num], [seating]) VALUES (N'8008', 8)
/****** Object:  Table [dbo].[tb_user]    Script Date: 11/17/2017 09:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](8) NOT NULL,
	[sex] [char](2) NOT NULL,
	[birthday] [datetime] NOT NULL,
	[id_card] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[freeze] [char](4) NOT NULL,
 CONSTRAINT [PK_TB_USER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_user] ON
INSERT [dbo].[tb_user] ([id], [name], [sex], [birthday], [id_card], [password], [freeze]) VALUES (12, N'明明', N'男', CAST(0x00007E6900000000 AS DateTime), N'1100', N'111', N'正常')
INSERT [dbo].[tb_user] ([id], [name], [sex], [birthday], [id_card], [password], [freeze]) VALUES (13, N'Tsoft', N'男', CAST(0x00007E4900000000 AS DateTime), N'220', N'111', N'正常')
SET IDENTITY_INSERT [dbo].[tb_user] OFF
/****** Object:  Table [dbo].[tb_sort]    Script Date: 11/17/2017 09:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_sort]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_sort](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TB_SORT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_sort] ON
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (22, N'炖炒类')
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (23, N'凉菜类')
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (24, N'酒水类')
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (25, N'饮料类')
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (26, N'主食类')
INSERT [dbo].[tb_sort] ([id], [name]) VALUES (27, N'汤类')
SET IDENTITY_INSERT [dbo].[tb_sort] OFF
/****** Object:  Table [dbo].[tb_order_form]    Script Date: 11/17/2017 09:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_order_form]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_order_form](
	[num] [char](11) NOT NULL,
	[desk_num] [varchar](5) NOT NULL,
	[datetime] [datetime] NULL,
	[money] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_TB_ORDER_FORM] PRIMARY KEY CLUSTERED 
(
	[num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_order_item]    Script Date: 11/17/2017 09:41:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_order_item]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_order_item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_form_num] [char](11) NOT NULL,
	[menu_num] [char](8) NOT NULL,
	[amount] [int] NOT NULL,
	[total] [int] NOT NULL,
 CONSTRAINT [PK_TB_ITEMIZE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[v_order_item_and_menu]    Script Date: 11/17/2017 09:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_order_item_and_menu]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[v_order_item_and_menu]
AS
SELECT     dbo.tb_order_item.id, dbo.tb_order_item.order_form_num, dbo.tb_menu.name, dbo.tb_order_item.amount
FROM         dbo.tb_menu INNER JOIN
                      dbo.tb_order_item ON dbo.tb_menu.num = dbo.tb_order_item.menu_num
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'v_order_item_and_menu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_menu"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_order_item"
            Begin Extent = 
               Top = 6
               Left = 207
               Bottom = 121
               Right = 368
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_order_item_and_menu'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'v_order_item_and_menu', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_order_item_and_menu'
GO
/****** Object:  ForeignKey [FK_TB_ORDER_REFERENCE_TB_DESK]    Script Date: 11/17/2017 09:41:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ORDER_REFERENCE_TB_DESK]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_form]'))
ALTER TABLE [dbo].[tb_order_form]  WITH CHECK ADD  CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_DESK] FOREIGN KEY([desk_num])
REFERENCES [dbo].[tb_desk] ([num])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ORDER_REFERENCE_TB_DESK]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_form]'))
ALTER TABLE [dbo].[tb_order_form] CHECK CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_DESK]
GO
/****** Object:  ForeignKey [FK_TB_ORDER_REFERENCE_TB_USER]    Script Date: 11/17/2017 09:41:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ORDER_REFERENCE_TB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_form]'))
ALTER TABLE [dbo].[tb_order_form]  WITH NOCHECK ADD  CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_USER] FOREIGN KEY([user_id])
REFERENCES [dbo].[tb_user] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ORDER_REFERENCE_TB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_form]'))
ALTER TABLE [dbo].[tb_order_form] CHECK CONSTRAINT [FK_TB_ORDER_REFERENCE_TB_USER]
GO
/****** Object:  ForeignKey [FK_TB_ITEMI_REFERENCE_TB_MENU]    Script Date: 11/17/2017 09:41:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ITEMI_REFERENCE_TB_MENU]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_item]'))
ALTER TABLE [dbo].[tb_order_item]  WITH NOCHECK ADD  CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_MENU] FOREIGN KEY([menu_num])
REFERENCES [dbo].[tb_menu] ([num])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ITEMI_REFERENCE_TB_MENU]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_item]'))
ALTER TABLE [dbo].[tb_order_item] CHECK CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_MENU]
GO
/****** Object:  ForeignKey [FK_TB_ITEMI_REFERENCE_TB_ORDER]    Script Date: 11/17/2017 09:41:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ITEMI_REFERENCE_TB_ORDER]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_item]'))
ALTER TABLE [dbo].[tb_order_item]  WITH NOCHECK ADD  CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_ORDER] FOREIGN KEY([order_form_num])
REFERENCES [dbo].[tb_order_form] ([num])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TB_ITEMI_REFERENCE_TB_ORDER]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_order_item]'))
ALTER TABLE [dbo].[tb_order_item] CHECK CONSTRAINT [FK_TB_ITEMI_REFERENCE_TB_ORDER]
GO
