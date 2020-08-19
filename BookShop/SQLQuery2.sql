
/****** 对象:  Table [dbo].[AdminList]    脚本日期: 08/27/2011 13:52:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdminList](
	[AdminID] [varchar](30) NOT NULL,
	[AdminPass] [varchar](40) NOT NULL,
	[AdminName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ADMINLIST] PRIMARY KEY NONCLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[BookCategory]    脚本日期: 08/27/2011 13:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookCategory](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[ParentID] [int] NOT NULL,
 CONSTRAINT [PK_BOOKCATEGORY] PRIMARY KEY NONCLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[OrderStatus]    脚本日期: 08/27/2011 13:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[StatusName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ORDERSTATUS] PRIMARY KEY NONCLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1.等待付款 2.正在配货 3.正在发送 4交易完成.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderStatus', @level2type=N'COLUMN',@level2name=N'StatusName'
GO
/****** 对象:  Table [dbo].[UserInfo]    脚本日期: 08/27/2011 13:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserEmail] [varchar](100) NOT NULL,
	[UserPass] [varchar](40) NOT NULL,
	[UserTel] [char](11) NOT NULL,
 CONSTRAINT [PK_USERINFO] PRIMARY KEY NONCLUSTERED 
(
	[UserEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[OrderInfo]    脚本日期: 08/27/2011 13:52:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[OrderNo] [varchar](12) NOT NULL,
	[StatusID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderAmount] [money] NOT NULL,
	[DiscountAmount] [money] NOT NULL,
 CONSTRAINT [PK_ORDERINFO] PRIMARY KEY NONCLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[OrderItem]    脚本日期: 08/27/2011 13:52:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderNo] [varchar](12) NOT NULL,
	[BookID] [varchar](12) NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[Discount] [int] NOT NULL,
	[SoldPrice]  AS (([Price]*[Discount])/(100)),
 CONSTRAINT [PK_ORDERITEM] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC,
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[Announcement]    脚本日期: 08/27/2011 13:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Announcement](
	[AnnounceMentID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[AdminID] [varchar](30) NOT NULL,
	[AnnounceTitle] [nvarchar](30) NOT NULL,
	[AnnounceContent] [text] NOT NULL,
	[AnnounceDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ANNOUNCEMENT] PRIMARY KEY NONCLUSTERED 
(
	[AnnounceMentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  Table [dbo].[BookInfo]    脚本日期: 08/27/2011 13:52:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BookInfo](
	[BookID] [varchar](12) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[BookName] [nvarchar](50) NOT NULL,
	[BookSmallImageName] [varchar](100) NOT NULL,
	[BookBigImage] [varchar](100) NOT NULL,
	[BookAuthor] [nvarchar](100) NOT NULL,
	[BookPublisher] [nvarchar](50) NOT NULL,
	[BookPublishDate] [datetime] NOT NULL,
	[BookISBN] [varchar](20) NOT NULL,
	[BookDescription] [text] NOT NULL,
	[BookMarketPrice] [money] NOT NULL,
	[BookDiscount] [int] NOT NULL,
	[BookSoldPrice]  AS (([BookMarketPrice]*[BookDiscount])/(100)),
 CONSTRAINT [PK_BOOKINFO] PRIMARY KEY NONCLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面图片文件名规则:ISBN号_small.jpg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BookInfo', @level2type=N'COLUMN',@level2name=N'BookSmallImageName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'封面图片文件名规则:ISBN号_big.jpg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BookInfo', @level2type=N'COLUMN',@level2name=N'BookBigImage'
GO
/****** 对象:  Table [dbo].[AddressBook]    脚本日期: 08/27/2011 13:52:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddressBook](
	[AddressID] [int] IDENTITY(13,1) NOT FOR REPLICATION NOT NULL,
	[UserEmail] [varchar](100) NOT NULL,
	[ConsigneePerson] [nvarchar](20) NOT NULL,
	[ConsigneeAddress] [nvarchar](100) NOT NULL,
	[ConsigneeTel] [char](11) NOT NULL,
	[ZipCode] [char](6) NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_ADDRESSBOOK] PRIMARY KEY NONCLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** 对象:  ForeignKey [FK_ADDRESSB_RELATIONS_USERINFO]    脚本日期: 08/27/2011 13:52:23 ******/
ALTER TABLE [dbo].[AddressBook]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESSB_RELATIONS_USERINFO] FOREIGN KEY([UserEmail])
REFERENCES [dbo].[UserInfo] ([UserEmail])
GO
ALTER TABLE [dbo].[AddressBook] CHECK CONSTRAINT [FK_ADDRESSB_RELATIONS_USERINFO]
GO
/****** 对象:  ForeignKey [FK_ANNOUNCE_RELATIONS_ADMINLIS]    脚本日期: 08/27/2011 13:52:27 ******/
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_ANNOUNCE_RELATIONS_ADMINLIS] FOREIGN KEY([AdminID])
REFERENCES [dbo].[AdminList] ([AdminID])
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_ANNOUNCE_RELATIONS_ADMINLIS]
GO
/****** 对象:  ForeignKey [FK_BOOKCATE_RELATIONS_BOOKCATE]    脚本日期: 08/27/2011 13:52:29 ******/
ALTER TABLE [dbo].[BookCategory]  WITH CHECK ADD  CONSTRAINT [FK_BOOKCATE_RELATIONS_BOOKCATE] FOREIGN KEY([ParentID])
REFERENCES [dbo].[BookCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[BookCategory] CHECK CONSTRAINT [FK_BOOKCATE_RELATIONS_BOOKCATE]
GO
/****** 对象:  ForeignKey [FK_BOOKINFO_RELATIONS_BOOKCATE]    脚本日期: 08/27/2011 13:52:35 ******/
ALTER TABLE [dbo].[BookInfo]  WITH CHECK ADD  CONSTRAINT [FK_BOOKINFO_RELATIONS_BOOKCATE] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[BookCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[BookInfo] CHECK CONSTRAINT [FK_BOOKINFO_RELATIONS_BOOKCATE]
GO
/****** 对象:  ForeignKey [FK_ORDERINF_RELATIONS_ADDRESSB]    脚本日期: 08/27/2011 13:52:38 ******/
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_ORDERINF_RELATIONS_ADDRESSB] FOREIGN KEY([AddressID])
REFERENCES [dbo].[AddressBook] ([AddressID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_ORDERINF_RELATIONS_ADDRESSB]
GO
/****** 对象:  ForeignKey [FK_ORDERINF_RELATIONS_ORDERSTA]    脚本日期: 08/27/2011 13:52:38 ******/
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD  CONSTRAINT [FK_ORDERINF_RELATIONS_ORDERSTA] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[OrderInfo] CHECK CONSTRAINT [FK_ORDERINF_RELATIONS_ORDERSTA]
GO
/****** 对象:  ForeignKey [FK_ORDERITE_ORDERITEM_BOOKINFO]    脚本日期: 08/27/2011 13:52:41 ******/
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_ORDERITEM_BOOKINFO] FOREIGN KEY([BookID])
REFERENCES [dbo].[BookInfo] ([BookID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_ORDERITEM_BOOKINFO]
GO
/****** 对象:  ForeignKey [FK_ORDERITE_ORDERITEM_ORDERINF]    脚本日期: 08/27/2011 13:52:42 ******/
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_ORDERITEM_ORDERINF] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[OrderInfo] ([OrderNo])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_ORDERITEM_ORDERINF]
GO



