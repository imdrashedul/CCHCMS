USE [CCHCMS_DB]
GO
/****** Object:  Table [dbo].[AccessRequests]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRequests](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_AccessRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[PatientId] [bigint] NULL,
	[AppointDate] [datetime] NULL,
	[RequesteDate] [datetime] NOT NULL,
	[RequestedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlockedUsers]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlockedUsers](
	[UserId] [bigint] NOT NULL,
	[Expire] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DrugId] [bigint] NOT NULL,
	[Pattern] [text] NOT NULL,
	[Duration] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [text] NOT NULL,
 CONSTRAINT [PK_Diagnosis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorPatients]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorPatients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[HCardId] [bigint] NOT NULL,
 CONSTRAINT [PK_DoctorPatients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorSchedules]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSchedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[Day] [varchar](155) NOT NULL,
	[TimeTo] [varchar](20) NOT NULL,
	[TimeFrom] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DoctorSchedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoctorsCompounders]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorsCompounders](
	[DoctorId] [bigint] NOT NULL,
	[CompounderId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [text] NOT NULL,
	[PharmaId] [int] NOT NULL,
	[Type] [varchar](15) NULL,
 CONSTRAINT [PK_Drugs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthCard]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthCard](
	[Id] [bigint] IDENTITY(100000,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_HealthCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HospitalDoctors]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HospitalDoctors](
	[HospitalId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmaceuticals]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmaceuticals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Pharmaceuticals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[HCardId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[Issued] [datetime] NOT NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrescriptionCourses]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrescriptionCourses](
	[PrescripId] [bigint] NOT NULL,
	[CourseId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrescriptionDiagnosis]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrescriptionDiagnosis](
	[PrescripId] [bigint] NOT NULL,
	[DiagnosisId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Slug] [varchar](155) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialist]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialist](
	[DoctorId] [bigint] NOT NULL,
	[SpecialId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialty]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [text] NOT NULL,
 CONSTRAINT [PK_Specialty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Verified] [bit] NOT NULL,
	[Registered] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersInformations]    Script Date: 11/23/2020 2:40:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInformations](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[Bind] [varchar](255) NOT NULL,
	[Value] [text] NOT NULL,
 CONSTRAINT [PK_UsersInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_Duration]  DEFAULT ((1)) FOR [Duration]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_users_verified]  DEFAULT ((0)) FOR [Verified]
GO
ALTER TABLE [dbo].[AccessRequests]  WITH CHECK ADD  CONSTRAINT [FK_AccessRequests_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AccessRequests] CHECK CONSTRAINT [FK_AccessRequests_Users]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_DoctorPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[DoctorPatients] ([Id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_DoctorPatients]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Users]
GO
ALTER TABLE [dbo].[BlockedUsers]  WITH CHECK ADD  CONSTRAINT [FK_BlockedUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[BlockedUsers] CHECK CONSTRAINT [FK_BlockedUsers_Users]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Drugs] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drugs] ([Id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Drugs]
GO
ALTER TABLE [dbo].[DoctorPatients]  WITH CHECK ADD  CONSTRAINT [FK_DoctorPatients_HealthCard] FOREIGN KEY([HCardId])
REFERENCES [dbo].[HealthCard] ([Id])
GO
ALTER TABLE [dbo].[DoctorPatients] CHECK CONSTRAINT [FK_DoctorPatients_HealthCard]
GO
ALTER TABLE [dbo].[DoctorPatients]  WITH CHECK ADD  CONSTRAINT [FK_DoctorPatients_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DoctorPatients] CHECK CONSTRAINT [FK_DoctorPatients_Users]
GO
ALTER TABLE [dbo].[DoctorSchedules]  WITH CHECK ADD  CONSTRAINT [FK_DoctorSchedules_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DoctorSchedules] CHECK CONSTRAINT [FK_DoctorSchedules_Users]
GO
ALTER TABLE [dbo].[DoctorsCompounders]  WITH CHECK ADD  CONSTRAINT [FK_DoctorsCompounders_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DoctorsCompounders] CHECK CONSTRAINT [FK_DoctorsCompounders_Users]
GO
ALTER TABLE [dbo].[DoctorsCompounders]  WITH CHECK ADD  CONSTRAINT [FK_DoctorsCompounders_Users-Compunder] FOREIGN KEY([CompounderId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DoctorsCompounders] CHECK CONSTRAINT [FK_DoctorsCompounders_Users-Compunder]
GO
ALTER TABLE [dbo].[Drugs]  WITH CHECK ADD  CONSTRAINT [FK_Drugs_Pharmaceuticals] FOREIGN KEY([PharmaId])
REFERENCES [dbo].[Pharmaceuticals] ([Id])
GO
ALTER TABLE [dbo].[Drugs] CHECK CONSTRAINT [FK_Drugs_Pharmaceuticals]
GO
ALTER TABLE [dbo].[HealthCard]  WITH CHECK ADD  CONSTRAINT [FK_HealthCard_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[HealthCard] CHECK CONSTRAINT [FK_HealthCard_Users]
GO
ALTER TABLE [dbo].[HospitalDoctors]  WITH CHECK ADD  CONSTRAINT [FK_HospitalDoctors_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[HospitalDoctors] CHECK CONSTRAINT [FK_HospitalDoctors_Users]
GO
ALTER TABLE [dbo].[HospitalDoctors]  WITH CHECK ADD  CONSTRAINT [FK_HospitalDoctors_Users1] FOREIGN KEY([HospitalId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[HospitalDoctors] CHECK CONSTRAINT [FK_HospitalDoctors_Users1]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_HealthCard] FOREIGN KEY([HCardId])
REFERENCES [dbo].[HealthCard] ([Id])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_HealthCard]
GO
ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Users]
GO
ALTER TABLE [dbo].[PrescriptionCourses]  WITH CHECK ADD  CONSTRAINT [FK_PrescriptionCourses_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionCourses] CHECK CONSTRAINT [FK_PrescriptionCourses_Courses]
GO
ALTER TABLE [dbo].[PrescriptionCourses]  WITH CHECK ADD  CONSTRAINT [FK_PrescriptionCourses_Prescription] FOREIGN KEY([PrescripId])
REFERENCES [dbo].[Prescription] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionCourses] CHECK CONSTRAINT [FK_PrescriptionCourses_Prescription]
GO
ALTER TABLE [dbo].[PrescriptionDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_PrescriptionDiagnosis_Diagnosis] FOREIGN KEY([DiagnosisId])
REFERENCES [dbo].[Diagnosis] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionDiagnosis] CHECK CONSTRAINT [FK_PrescriptionDiagnosis_Diagnosis]
GO
ALTER TABLE [dbo].[PrescriptionDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_PrescriptionDiagnosis_Prescription] FOREIGN KEY([PrescripId])
REFERENCES [dbo].[Prescription] ([Id])
GO
ALTER TABLE [dbo].[PrescriptionDiagnosis] CHECK CONSTRAINT [FK_PrescriptionDiagnosis_Prescription]
GO
ALTER TABLE [dbo].[Specialist]  WITH CHECK ADD  CONSTRAINT [FK_Specialist_Specialty] FOREIGN KEY([SpecialId])
REFERENCES [dbo].[Specialty] ([Id])
GO
ALTER TABLE [dbo].[Specialist] CHECK CONSTRAINT [FK_Specialist_Specialty]
GO
ALTER TABLE [dbo].[Specialist]  WITH CHECK ADD  CONSTRAINT [FK_Specialist_Users] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Specialist] CHECK CONSTRAINT [FK_Specialist_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[UsersInformations]  WITH CHECK ADD  CONSTRAINT [FK_UsersInformations_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersInformations] CHECK CONSTRAINT [FK_UsersInformations_Users]
GO
