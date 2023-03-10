USE [Session1_13]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 03.03.2023 0:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogsUsers]    Script Date: 03.03.2023 0:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogsUsers](
	[ID_Log] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[DateTime_Login] [datetime] NOT NULL,
	[DateTime_Exit] [datetime] NULL,
	[WasCrashAndReason] [varchar](100) NULL,
 CONSTRAINT [PK_LogsUsers] PRIMARY KEY CLUSTERED 
(
	[ID_Log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offices]    Script Date: 03.03.2023 0:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offices](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Contact] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Office] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03.03.2023 0:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03.03.2023 0:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[OfficeID] [int] NULL,
	[Birthdate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([ID], [Name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (2, N'Albania')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (3, N'Algeria')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (4, N'Andorra')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (5, N'Angola')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (6, N'Antigua & Deps')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (7, N'Argentina')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (8, N'Armenia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (9, N'Australia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (10, N'Austria')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (11, N'Azerbaijan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (12, N'Bahamas')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (13, N'Bahrain')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (14, N'Bangladesh')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (15, N'Barbados')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (16, N'Belarus')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (17, N'Belgium')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (18, N'Belize')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (19, N'Benin')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (20, N'Bhutan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (21, N'Bolivia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (22, N'Bosnia Herzegovina')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (23, N'Botswana')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (24, N'Brazil')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (25, N'Brunei')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (26, N'Bulgaria')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (27, N'Burkina')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (28, N'Burundi')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (29, N'Cambodia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (30, N'Cameroon')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (31, N'Canada')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (32, N'Cape Verde')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (33, N'Central African Rep')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (34, N'Chad')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (35, N'Chile')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (36, N'China')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (37, N'Colombia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (38, N'Comoros')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (39, N'Congo')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (40, N'Congo {Democratic Rep}')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (41, N'Costa Rica')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (42, N'Croatia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (43, N'Cuba')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (44, N'Cyprus')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (45, N'Czech Republic')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (46, N'Denmark')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (47, N'Djibouti')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (48, N'Dominica')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (49, N'Dominican Republic')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (50, N'East Timor')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (51, N'Ecuador')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (52, N'Egypt')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (53, N'El Salvador')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (54, N'Equatorial Guinea')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (55, N'Eritrea')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (56, N'Estonia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (57, N'Ethiopia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (58, N'Fiji')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (59, N'Finland')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (60, N'France')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (61, N'Gabon')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (62, N'Gambia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (63, N'Georgia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (64, N'Germany')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (65, N'Ghana')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (66, N'Greece')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (67, N'Grenada')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (68, N'Guatemala')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (69, N'Guinea')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (70, N'Guinea-Bissau')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (71, N'Guyana')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (72, N'Haiti')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (73, N'Honduras')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (74, N'Hungary')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (75, N'Iceland')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (76, N'India')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (77, N'Indonesia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (78, N'Iran')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (79, N'Iraq')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (80, N'Ireland {Republic}')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (81, N'Israel')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (82, N'Italy')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (83, N'Ivory Coast')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (84, N'Jamaica')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (85, N'Japan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (86, N'Jordan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (87, N'Kazakhstan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (88, N'Kenya')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (89, N'Kiribati')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (90, N'Korea North')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (91, N'Korea South')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (92, N'Kosovo')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (93, N'Kuwait')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (94, N'Kyrgyzstan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (95, N'Laos')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (96, N'Latvia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (97, N'Lebanon')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (98, N'Lesotho')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (99, N'Liberia')
GO
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (100, N'Libya')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (101, N'Liechtenstein')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (102, N'Lithuania')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (103, N'Luxembourg')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (104, N'Macedonia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (105, N'Madagascar')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (106, N'Malawi')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (107, N'Malaysia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (108, N'Maldives')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (109, N'Mali')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (110, N'Malta')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (111, N'Marshall Islands')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (112, N'Mauritania')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (113, N'Mauritius')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (114, N'Mexico')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (115, N'Micronesia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (116, N'Moldova')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (117, N'Monaco')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (118, N'Mongolia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (119, N'Montenegro')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (120, N'Morocco')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (121, N'Mozambique')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (122, N'Myanmar, {Burma}')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (123, N'Namibia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (124, N'Nauru')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (125, N'Nepal')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (126, N'Netherlands')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (127, N'New Zealand')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (128, N'Nicaragua')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (129, N'Niger')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (130, N'Nigeria')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (131, N'Norway')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (132, N'Oman')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (133, N'Pakistan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (134, N'Palau')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (135, N'Panama')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (136, N'Papua New Guinea')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (137, N'Paraguay')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (138, N'Peru')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (139, N'Philippines')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (140, N'Poland')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (141, N'Portugal')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (142, N'Qatar')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (143, N'Romania')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (144, N'Russian Federation')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (145, N'Rwanda')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (146, N'St Kitts & Nevis')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (147, N'St Lucia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (148, N'Saint Vincent & the Grenadines')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (149, N'Samoa')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (150, N'San Marino')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (151, N'Sao Tome & Principe')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (152, N'Saudi Arabia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (153, N'Senegal')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (154, N'Serbia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (155, N'Seychelles')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (156, N'Sierra Leone')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (157, N'Singapore')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (158, N'Slovakia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (159, N'Slovenia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (160, N'Solomon Islands')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (161, N'Somalia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (162, N'South Africa')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (163, N'South Sudan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (164, N'Spain')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (165, N'Sri Lanka')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (166, N'Sudan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (167, N'Suriname')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (168, N'Swaziland')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (169, N'Sweden')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (170, N'Switzerland')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (171, N'Syria')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (172, N'Taiwan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (173, N'Tajikistan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (174, N'Tanzania')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (175, N'Thailand')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (176, N'Togo')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (177, N'Tonga')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (178, N'Trinidad & Tobago')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (179, N'Tunisia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (180, N'Turkey')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (181, N'Turkmenistan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (182, N'Tuvalu')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (183, N'Uganda')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (184, N'Ukraine')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (185, N'United Arab Emirates')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (186, N'United Kingdom')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (187, N'United States')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (188, N'Uruguay')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (189, N'Uzbekistan')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (190, N'Vanuatu')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (191, N'Vatican City')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (192, N'Venezuela')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (193, N'Vietnam')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (194, N'Yemen')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (195, N'Zambia')
INSERT [dbo].[Countries] ([ID], [Name]) VALUES (196, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[LogsUsers] ON 

INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (2, 1, CAST(N'2023-03-02T18:06:15.677' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (3, 1, CAST(N'2023-03-02T18:07:00.217' AS DateTime), CAST(N'2023-03-02T18:07:02.520' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (4, 1, CAST(N'2023-03-02T18:07:17.173' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (5, 1, CAST(N'2023-03-02T18:10:07.023' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (6, 1, CAST(N'2023-03-02T18:10:52.763' AS DateTime), CAST(N'2023-03-02T18:10:55.923' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (7, 1, CAST(N'2023-03-02T18:10:56.863' AS DateTime), CAST(N'2023-03-02T18:11:10.583' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (8, 1, CAST(N'2023-03-02T18:13:17.277' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (9, 1, CAST(N'2023-03-02T18:18:07.227' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (10, 1, CAST(N'2023-03-02T18:20:28.113' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (11, 1, CAST(N'2023-03-02T18:20:58.947' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (12, 1, CAST(N'2023-03-02T18:58:04.563' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (13, 1, CAST(N'2023-03-02T19:19:15.733' AS DateTime), CAST(N'2023-03-02T19:20:03.117' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (14, 1, CAST(N'2023-03-02T19:20:04.240' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (15, 1, CAST(N'2023-03-02T19:20:19.687' AS DateTime), CAST(N'2023-03-02T19:20:54.757' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (16, 1, CAST(N'2023-03-02T19:20:55.940' AS DateTime), CAST(N'2023-03-02T19:21:33.943' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (17, 1, CAST(N'2023-03-02T19:21:34.890' AS DateTime), CAST(N'2023-03-02T19:21:42.497' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (18, 1, CAST(N'2023-03-02T19:21:43.400' AS DateTime), CAST(N'2023-03-02T19:22:06.997' AS DateTime), N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (19, 1, CAST(N'2023-03-02T19:22:07.960' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (20, 1, CAST(N'2023-03-02T19:22:37.563' AS DateTime), CAST(N'2023-03-02T19:23:21.777' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (21, 1, CAST(N'2023-03-02T19:23:22.497' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (22, 1, CAST(N'2023-03-02T19:28:40.410' AS DateTime), NULL, N'SystemCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (23, 1, CAST(N'2023-03-02T19:32:41.543' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (24, 1, CAST(N'2023-03-02T19:33:21.780' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (25, 1, CAST(N'2023-03-02T21:03:28.023' AS DateTime), CAST(N'2023-03-02T21:04:10.930' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (26, 1, CAST(N'2023-03-02T21:04:11.720' AS DateTime), CAST(N'2023-03-02T21:04:47.420' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (27, 1, CAST(N'2023-03-02T21:04:49.103' AS DateTime), CAST(N'2023-03-02T21:07:34.383' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (28, 1, CAST(N'2023-03-02T21:07:35.623' AS DateTime), CAST(N'2023-03-02T21:07:46.053' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (29, 1, CAST(N'2023-03-02T21:07:46.990' AS DateTime), CAST(N'2023-03-02T21:08:01.127' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (30, 1, CAST(N'2023-03-02T21:08:01.927' AS DateTime), CAST(N'2023-03-02T21:08:21.213' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (31, 1, CAST(N'2023-03-02T21:08:22.040' AS DateTime), CAST(N'2023-03-02T21:09:37.597' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (32, 1, CAST(N'2023-03-02T21:09:38.490' AS DateTime), CAST(N'2023-03-02T21:09:46.900' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (33, 1, CAST(N'2023-03-02T21:09:47.627' AS DateTime), CAST(N'2023-03-02T21:09:53.117' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (34, 1, CAST(N'2023-03-02T21:09:54.067' AS DateTime), CAST(N'2023-03-02T21:10:16.250' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (35, 1, CAST(N'2023-03-02T21:10:16.767' AS DateTime), CAST(N'2023-03-02T21:10:24.933' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (36, 1, CAST(N'2023-03-02T21:10:25.653' AS DateTime), CAST(N'2023-03-02T21:10:55.620' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (37, 1, CAST(N'2023-03-02T21:10:56.593' AS DateTime), CAST(N'2023-03-02T21:11:58.183' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (38, 1, CAST(N'2023-03-02T21:11:58.920' AS DateTime), CAST(N'2023-03-02T21:12:05.133' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (39, 1, CAST(N'2023-03-02T21:12:05.890' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (40, 1, CAST(N'2023-03-02T21:12:23.790' AS DateTime), CAST(N'2023-03-02T21:13:15.037' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (41, 1, CAST(N'2023-03-02T21:13:15.960' AS DateTime), CAST(N'2023-03-02T21:13:41.147' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (42, 1, CAST(N'2023-03-02T21:13:42.173' AS DateTime), CAST(N'2023-03-02T21:13:44.987' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (43, 1, CAST(N'2023-03-02T21:13:45.740' AS DateTime), CAST(N'2023-03-02T21:13:51.690' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (44, 1, CAST(N'2023-03-02T21:13:52.387' AS DateTime), CAST(N'2023-03-02T21:14:02.200' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (45, 1, CAST(N'2023-03-02T21:14:02.827' AS DateTime), CAST(N'2023-03-02T21:14:26.260' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (46, 1, CAST(N'2023-03-02T21:14:27.187' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (47, 1, CAST(N'2023-03-02T21:19:28.997' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (48, 1, CAST(N'2023-03-02T21:24:09.943' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (49, 1, CAST(N'2023-03-02T21:27:09.383' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (50, 1, CAST(N'2023-03-02T21:40:36.463' AS DateTime), CAST(N'2023-03-02T21:47:07.897' AS DateTime), N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (51, 1, CAST(N'2023-03-02T21:52:41.110' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (52, 1, CAST(N'2023-03-02T21:57:33.200' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (53, 1, CAST(N'2023-03-02T21:59:03.573' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (54, 1, CAST(N'2023-03-02T22:02:41.953' AS DateTime), NULL, N'SoftCrash.')
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (55, 1, CAST(N'2023-03-02T23:06:41.090' AS DateTime), CAST(N'2023-03-02T23:07:58.287' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (56, 1, CAST(N'2023-03-02T23:07:59.227' AS DateTime), CAST(N'2023-03-02T23:08:28.527' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (57, 1, CAST(N'2023-03-02T23:08:37.913' AS DateTime), CAST(N'2023-03-02T23:10:16.293' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (58, 1, CAST(N'2023-03-02T23:10:17.380' AS DateTime), CAST(N'2023-03-02T23:10:34.550' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (59, 1, CAST(N'2023-03-02T23:10:35.513' AS DateTime), CAST(N'2023-03-02T23:11:01.130' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (60, 1, CAST(N'2023-03-02T23:11:01.827' AS DateTime), CAST(N'2023-03-02T23:11:21.693' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (61, 1, CAST(N'2023-03-02T23:11:22.667' AS DateTime), CAST(N'2023-03-02T23:13:02.940' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (62, 1, CAST(N'2023-03-02T23:13:24.810' AS DateTime), CAST(N'2023-03-02T23:13:56.797' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (63, 1, CAST(N'2023-03-02T23:14:22.710' AS DateTime), CAST(N'2023-03-02T23:15:51.227' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (64, 1, CAST(N'2023-03-02T23:15:52.193' AS DateTime), CAST(N'2023-03-02T23:20:13.603' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (65, 1, CAST(N'2023-03-02T23:20:14.610' AS DateTime), CAST(N'2023-03-02T23:20:44.397' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (66, 1, CAST(N'2023-03-02T23:20:45.387' AS DateTime), CAST(N'2023-03-02T23:20:51.793' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (67, 1, CAST(N'2023-03-02T23:20:52.523' AS DateTime), CAST(N'2023-03-02T23:21:08.890' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (68, 1, CAST(N'2023-03-02T23:21:09.840' AS DateTime), CAST(N'2023-03-02T23:26:45.157' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (69, 1, CAST(N'2023-03-02T23:26:46.023' AS DateTime), CAST(N'2023-03-02T23:27:01.930' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (70, 1, CAST(N'2023-03-02T23:27:02.803' AS DateTime), CAST(N'2023-03-02T23:35:30.517' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (71, 1, CAST(N'2023-03-02T23:35:31.400' AS DateTime), CAST(N'2023-03-02T23:35:52.783' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (72, 1, CAST(N'2023-03-02T23:35:53.550' AS DateTime), CAST(N'2023-03-02T23:41:42.370' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (73, 1, CAST(N'2023-03-02T23:41:43.390' AS DateTime), CAST(N'2023-03-02T23:42:24.473' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (74, 1, CAST(N'2023-03-02T23:42:25.380' AS DateTime), CAST(N'2023-03-02T23:42:49.887' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (75, 1, CAST(N'2023-03-02T23:42:50.807' AS DateTime), CAST(N'2023-03-02T23:43:52.913' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (76, 1, CAST(N'2023-03-02T23:20:53.720' AS DateTime), CAST(N'2023-03-02T23:40:56.923' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (79, 1, CAST(N'2022-01-20T23:10:53.720' AS DateTime), CAST(N'2022-01-20T23:50:53.720' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (80, 1, CAST(N'2023-03-02T23:45:14.907' AS DateTime), CAST(N'2023-03-02T23:55:36.803' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (81, 1, CAST(N'2023-03-02T23:45:37.740' AS DateTime), CAST(N'2023-03-02T23:46:32.713' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (82, 1, CAST(N'2023-03-02T23:46:33.420' AS DateTime), CAST(N'2023-03-02T23:47:38.327' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (83, 1, CAST(N'2023-03-02T23:47:39.077' AS DateTime), CAST(N'2023-03-02T23:48:27.323' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (84, 1, CAST(N'2023-03-02T23:48:28.203' AS DateTime), CAST(N'2023-03-02T23:48:49.300' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (85, 1, CAST(N'2023-03-02T23:48:50.177' AS DateTime), CAST(N'2023-03-02T23:49:52.183' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (86, 1, CAST(N'2023-03-02T23:49:52.893' AS DateTime), CAST(N'2023-03-02T23:50:58.117' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (87, 1, CAST(N'2023-03-02T23:51:10.493' AS DateTime), CAST(N'2023-03-02T23:51:57.977' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (88, 1, CAST(N'2023-03-02T23:52:28.417' AS DateTime), CAST(N'2023-03-02T23:52:39.933' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (89, 1, CAST(N'2023-03-02T23:53:00.837' AS DateTime), CAST(N'2023-03-02T23:53:06.590' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (90, 1, CAST(N'2023-03-02T23:53:27.270' AS DateTime), CAST(N'2023-03-02T23:53:39.447' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (91, 1, CAST(N'2023-03-02T23:53:59.557' AS DateTime), CAST(N'2023-03-02T23:54:06.643' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (92, 1, CAST(N'2023-03-02T23:54:58.923' AS DateTime), CAST(N'2023-03-02T23:55:02.383' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (93, 1, CAST(N'2023-03-02T23:55:44.677' AS DateTime), CAST(N'2023-03-02T23:55:50.397' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (94, 1, CAST(N'2023-03-02T23:57:25.367' AS DateTime), CAST(N'2023-03-02T23:57:27.303' AS DateTime), NULL)
INSERT [dbo].[LogsUsers] ([ID_Log], [User_ID], [DateTime_Login], [DateTime_Exit], [WasCrashAndReason]) VALUES (95, 1, CAST(N'2023-03-02T23:57:29.487' AS DateTime), CAST(N'2023-03-02T23:57:32.690' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[LogsUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Offices] ON 

INSERT [dbo].[Offices] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (1, 185, N'Abu dhabi', N'638-757-8582
', N'MIchael Malki')
INSERT [dbo].[Offices] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (3, 52, N'Cairo', N'252-224-8525', N'David Johns')
INSERT [dbo].[Offices] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (4, 13, N'Bahrain', N'542-227-5825', N'Katie Ballmer')
INSERT [dbo].[Offices] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (5, 142, N'Doha', N'758-278-9597', N'Ariel Levy')
INSERT [dbo].[Offices] ([ID], [CountryID], [Title], [Phone], [Contact]) VALUES (6, 152, N'Riyadh', N'285-285-1474', N'Andrew Hobart')
SET IDENTITY_INSERT [dbo].[Offices] OFF
GO
INSERT [dbo].[Roles] ([ID], [Title]) VALUES (1, N'Administrator')
INSERT [dbo].[Roles] ([ID], [Title]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (1, 2, N'j.doe@amonic.com', N'1234', N'John
', N'Doe
', 1, CAST(N'1983-01-13' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (2, 2, N'k.omar@amonic.com', N'4258', N'Karim', N'Omar', 1, CAST(N'1980-03-19' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (3, 2, N'h.saeed@amonic.com', N'2020', N'Hannan', N'Saeed', 3, CAST(N'1989-12-22' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (4, 2, N'a.hobart@amonic.com', N'6996', N'Andrew', N'Hobart', 6, CAST(N'1990-01-30' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (5, 2, N'k.anderson@amonic.com', N'4570', N'Katrin', N'Anderson', 5, CAST(N'1992-10-11' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (6, 2, N'h.wyrick@amonic.com', N'1199', N'Hava', N'Wyrick', 1, CAST(N'1988-08-08' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (7, 2, N'marie.horn@amonic.com', N'55555', N'Marie', N'Horn', 4, CAST(N'1981-06-04' AS Date), 1)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (8, 2, N'm.osteen@amonic.com', N'9800', N'Milagros', N'Osteen', 1, CAST(N'1991-03-02' AS Date), 0)
INSERT [dbo].[Users] ([ID], [RoleID], [Email], [Password], [FirstName], [LastName], [OfficeID], [Birthdate], [Active]) VALUES (9, 1, N'test@mail.ru', N'1234', N'Aleksey', N'Opeykin', 1, CAST(N'2003-02-08' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[LogsUsers]  WITH CHECK ADD  CONSTRAINT [FK_LogsUsers_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LogsUsers] CHECK CONSTRAINT [FK_LogsUsers_Users]
GO
ALTER TABLE [dbo].[Offices]  WITH CHECK ADD  CONSTRAINT [FK_Office_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Offices] CHECK CONSTRAINT [FK_Office_Country]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Offices] FOREIGN KEY([OfficeID])
REFERENCES [dbo].[Offices] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Offices]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