--插入数据到UserInfo

INSERT [UserInfo] ([UserEmail],[UserPass],[UserTel]) VALUES ( 'azx@163.com','F379EAF3C831B04DE153469D1BEC345E','13350832921')
INSERT [UserInfo] ([UserEmail],[UserPass],[UserTel]) VALUES ( 'tzsd@sina.com.cn','21218CCA77804D2BA1922C33E0151105','13841832947')
INSERT [UserInfo] ([UserEmail],[UserPass],[UserTel]) VALUES ( 'hsfsdfi@163.com','21218CCA77804D2BA1922C33E0151105','13837831342')
INSERT [UserInfo] ([UserEmail],[UserPass],[UserTel]) VALUES ( 'nzl@163.com','F379EAF3C831B04DE153469D1BEC345E','13892831399')
INSERT [UserInfo] ([UserEmail],[UserPass],[UserTel]) VALUES ( 'tcl@sina.com.cn','F379EAF3C831B04DE153469D1BEC345E','13949134348')

--插入数据到AddressBook
SET IDENTITY_INSERT [AddressBook] ON

INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 13,'azx@163.com','李四','陕西省西安市长安区三桥经济技术开发区疏导线58号','13348032921','511732',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 14,'azx@163.com','黄波','四川省成都市某街道某小区','13460832933','611830',1)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 15,'azx@163.com','马士三','北京市海淀区海淀大街３号鼎好写字楼918室','13708854185','100000',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 16,'tzsd@sina.com.cn','耿子琼','上海虹口区水电路201号(靠近花园路)','13208716769','331136',1)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 17,'tzsd@sina.com.cn','陈毅彪','上海海宁路1399号2522室','13987621773','639270',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 18,'tzsd@sina.com.cn','李文凯','长沙市芙蓉区晚报大道267号晚报大厦16楼','13708890286','416670',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 19,'nzl@163.com','陶贤铭','合肥市淮河路步行街海亚花园1栋','13320537929','198287',1)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 20,'nzl@163.com','徐明金','深圳市罗湖区东门南海中心A座','13078789699','726872',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 21,'tcl@sina.com.cn','刘红莲','贵州省贵阳市龙港大厦西楼27楼F座','13987183217','533412',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 22,'tcl@sina.com.cn','严跃','桂林市正阳步行街97号门面','13116280397','331815',0)
INSERT [AddressBook] ([AddressID],[UserEmail],[ConsigneePerson],[ConsigneeAddress],[ConsigneeTel],[ZipCode],[IsDefault]) VALUES ( 23,'tcl@sina.com.cn','王新川','重庆市沙坪坝渝培路138号','13146280396','611848',1)

SET IDENTITY_INSERT [AddressBook] OFF

--插入数据到AdminList
INSERT [AdminList] ([AdminID],[AdminPass],[AdminName]) VALUES ( 'Admin','F379EAF3C831B04DE153469D1BEC345E','黄波')
INSERT [AdminList] ([AdminID],[AdminPass],[AdminName]) VALUES ( 'HM133','F379EAF3C831B04DE153469D1BEC345E','贺敏')
INSERT [AdminList] ([AdminID],[AdminPass],[AdminName]) VALUES ( 'HC','F379EAF3C831B04DE153469D1BEC345E','黄成')

--插入数据到AnnounceMent
SET IDENTITY_INSERT [Announcement] ON

INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 1,'Admin','社科新书全聚，低价+立减！','&lt;p&gt;心随“新”动，低价尝“鲜”！低价+立减=绝对超值！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;历史、政治军事、心理学、哲学、文化、宗教类新书新辣聚集，活动全场每满69元立减6元，多买多省！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;重磅推荐：&lt;/p&gt;&lt;br/&gt;&lt;p&gt;吴思最新作品《我想重新解释历史：吴思访谈录》；&lt;/p&gt;&lt;br/&gt;&lt;p&gt;热卖新书《卑鄙的圣人：曹操》第2部震撼登场；&lt;/p&gt;&lt;br/&gt;&lt;p&gt;全国独家《罗马帝国衰亡史》传诵两百年迄今不衰；&lt;/p&gt;&lt;br/&gt;&lt;p&gt;独家首发《怪诞心理学2》史上最神奇的心理学实验报告；&lt;/p&gt;&lt;br/&gt;&lt;p&gt;《微表情》告诉你适用于恋爱、晋升、谈判，面试......最全面最实用的本能识谎术！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;','2011-08-24 13:41:38')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 2,'Admin','写书评赢ipad2！数量有限！','&lt;p&gt;玩转幸运在指间，书评抢楼赢ipod活动开始啦！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;凡购买淘书屋独家发售小布什唯一亲笔自传《抉择时刻》（精装本）的用户，完成订单并发表书评抢得指定楼层，即第18、48、78、108、138、168、198、228、258、288、318、348、378、408、438楼发表书评的用户，可获赠价值iPad2一台（颜色随机）。限量15台，赠完为止，先抢先得！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;好书抢先读，好礼等你来！&lt;/p&gt;&lt;br/&gt;&lt;br/&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;&lt;br/&gt;','2011-08-05 10:30:53')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 3,'Admin','第8届茅盾文学奖揭榜！','&lt;p&gt;第八届茅盾文学奖8月20日揭开悬念，最终获奖作品为：&lt;/p&gt;&lt;br/&gt;&lt;p&gt;张炜《你在高原》&lt;/p&gt;&lt;br/&gt;&lt;p&gt;刘醒龙《天行者》&lt;/p&gt;&lt;br/&gt;&lt;p&gt;毕飞宇《推拿》&lt;/p&gt;&lt;br/&gt;&lt;p&gt;莫言《蛙》&lt;/p&gt;&lt;br/&gt;&lt;p&gt;刘震云《一句顶一万句》&lt;/p&gt;&lt;br/&gt;&lt;p&gt;入围作品集萃、历届作品盘点，更多文学佳作，超低价炙手可热！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;','2011-08-23 08:19:44')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 4,'Admin','热映卡通书满59+5得畅销书','&lt;p&gt;在家里同步看热映3D卡通电影！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;热映影视同步、最畅销、最超值的卡通动漫图书满59+5得超值畅销书，赠书3选1！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;彼时，这些卡通书陪伴现在的爸爸妈妈长大，此时，爸爸妈妈想把这些最棒的卡通书介绍给最爱的宝贝孩子！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;蓝精灵、熊猫大侠、变形金刚、圣斗士、喜羊羊......,更多精彩图书，快来抢购吧！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;','2011-08-22 10:50:03')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 5,'Admin','TOP100图书分类销售大盘点！','&lt;p&gt;源于用户真实购买数据，千万书迷力荐！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;2011年中图书大盘点，Top100分类销售榜单新鲜出炉！&lt;/p&gt;&lt;br/&gt;&lt;p&gt;文学类：《独唱团》《百年孤独》《1Q84 Book3》《活着就为改变世界》《1988：我想和这个世界谈谈》……&lt;/p&gt;&lt;br/&gt;&lt;p&gt;社科类：《西藏生死书》《跟乐嘉学性格色彩》《心里操纵术大全集》《乌合之众》《最寒冷的冬天》……&lt;/p&gt;&lt;br/&gt;&lt;p&gt;经管类：《海底捞你学不会》《时寒冰说，经济大棋局，我们怎么办》《货币战争3》……&lt;/p&gt;&lt;br/&gt;&lt;p&gt;励志类：《蔡康永的说话之道》《FBI教你破解身体语言》《拆掉思维的墙》……&lt;/p&gt;&lt;br/&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;','2011-07-26 11:14:50')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 6,'Admin','2011年上半年计算机图书畅销榜','&amp;nbsp; 2011年上半年最值得专注的计算机书畅销榜！&lt;br/&gt;公正、专业、新鲜，排名及评论来自京东真实数据！&lt;br/&gt;网友力推、名社热荐、最热门、最新潮的专业技术......不容错过的经典！&lt;br/&gt;祝大家购物愉快！','2011-07-19 16:13:29')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 7,'Admin','全场满68元免运费','&lt;p&gt;尊敬的顾客朋友，您好！&lt;/p&gt;&lt;br /&gt;&lt;p&gt;淘书屋从2011年3月1日起运费调整如下：&lt;/p&gt;&lt;br /&gt;&lt;p&gt;1.全国运费为每单5元。2.单张订单购物金额满68元免运费。&lt;/p&gt;&lt;br /&gt;&lt;p&gt;该调整只适用于普通快递及平邮订单，而不适用于国内特快专递（EMS）、港澳台以及海外订单。&lt;/p&gt;&lt;p&gt;祝大家购物愉快！&lt;/p&gt;&lt;br /&gt;','2011-02-25 17:33:28')
INSERT [Announcement] ([AnnounceMentID],[AdminID],[AnnounceTitle],[AnnounceContent],[AnnounceDate]) VALUES ( 8,'Admin','千元京券寻找富士通达人','好消息!买本晒单送京劵，最高可达一千元！&lt;br/&gt;炎炎夏日，激爽一下！京东联手厂家推出富士通笔记本达人养成计划！具体规则见论坛所示&lt;br/&gt;晒得越多，送得越多。可以自己购买，也可代周围需要购买笔记本的家人，朋友，同事，网友下单。一个富士通达人账户购买指定机型下单并完成晒单即可获得至少20元京劵，同一账号符合要求的晒单达20个或以上的可获赠千元京劵。京劵下次购物使用，可直接抵掉相应的现金。小晒怡情，大晒发财！众人拾柴火焰高，希望大家一起给力，打造京东上的富士通笔记本达人。指定活动专场页面如下，快来抢购吧~（本次享受晒单送劵的指定机型是LH531，商品编号411039）&lt;br/&gt;祝大家购物愉快！','2011-08-15 18:09:31')

SET IDENTITY_INSERT [Announcement] OFF

--插入数据到BookCategory

INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 0,'根目录',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 1,'英文原版书',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 2,'小说',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 3,'文学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 4,'青春文学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 5,'传记',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 6,'艺术',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 7,'少儿',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 8,'经济',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 9,'金融与投资',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 10,'管理',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 11,'生活',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 12,'健身与保健',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 13,'家庭与育儿',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 14,'旅游',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 15,'动漫/幽默',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 16,'历史',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 17,'哲学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 18,'国学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 19,'政治/军事',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 20,'法律',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 21,'宗教',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 22,'心理学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 23,'社会科学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 24,'科技',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 25,'工程',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 26,'建筑',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 27,'医学',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 28,'科学与自然',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 29,'计算机与互联网',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 30,'体育/运动',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 31,'教材教辅',0)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 32,'Biographies &amp; Memoirs（传记与自传）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 33,'Arts &amp; Photography（艺术与摄影）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 34,'Business &amp; Investing（商业与投资）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 35,'Children''s Books（儿童图书）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 36,'Comics &amp; Graphic Novels（动漫与绘画小说）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 37,'Computers &amp; Internet（计算机与网络）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 38,'Cooking, Food &amp; Wine（烹调，食品与酒类）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 39,'ELT &amp; Standard Test（英语学习与标准考试）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 40,'Entertainment（休闲娱乐）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 41,'Health, Mind &amp; Body（身心健康）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 42,'History（历史）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 43,'Home &amp; Garden（家居与园艺）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 44,'Law（法律）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 45,'Literature &amp; Fiction（文学与虚构类）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 46,'Medicine（医学）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 47,'Mystery &amp; Thrillers（神秘与惊悚）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 48,'Nonfiction（非虚构类）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 49,'Outdoors &amp; Nature（户外与自然）',1)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 188,'益智游戏/思维训练',11)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 189,'地图',11)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 190,'娱乐',11)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 131,'动漫',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 132,'传统文化',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 133,'儿童教育',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 134,'儿童文学',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 135,'幼儿启蒙',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 136,'手工/游戏',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 137,'音乐/舞蹈',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 138,'智力开发',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 139,'科普/百科',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 140,'励志/成长',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 141,'少儿英语',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 142,'0-2岁',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 143,'3-6岁',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 144,'7-10岁',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 145,'11-14岁',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 146,'漫画',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 147,'绘本',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 148,'美术/书法',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 149,'入园准备及教材',7)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 94,'历史人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 95,'经典传记',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 96,'历代帝王',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 97,'领袖首脑',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 98,'军事人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 99,'政治人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 100,'财经人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 101,'宗教人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 102,'女性人物',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 103,'体坛之星',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 104,'文娱明星',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 105,'科学家',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 106,'建筑师/设计师',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 107,'艺术家',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 108,'文学家',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 109,'学者',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 110,'社会百相',5)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 165,'中国金融银行',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 166,'保险',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 167,'信用管理与信贷',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 168,'各国金融银行',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 169,'国际金融',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 170,'基金',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 171,'投资',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 172,'期货',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 173,'股票',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 174,'证券',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 175,'个人理财',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 176,'货币银行学',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 177,'金融市场与管理',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 178,'金融理论',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 179,'企业并购',9)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 82,'校园',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 83,'爱情/情感',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 84,'叛逆/成长',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 85,'悬疑/惊悚',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 86,'娱乐/偶像',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 87,'爆笑/无厘头',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 88,'玄幻/魔幻/科幻',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 89,'大陆原创',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 90,'港台青春文学',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 91,'韩国青春文学',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 92,'其他国外青春文学',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 93,'名人A-Z',4)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 200,'大陆漫画',15)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 201,'港台漫画',15)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 202,'日韩漫画',15)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 50,'中国当代小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 51,'中国近现代小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 52,'中国古典小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 53,'四大名著',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 54,'港澳台小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 55,'网络小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 56,'外国小说',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 57,'侦探/悬疑/推理',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 58,'惊悚/恐怖',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 59,'魔幻/奇幻/玄幻',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 60,'武侠',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 61,'军事',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 62,'情感/家庭/婚姻',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 63,'宫廷',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 64,'社会',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 65,'都市',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 66,'乡土',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 67,'职场',2)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 197,'主题旅游',14)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 198,'国内游',14)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 199,'国外游',14)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 203,'史学理论',16)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 204,'世界史',16)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 194,'品质生活',13)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 195,'居家安全与常识',13)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 196,'孕产知识',13)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 111,'艺术理论与评论',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 112,'艺术史',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 113,'世界各国艺术概况',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 114,'鉴赏收藏',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 115,'绘画',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 116,'书法与篆刻',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 117,'摄影',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 118,'动画',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 119,'设计',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 120,'影视',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 121,'雕塑',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 122,'建筑',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 123,'音乐',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 124,'舞蹈',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 125,'舞台艺术戏剧',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 126,'工艺美术',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 127,'民间艺术',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 128,'艺术品拍卖',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 129,'艺术辞典与工具书',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 130,'艺术类考试',6)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 150,'经典著作',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 151,'世界经济',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 152,'中国经济',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 153,'会计、审计',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 154,'工具书与参考书',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 155,'经济体制与改革',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 156,'经济计划与管理',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 157,'世界各国经济概况、经济史、经济地理',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 158,'经济学理论与读物',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 159,'职业资格考试',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 160,'行业经济',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 161,'财政税收',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 162,'贸易经济',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 163,'通俗读物',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 164,'工业经济',8)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 249,'家庭教育',13)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 250,'心理学研究方法',22)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 251,'通俗读物',10)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 180,'MBA与工商管理',10)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 181,'人力资源管理',10)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 182,'企业与企业家',10)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 183,'企业管理与培训',10)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 68,'文学理论',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 69,'文学评论与研究',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 70,'文学史',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 71,'作品集',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 72,'名家作品',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 73,'儿童文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 74,'纪实文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 75,'民间文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 76,'影视文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 77,'散文/随笔/书信',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 78,'诗歌词曲',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 79,'期刊杂志',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 80,'中国文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 81,'外国文学',3)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 248,'办公软件',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 191,'上班族保健',12)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 192,'两性健康',12)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 193,'中老年健康',12)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 207,'书目辞典',18)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 208,'古籍善本影印本',18)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 209,'世界政治',19)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 210,'外交、国际关系',19)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 211,'法律史',20)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 212,'法律普及读物',20)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 213,'宗教理论与概况',21)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 214,'伊斯兰教',21)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 215,'社会心理学',22)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 216,'变态/病态心理学',22)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 217,'民族学',23)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 218,'人口学',23)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 219,'汽车与车辆',24)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 220,'畜牧业、养殖业',24)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 221,'土木工程',25)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 222,'能源与动力工程',25)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 223,'园林景观',26)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 224,'土力学、地基基础工程',26)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 225,'医学理论与研究',27)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 226,'口腔科学',27)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 227,'自然科学丛书、文集、连续性出版物',28)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 228,'非线性科学',28)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 229,'编程语言与程序设计',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 230,'软件工程及软件方法学',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 231,'数据库',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 232,'操作系统',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 233,'计算机安全',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 234,'计算机控制与仿真',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 235,'网络与通信',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 236,'人工智能',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 237,'图形图像/视频',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 238,'网页制作',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 239,'辅助设计与工程计算',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 240,'计算机组织与体系结构',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 241,'游戏',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 242,'硬件与维护',29)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 243,'体育理论与教学',30)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 244,'跆拳道/拳击',30)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 245,'幼儿园',31)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 246,'中小学作文辅导',31)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 247,'中小学课外读物',31)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 205,'中国哲学',17)
INSERT [BookCategory] ([CategoryID],[CategoryName],[ParentID]) VALUES ( 206,'西方哲学',17)

--插入数据到BookInfo


INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10711003',100,'乔布斯传：神一样的传奇','9787564211172_small.jpg','9787564211172_big.jpg','王咏刚，周虹 著','上海财经大学出版社','2011-08-01 00:00:00','9787564211172','李开复唯一推荐的乔布斯传记：“所有中文书里最有料也最好读的乔布斯评传”；武侠体叙述&mdash;&mdash;水果帮乔帮主传奇；独家、最新爆料（资料截至2011年6月），很多甚至连乔布斯自己都不愿意讲出。《乔布斯传：神一样的传奇》是唯一一本由资深IT工程师撰写的乔布斯传记，全面讲述了从乔布斯青年时期到苹果发布最新的iCould云计算模式的整个创新历程，是内容最新、最全的乔布斯传记。',39.8000,65)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10490039',99,'蒋介石自述1887-1975（上卷）','9787507534474_small.jpg','9787507534474_big.jpg','师永刚，张凡 著','华文出版社','2011-05-01 00:00:00','9787507534474','《蒋介石1887-1975（上卷）》为蒋介石的个人自述言论集，书中虽然涉及蒋介石身世经历和政治军事活动，但笔墨着重于蒋介石谈孔孟、谈教育、说诗论文、修身养性等著述。是一本比较客观公正的蒋介石自述传记。与国内其他相关蒋介石的图书相比，本书在意识形态、政治方面对蒋介石基本没有误读或有意识的进行误导，从讲述蒋介石走下神坛，败走台湾下后的角度出发，力求客观、公正、真实地解读蒋介石其人。还原一个真实的做为普通人的蒋介石。',36.0000,50)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10581110',59,'德库拉（惊情四百年）','9787538291643_small.jpg','9787538291643_big.jpg','（爱尔兰）布拉姆·斯托克 著 高凯 译','辽宁教育出版社','2011-04-01 00:00:00','9787538291643','这部恐怖小说以15世纪神秘的瓦拉几亚公国的领主弗拉德三世为原型创作出集高贵、智慧、邪恶与柔情于一身的暗夜之王。布拉姆·斯托克由此成为吸血鬼小说鼻祖，他影响了后世几代作家，其作品被不断翻拍，成为经典电影。以其姓名命名的布拉姆·斯托克奖，是恐怖小说界的最高奖。美国当代著名作家斯蒂芬·金等都曾获该奖。',28.8000,57)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10661923',88,'羽.黯月之翼','9787538736618_small.jpg','9787538736618_big.jpg','沧月 著','时代文艺出版社','2011-07-01 00:00:00','9787538736618','这是一场飞鸟和鱼的邂逅，一个是浮出水面无意的张望一个是掠过天空不经意的回眸，即便是偶尔有过那么一瞬的交错，却又立刻各分东西！<br/>
　　她来云荒这一趟，走遍了天南地北，品尝过了各种美食，遇到过各种奇事，结交了诸多朋友……然而，唯一的，她却不曾得到最珍贵的东西——<br/>
　　一颗真挚的心和恒久的感情；<br/>
　　那是大地上唯一可以不朽的，天空海阔，永不相逢；<br/>
　　当魔之瞳睁开，命运之轮旋转，所有人都将化为齑粉，唯有化为曼珠沙华，盛开在你的坟墓。',29.8000,61)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10705921',85,'别对我说谎：FBI教你破解语言密码','9787802491540_small.jpg','9787802491540_big.jpg','（美）乔.纳瓦罗，约翰.谢弗尔 著 万弟娟 译','中华工商联合出版社','2011-07-01 00:00:00','9787802491540','《别对我说谎：FBI教你破解语言密码》是一本有关人际沟通的书籍，作者是两位FBI的资深探员。他们根据自己数十年的犯罪调查和审讯的经验，同时融汇了他们对非言语沟通及心理学的研究成果，总结了25种FBI的约谈技巧，教你专业但并不艰涩的读人读心术。无论是约谈证人，还是进行商务谈判，或者推销产品，都能从书中获益。本书教会读者怎么在关键时刻解除对方的心防，随时随地建立自己主导地位的技巧，帮助读者找寻藏在细节里的线索。是一本普通人在任何场合都能用得着的沟通指南。',29.8000,57)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10663697',248,'谁说菜鸟不会数据分析','9787121135873_small.jpg','9787121135873_big.jpg','张文霖 等 著','电子工业出版社','2011-07-01 00:00:00','9787121135873','很多人看到数据分析就望而却步，担心门槛高，无法迈入数据分析的门槛。本书在降低学习难度方面做了大量的尝试：基于通用的Excel工具，加上必知必会的数据分析概念，并且采用通俗易懂的讲解方式。本书努力将数据分析写成像小说一样通俗易懂，使读者可以在无形之中学会数据分析。<br/>
　　《谁说菜鸟不会数据分析》按照数据分析工作的完整流程来讲解。全书共8章，分别讲解数据分析必知必会的知识、数据处理技巧、数据展现的技术、通过专业化的视角来提升图表之美、数据分析报告的撰写技能以及持续的修炼。<br>
　　本书形式活泼，内容丰富而且充实，让人有不断阅读下去的动力。读者完全可以把这本书当小说来阅读，跟随主人公小白，在Mr.林的指点下轻松掌握数据分析的技能，提升职场竞争能力。<br/>
　　本书适合需要提升自身竞争力的职场新人；在市场营销、金融、财务、人力资源管理中需要作数据分析的人士；经常阅读经营分析、市场研究报告的各级管理人员；从事咨询、研究、分析等专业人士。<br/>',59.0000,69)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10691806',163,'一转念：用经济学思考','9787542634993_small.jpg','9787542634993_big.jpg','兰小欢 著','上海三联书店','2011-05-01 00:00:00','9787542634993','美国有一档帮助穷人的电视节目，选定一户穷人家，一周内为他们建栋崭新的漂亮房子，全新的家具，车库里都放上新车。一夜之间，梦想成真，就要从此幸福地生活……不久之后，记者回访发现，很多受帮助的人把车和家具都卖了，换了钱。甚至还有人生活比以前更显困顿了些，因为付不起房子的财产税。<br/>
　　《一转念：用经济学思考》里绝大部分故事，都有类似的情节：意料之外，情理之中。这些故事是从世界各地的经济学家那里听来的，我记录并转述出来。虽然来自经济学家，但这些故事和税收利息国际贸易无关，而是柴米油盐的道理，是日常生活。拿虐待老人来说吧，子女不孝冷血当然是原因之一，但不管子女如何冷血，不会虐待家财万贯可以留大量遗产的老人。富有的老人，子女通常来探望的次数也要多一些。忙还是不忙，子女要算时间的成本和收益。久病床前无孝子，富在深山有远亲，是经济学的道理。<br/>',25.0000,68)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10664009',249,'史上最好玩教养法','9787511314338_small.jpg','9787511314338_big.jpg','彭菊仙 著','中国华侨出版社','2011-06-01 00:00:00','9787511314338','只要好玩，孩子就什么都想学！<br/>
　　学英文好好玩，学数学好好玩，整理书包好好玩，厨房好好玩，交朋友好好玩……连平常好忙好忙的爸爸，都好好玩喔！<br/>
　　《史上最好玩教养法》提供最实用的妈妈牌绝招，让孩子热爱生活、主动学习，还拥有永远用不完的创意！作者彭菊仙，曾是台湾电视圈出了名的拼命三娘，如今是三个孩子的妈。有感于教养大不易，她充分发挥了媒体人的创意，努力实验并摸索出这套"好玩教养法"之后，发现当妈妈可以是一种24小时的游戏和事业。<br/>
　　于是，彭菊仙成了"把教养变好玩"的Super Mother！她用电影当课本、用面团当教具；她带着孩子帮积木穿衣服，来学习立体概念；当孩子开始用身体当乐器，便疯狂爱上了音乐和舞蹈；她采用点数制度，配上计时器，不仅让孩子变得独立，会自动自发做功课，还养成了写"小日记"的习惯；创意不曾遭到抹灭的孩子，竟然在班上开起"快乐DVD租借公司"、"快乐星星有限公司"来广结善缘，建立人脉！  只要善加引导，就能为孩子创造出一波又一波的"学习狂潮"。<br/>',29.8000,49)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10030805',59,'暮光之城：新月','9787544804196_small.jpg','9787544804196_big.jpg','（美）梅尔 著 龚萍，张雅琳，李俐 译','接力出版社','2008-09-01 00:00:00','9787544804196','爱德华深深迷上贝拉，也喜欢上了她身上独特的香味。无奈欢乐时光总是短暂的，在她十八岁生日派对上，贝拉不慎割伤了胳膊，流淌的鲜血勾起了爱德华家人嗜血的本性。为了保护自己心爱的人，爱德华和他的家族离开了福克斯小镇。<br>　　爱德华走后，贝拉的世界彻底坍塌了，她开始尝试各种冒险的行径，因为她发现，只要她一做危险的事情，爱德华的声音就会出现在她的脑海里。贝拉自虐式的疯狂举动并没有让爱德华回心转意，这时，年少不羁的雅各布出现在她苍白的世界里，他虽知贝拉心中另有他人，还是深情地陪伴、保护着她。一个是坚如磐石的冰冷异类，一个是热情似火的炙热狼人，贝拉将如何抉择……爱德华误认为贝拉已跳海身亡，承受不了如此突如其来的巨大打击，他决定将一切作一个了断。暮色渐渐隐退，等待他们的是天边昭示着最漆黑的夜的一弯新月，贝拉和爱德华会坠入这万劫不复的黑暗世界吗？他们能够在生命终点前抢回比自己还珍贵的对方，一起拯救这世间最令人心动的爱情吗？<br/>　　领略斩不断、理还乱的生死奇缘，《新月》将读者带进比普通青春类小说更加神奇多元的世界，读者与其说是陪伴贝拉度过了她人生中第一段最黑暗的时期，不如说是借助梅尔的妙笔在魔幻世界里经历了一次现实生活中不可能存在的爱情体验。爱德华的挣扎、贝拉对爱情的诉求以及雅各布对真爱的渴望三种张力贯穿小说始终，很好地诠释了爱情永恒的主题。梅尔以她独特的笔法和天才的能力掌控着读者的心跳，多情的读者难免和贝拉一起，或是凝神屏息，或是潸然泪下。',32.0000,68)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10641875',204,'罗马帝国衰亡史','9787546351445_small.jpg','9787546351445_big.jpg','（英）吉本（Gibbon，E.） 著 席代岳 译','吉林出版集团有限责任公司','2011-05-01 00:00:00','9787546351445','《罗马帝国衰亡史》以堂皇宏阔的篇幅，叙述了罗马帝国从公元2世纪安东尼时代的赫赫盛极，到l453年君士坦丁熙陷落时黯然谢幕的l300多年的历史风貌。作者<br/>
　　在近400万的洋洋文字中，既发怀古之幽思，悲怆叹惋千年帝国的无奈衰颓乃至烟灭；又阐思辨之深彻，诠释剖析盛衰兴替的永恒历史命题。<br/>
　　《罗马帝国衰亡史》出版后传诵两百年迄今不衰，其文学光彩与史学成就同样为后人称颂。',268.0000,50)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10791295',103,'穆里尼奥传','9787510418839_small.jpg','9787510418839_big.jpg','（葡）路易斯·洛伦索 著 陈震 译','新世界出版社','2011-07-01 00:00:00','9787510418839','穆里尼奥官方传记《葡萄牙制造》中文引进版千呼万唤始出来，终于正式引进。十五万字全本首次放出。此前网上版本均为节选版。<br>
　　本书由穆里尼奥授权他的好友，葡萄牙著名体育记者路易斯·洛伦索撰写。洛伦索是穆里尼奥的发小，俩人一直保持着亲密的朋友关系。作为穆里尼奥从一个小翻译成长为世界最佳足球教练的重要见证者，他有着许多第一手的资料，故而能在本书中将穆里尼奥从助理教练到豪门球会主帅的执教轨迹、这一路上的人生磨砺、经历过的挫折打击、直到最后在欧陆所向披靡一一还原，并得以在其中穿插大量篇幅穆里尼奥在训练、比赛、以及私人场合的“口述实录”。此外，穆里尼奥也亲笔撰写了书中几个重要章节，所以与其说这本书是传记，其实和穆里尼奥自传已经无异。<br>
　　关于穆里尼奥，很多人都有同样的问题——“他是如何从一个翻译变成这个世界上最优秀的足球教练。”这本书记录了他从默默无闻到登上“欧洲之巅”的历程，也为这个问题给出了准确的答案——他的坚韧、勤奋、专注、偏执，以及永不言弃的精神。今天，面对着功成名就的穆里尼奥，如果你带着同样的问题读完此书后，必然会唏嘘不已。因为狂人的成功，看似偶然，实则必然。<br/>
　　与他辉煌的执教生涯形成鲜明对比的是，他的起点很低——球员时代的穆里尼奥籍籍无名，一直都只在葡萄牙低级别俱乐部效力。由于精通五种语言，他退役后有幸成为波尔图主教练博比·罗布森的翻译，随着博比·罗布森转至西甲巴塞罗那，穆里尼奥也随行至西班牙任他的翻译与助教。这本书的故事从他离开巴萨开始——',36.8000,47)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10662689',205,'庄子的奔腾','9787540449377_small.jpg','9787540449377_big.jpg','王蒙 著','湖南文艺出版社','2011-07-01 00:00:00','9787540449377','《庄子的奔腾》，“以庄解王，以王解庄”，王蒙借庄子说人生哲学与处世之道。本书是王蒙先生用自己的人生历练，用自己的体悟感受，用自己的政治经历、社会经历、人生经历、文学经历，也用自己的知识与智商去与庄生对话，与庄生共舞，揣摩逼近庄生的鱼、兔、意图、意念、雄辩与才华，对《庄子》进行解说与阐释，交映生辉。从中体味到庄子思想的精深之处,对我们的人生及处世智慧有许多的启迪和帮助。',35.0000,56)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10792498',131,'蓝精灵3D电影剧照','9787115260994_small.jpg','9787115260994_big.jpg','童趣出版有限公司 编','人民邮电出版社','2011-08-01 00:00:00','9787115260994','蓝精灵是比利时国宝级动画形象，也是世界经典动画品牌。上世纪八九十年代，蓝精灵动画片在中国热播，从此，这种三个苹果大的蓝色小人陪伴了整整一代人的童年。25年后，蓝精灵华丽回归，再续经典辉煌！<br/>
　　《蓝精灵3D电影剧照故事书》讲述了一段蓝精灵进入现代城市的大冒险故事：可爱的蓝精灵们被邪恶巫师格格巫追捕，笨笨误将大家带进了禁地石窟，由于当时是"蓝月"，所以大家都被带到了现实世界的纽约中央公园内。蓝精灵们一方面要在格格巫和阿兹猫找到他们之前回到自己的蓝精灵村，另一方面只有三个苹果高的他们也要在纽约这座大苹果之城（Big Apple）展开一段惊险搞笑的冒险。天真无邪的蓝精灵与都市人碰到一起将擦出无比精彩的火花！<br/>',15.8000,63)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10094613',249,'好爸爸要和孩子做的100件事','9787505424067_small.jpg','9787505424067_big.jpg','海韵 著','朝华出版社','2010-07-01 00:00:00','9787505424067','美国专栏作家爱默生·蔡斯撰文指出：人们对于母亲在家里的作用往往能够充分重视，因为每个家庭确实少不了母亲的存在。但这并不意味着父亲在家里的作用就低于母亲，或是说孩子接触父亲对于其成长的重要性不及母亲。当然，父亲在家庭之外有很多的责任，使他们与孩子的接触有限，但父亲对孩子成长的影响却不会因为这一点而发生改变。',29.8000,50)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10020011',59,'藏地密码2','9787536698598_small.jpg','9787536698598_big.jpg','何马 著','重庆出版社','2008-06-01 00:00:00','9787536698598','大约一千多年前，古藏人曾抵达南美丛林深处，那里曾建有繁华的城邦，古藏使者将关于帕巴拉神庙的一些重要线索，遗落在那里。为了寻找帕巴拉神庙的真相，卓木强巴和他的伙伴们一头扎进危机四伏的美洲丛林，他们要避开毒贩子和游击队寻找消失的玛雅遗迹，他们遭遇过杀人蜂和食人蚁，在狂蟒与鳄鱼的尖牙利爪下逃生，经历雷暴洪水等恶劣天气，从最后的食人族手里逃走，终于在丛林中发现了玛雅人的白城……',28.0000,50)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10009504',250,'怪诞心理学：揭秘不可思议的日常现象','9787530957554_small.jpg','9787530957554_big.jpg','理查德·怀斯曼，路本福 著','天津教育出版社','2009-07-01 00:00:00','9787530957554','《怪诞心理学：揭秘不可思议的日常现象》是作者和诸多卓越心理学家研究成果的结晶。它为读者打开了一扇重新认识自己和他人的窗户，书中的实验让我们意识到：其实人类的行为并不像我们想象的那么难以预测。这些独具匠心的实验读来一定会让你回味无穷、拍案叫绝，如果将其作为茶余饭后的谈资或用来搞活聚会气氛也会是一个不错的选择。你走路的方式会透露出你的哪些性格？为什么女性的征婚广告最好由男性来写？全世界最好笑的笑话是什么？为什么有些人竟然会回忆起不曾发生过的事情？为什么女性驾驶员更容易超速行驶？夏天出生的人和冬天出生的人谁的运气更好一些？真心的笑容和虚假的笑容都打着哪些难以掩饰的烙印？……',25.0000,41)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10008492',59,'哈利.波特与混血王子','9787020053230_small.jpg','9787020053230_big.jpg','（英）罗琳（Rowling，J.K） 著 马爱农，马爱新 译','人民文学出版社','2005-10-01 00:00:00','9787020053230','<p>　　《哈利·波特与“混血王子”（简体中文版）》由J·K·罗琳创作，讲述仲夏的一个夜晚，反常的浓雾笼罩在窗户玻璃上，哈利·波特在女贞路4号德思礼家自己的卧室里紧张地等待着邓布利多教授的来访。哈利不太确定邓布利多是否真的会来德思礼家。邓布利多为什么现在要来看他呢？几个星期之后，他就要返校，邓布利多为什么不能等一等呢？哈利六年级的学习似乎就这样出人意料地提前开始了……<br/>
　　而更加出人意料的事情还在接踵而至：邓布利多终于让斯内普教授如愿以偿，任命其担任黑魔法防御术课教师……哈利从教室的储藏柜里翻到一本魔药课本，它的前任主人是“混血王子”，从此哈利在神秘“王子”的帮助下成为“魔药奇才”……邓布利多开始了给哈利的单独授课，但奇怪的是，邓布利多却经常离开学校外出……在邓布利多的课上，哈利经历了几段关于少年伏地魔的惊心动魄的记忆，揭示了伏地魔不同寻常的身世之谜……<br/>
　　哈利隐隐觉得这一学期期内普教授和马尔福的关系发生了微妙变化，其中似乎别有一番隐情，而马尔福更是行踪诡秘……哈利试图揭穿马尔福的阴谋，但始终没有成功，直到马尔福把食死徒引进学校，斯内普对邓布利多校长举起了魔杖……<br/>
　　哈利·波特在魔法世界的历险高潮再次掀起……</p>',58.0000,55)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10008706',59,'哈利.波特与死亡圣器','9787020063659_small.jpg','9787020063659_big.jpg','（英）罗琳（Rowling，J.K.） 著 马爱农，马爱新 译','人民文学出版社','2007-10-01 00:00:00','9787020063659','还有四天，哈利就要迎来自己十七岁的生日，成为一名真正的魔法师。然而，他不得不提前离开女贞路4号，永远离开这个他曾经生活过十六年的地方。<br/>
　　凤凰社的成员精心谋划了秘密转移哈利的计划，以防哈利遭到伏地魔及其追随者食死徒的袭击。然而，可怕的意外还是发生了……<br>
　　与此同时，卷土重来的伏地魔已经染指霍格沃茨魔法学校，占领了魔法部，控制了半个魔法界，形势急转直下……<br/>
　　哈利在罗恩、赫敏的陪伴下，不得不逃亡在外，隐形遁迹。为了完成校长邓布利多的遗命，一直在暗中寻机销毁伏地魔魂器的哈利，意外地获悉如果他们能够拥有传说中的三件死亡圣器，伏地魔将必死无疑。但是，伏地魔也早已开始了寻找死亡圣器的行动，并派出众多食死徒，布下天罗地网追捕哈利……<br/>
　　哈利与伏地魔在魔法学校的禁林中遭遇了，哈利倒在伏地魔抢先到手的一件致命的圣器之下……<br/>
　　然而，伏地魔未能如愿以偿，死亡圣器不可能战胜纯正的灵魂。哈利赢得了这场殊死较量的最终胜利……',66.0000,59)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10009195',59,'魔鬼积木白垩纪往事','9787535438362_small.jpg','9787535438362_big.jpg','刘慈欣 著','长江文艺出版社','2008-11-01 00:00:00','9787535438362','《魔鬼积木白垩纪往事》为刘慈欣两部优秀长篇科幻小说《魔鬼积木》《白垩纪往事》的合集。《魔鬼积木》基因研究的成果被将军利用，一批批人兽基因组合的“魔鬼军人”降临于世……。正当兽面人身的士兵横行无阻的时候，长着天使翅膀的“飞人战士”却从天而降……。<br/>　　《魔鬼积木白垩纪往事》又名《当恐龙遇上蚂蚁》如果就这么正常发展下去，恐龙和蚂蚁的社会大概都不可能继续进化了。这两个物种刚刚燃起的智慧之火将在时间的长河中渐渐熄灭，就如同在它们之前和之后的无数物种曾经有过的那样，只是地球历史的漫漫长夜中闪现的两点转瞬即逝的萤光。',24.0000,52)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10650103',50,'金陵十三钗：严歌苓最新长篇小说','9787561352564_small.jpg','9787561352564_big.jpg','严歌苓 著','陕西师范大学出版社','2011-05-01 00:00:00','9787561352564','《金陵十三钗》不是一个有关“特殊女人”卖淫的故事，它发生的背景是在1937年12月12日，地点是在南京，这一天守城的中国军队全线崩溃和撤退，第二天，也就是1937年的12月13日，像野兽一样的日军就占领了南京，从此开始了没日没夜的对中国人民的大屠杀、大奸淫、大劫掠，惨绝人寰的一幕幕从此深刻地烙印在中国人乃至爱好和平的世界人民的心里。作者借姨妈书娟的眼睛感受了这场屠杀、这场浩劫血腥残暴黑暗的事实，讲述了一个“特殊女人”的故事，也就是《金陵十三钗》那令人心酸、可憎可悯而又令人感动的英勇献身的故事。<br/>',29.8000,66)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10051588',201,'双响炮（套装1-5共5册）','9787802441354_small.jpg','9787802441354_big.jpg','朱德庸 著','现代出版社','2009-01-01 00:00:00','9787802441354','《双响炮（套装1-5共5册）（青春酷活版）》讲述从前从前，有一个男人和一个女人，他们有一个儿子，还有一个岳母，有一天，这个岳母来了就没有走。这些人，老公、老婆、丈母娘与女婿之间一场又一场的相互嫌恶与冷嘲热讽，又让他们又发现彼此的不可或缺。在双响炮中，我们或许会找到自己父母的影子，或许会找到自己家庭的影子。双响炮小开本，让青少年读者，通过自己父母与双响炮中令人喷饭的故事，引起共鸣，发现双响炮就在自己身边。',50.0000,56)
INSERT [BookInfo] ([BookID],[CategoryID],[BookName],[BookSmallImageName],[BookBigImage],[BookAuthor],[BookPublisher],[BookPublishDate],[BookISBN],[BookDescription],[BookMarketPrice],[BookDiscount]) VALUES ( '10694813',251,'说服力','9787530964538_small.jpg','9787530964538_big.jpg','（美）罗伯特·西奥迪尼 等 著 冯银银 译','天津教育出版社','2011-06-01 00:00:00','9787530964538','百万畅销书《影响力》作者罗伯特·西奥迪尼最新力作，专为商务人士打造！小小的改变能让您的说服力大大不同。<br/>
　　什么文具能让您的说服力异常有效？<br/>
　　什么单词能让您的说服力提高一半？<br/>
　　为什么声称自己喜欢宝马的人，会最终选择了奔驰？<br/>
　　为什么有那么多牙医都叫"丹尼斯"？<br/>
　　您当然想让同事更多地认同自己，想让孩子听话地去做作业，想让邻居听从劝说，不再乱扔垃圾。<br/>
　　每天，我们都要面对说服他人的挑战。怎样才能让别人听从我们的意见？<br/>
　　《影响力》作者罗伯特·西奥迪尼，延续社会心理学领域六大原则，联手影响力研究领域三大巨头，告诉你说服力里不能说的秘密。',32.0000,45)

--插入数据到OrderStatus
SET IDENTITY_INSERT [OrderStatus] ON

INSERT [OrderStatus] ([StatusID],[StatusName]) VALUES ( 1,'等待付款')
INSERT [OrderStatus] ([StatusID],[StatusName]) VALUES ( 2,'正在配货')
INSERT [OrderStatus] ([StatusID],[StatusName]) VALUES ( 3,'正在发送')
INSERT [OrderStatus] ([StatusID],[StatusName]) VALUES ( 4,'交易完成')

SET IDENTITY_INSERT [OrderStatus] OFF

--插入数据到OrderInfo

INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1106296823',4,14,'2011-06-29 20:43:31',158.6500,166.3500)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '912136823',4,23,'2009-12-13 20:43:31',38.1760,22.6240)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256827',4,17,'2011-08-25 09:43:31',44.7000,44.7000)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256829',2,19,'2011-08-25 09:43:31',70.8400,53.1600)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256825',2,15,'2011-08-25 09:43:31',9.9540,5.8460)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1105181979',4,20,'2011-05-18 13:43:31',15.9600,12.0400)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1011136823',4,22,'2010-11-13 20:43:31',158.6500,166.3500)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256823',2,13,'2011-08-25 11:43:31',17.2960,19.5040)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108234932',3,15,'2011-08-23 10:43:31',97.3200,78.6800)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256828',1,18,'2011-08-25 09:43:31',10.2500,14.7500)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256826',3,16,'2011-08-25 09:43:31',44.7000,44.7000)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1107296823',4,16,'2011-07-29 20:43:31',158.6500,166.3500)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1007231331',4,14,'2010-07-23 14:23:31',168.5680,159.0320)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1012136823',4,13,'2010-12-13 20:43:31',58.7100,36.2900)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1108256824',1,13,'2011-08-25 11:43:31',19.6000,15.4000)
INSERT [OrderInfo] ([OrderNo],[StatusID],[AddressID],[OrderDate],[OrderAmount],[DiscountAmount]) VALUES ( '1101281479',4,19,'2011-01-28 09:23:31',42.8700,21.9300)

--插入数据到OrderItem

INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1007231331','10094613',1,29.8000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1007231331','10641875',1,268.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1007231331','10650103',1,29.8000,66)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1012136823','10490039',1,36.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1012136823','10663697',1,59.0000,69)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1101281479','10691806',1,25.0000,68)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1101281479','10711003',1,39.8000,65)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1105181979','10581110',1,28.0000,57)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1106296823','10009504',1,25.0000,41)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1106296823','10641875',1,268.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1106296823','10694813',1,32.0000,45)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1107296823','10009504',1,25.0000,41)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1107296823','10641875',1,268.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1107296823','10694813',1,32.0000,45)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108234932','10008492',1,58.0000,55)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108234932','10008706',1,66.0000,59)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108234932','10009195',1,24.0000,52)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108234932','10020011',1,28.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256823','10791295',1,36.8000,47)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256824','10662689',1,35.0000,56)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256825','10792498',1,15.8000,63)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256826','10094613',3,29.8000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256827','10020011',2,28.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256828','10009504',1,25.0000,41)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256829','10008492',1,58.0000,55)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '1108256829','10008706',1,66.0000,59)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '912136823','10009504',1,25.0000,41)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '912136823','10030805',1,32.0000,68)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '912136823','10581110',1,28.8000,57)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '912136823','10641875',1,268.0000,50)
INSERT [OrderItem] ([OrderNo],[BookID],[Count],[Price],[Discount]) VALUES ( '912136823','10694813',1,32.0000,45)

