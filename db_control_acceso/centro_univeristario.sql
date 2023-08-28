USE [master]
GO
/****** Object:  Database [c_eco_adm]    Script Date: 28/08/2023 10:14:42 a. m. ******/
CREATE DATABASE [c_eco_adm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cc_eco_adm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\cc_eco_adm.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cc_eco_adm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\cc_eco_adm_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [c_eco_adm] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [c_eco_adm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [c_eco_adm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [c_eco_adm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [c_eco_adm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [c_eco_adm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [c_eco_adm] SET ARITHABORT OFF 
GO
ALTER DATABASE [c_eco_adm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [c_eco_adm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [c_eco_adm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [c_eco_adm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [c_eco_adm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [c_eco_adm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [c_eco_adm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [c_eco_adm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [c_eco_adm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [c_eco_adm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [c_eco_adm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [c_eco_adm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [c_eco_adm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [c_eco_adm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [c_eco_adm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [c_eco_adm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [c_eco_adm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [c_eco_adm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [c_eco_adm] SET  MULTI_USER 
GO
ALTER DATABASE [c_eco_adm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [c_eco_adm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [c_eco_adm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [c_eco_adm] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [c_eco_adm] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [c_eco_adm] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [c_eco_adm] SET QUERY_STORE = ON
GO
ALTER DATABASE [c_eco_adm] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [c_eco_adm]
GO
/****** Object:  Table [dbo].[carreras]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carreras](
	[idcarreras] [int] NOT NULL,
	[gradoestudios] [int] NULL,
	[carreras] [varchar](50) NULL,
 CONSTRAINT [PK_carreras] PRIMARY KEY CLUSTERED 
(
	[idcarreras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[centros]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[centros](
	[idcentros] [int] NOT NULL,
	[nombrecentros] [varchar](50) NULL,
	[domicilio] [int] NULL,
	[numero] [int] NULL,
	[col] [int] NULL,
	[cp] [int] NULL,
	[municipio] [int] NULL,
	[estado] [int] NULL,
 CONSTRAINT [PK_centros] PRIMARY KEY CLUSTERED 
(
	[idcentros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[codigop]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[codigop](
	[idcp] [int] NOT NULL,
	[cp] [int] NULL,
 CONSTRAINT [PK_codigop] PRIMARY KEY CLUSTERED 
(
	[idcp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[col]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[col](
	[idcol] [int] NOT NULL,
	[tipo_asen] [varchar](45) NULL,
	[asen] [varchar](45) NULL,
 CONSTRAINT [PK_col] PRIMARY KEY CLUSTERED 
(
	[idcol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[controlacceso]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[controlacceso](
	[idcontrolacceso] [int] NOT NULL,
	[usuario] [int] NULL,
	[operacion] [tinyint] NULL,
	[fechainicio] [datetime2](6) NULL,
	[pinestatus] [int] NULL,
 CONSTRAINT [PK_controlacceso] PRIMARY KEY CLUSTERED 
(
	[idcontrolacceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[domicilio]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domicilio](
	[iddomicilio] [int] NOT NULL,
	[tipo_vialida] [varchar](50) NULL,
	[domicilio] [varchar](50) NULL,
 CONSTRAINT [PK_domicilio] PRIMARY KEY CLUSTERED 
(
	[iddomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados](
	[idestados] [int] NOT NULL,
	[clv_estado] [int] NULL,
	[estado] [varchar](45) NULL,
 CONSTRAINT [PK_estados] PRIMARY KEY CLUSTERED 
(
	[idestados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estatus](
	[idestatus] [int] NOT NULL,
	[nombreestatus] [varchar](45) NULL,
 CONSTRAINT [PK_estatus] PRIMARY KEY CLUSTERED 
(
	[idestatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gradoestudios]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gradoestudios](
	[idgradoestudios] [int] NOT NULL,
	[licenciatura] [varchar](50) NULL,
 CONSTRAINT [PK_gradoestudios] PRIMARY KEY CLUSTERED 
(
	[idgradoestudios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[idmunicipio] [int] NOT NULL,
	[clv_municipio] [int] NULL,
	[municipio] [varchar](45) NULL,
 CONSTRAINT [PK_municipio] PRIMARY KEY CLUSTERED 
(
	[idmunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pinestatus]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pinestatus](
	[idpinestatus] [int] NOT NULL,
	[nombrepin] [varchar](10) NULL,
	[estatus] [int] NULL,
 CONSTRAINT [PK_pinestatus] PRIMARY KEY CLUSTERED 
(
	[idpinestatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[idroles] [int] NOT NULL,
	[nombreroles] [varchar](45) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[idroles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 28/08/2023 10:14:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idusuario] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
	[apellidop] [varchar](45) NULL,
	[apellidom] [varchar](45) NULL,
	[matricula] [varchar](45) NULL,
	[pin] [int] NULL,
	[rol] [int] NULL,
	[estatus] [int] NULL,
	[carreras] [int] NULL,
	[centros] [int] NULL,
	[pinestatus] [int] NULL,
	[contraseña] [int] NULL,
	[fechainicio] [datetime2](6) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (1, 6, N'NA')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (2, 2, N'Administracion de Empresas')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (3, 2, N'Arquitectura')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (4, 2, N'Ciencias de la Comunicacion')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (5, 2, N'Contaduria Publica')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (6, 2, N'Diseño para la Comunicacion Grafica')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (7, 2, N'Mercadotecnia')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (8, 2, N'Negocios Internacionales')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (9, 2, N'Mercadotecnia Estrategica Escolarizada')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (10, 2, N'Mercadotecnia Estrategica Mixta')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (11, 2, N'Gatronomia')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (12, 2, N'Turismo y Gestion de Proyectos')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (13, 2, N'Turismo')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (14, 2, N'Diseño Grafico y Digital')
GO
INSERT [dbo].[carreras] ([idcarreras], [gradoestudios], [carreras]) VALUES (15, 2, N'Administracion Estrategica de los Negocios')
GO
INSERT [dbo].[codigop] ([idcp], [cp]) VALUES (1, 1)
GO
INSERT [dbo].[codigop] ([idcp], [cp]) VALUES (2, 44160)
GO
INSERT [dbo].[col] ([idcol], [tipo_asen], [asen]) VALUES (1, N'NA', N'NA')
GO
INSERT [dbo].[col] ([idcol], [tipo_asen], [asen]) VALUES (2, N'COLONIA', N'AMERICANA')
GO
INSERT [dbo].[domicilio] ([iddomicilio], [tipo_vialida], [domicilio]) VALUES (1, N'NA', N'NA')
GO
INSERT [dbo].[domicilio] ([iddomicilio], [tipo_vialida], [domicilio]) VALUES (2, N'AVENIDA', N'ENRIQUE DIAZ DE LEON')
GO
INSERT [dbo].[estados] ([idestados], [clv_estado], [estado]) VALUES (1, 1, N'NA')
GO
INSERT [dbo].[estados] ([idestados], [clv_estado], [estado]) VALUES (2, 14, N'JALISCO')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (1, N'activo')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (2, N'inactivo')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (3, N'bloqueado')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (4, N'baja')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (5, N'NA')
GO
INSERT [dbo].[estatus] ([idestatus], [nombreestatus]) VALUES (6, N'prorroga')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (1, N'Bachillerato')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (2, N'Licenciatura')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (3, N'Maestria')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (4, N'Doctorado')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (5, N'Diplomado')
GO
INSERT [dbo].[gradoestudios] ([idgradoestudios], [licenciatura]) VALUES (6, N'NA')
GO
INSERT [dbo].[municipio] ([idmunicipio], [clv_municipio], [municipio]) VALUES (1, 1, N'NA')
GO
INSERT [dbo].[municipio] ([idmunicipio], [clv_municipio], [municipio]) VALUES (2, 39, N'GUADALAJARA')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (1, N'alumno')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (2, N'profesor')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (3, N'seguridad')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (4, N'egresado')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (5, N'administrativo')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (6, N'manteniminto')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (7, N'itt')
GO
INSERT [dbo].[roles] ([idroles], [nombreroles]) VALUES (8, N'limpieza')
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1, N'FERMIN', N'SAAVEDRA', N'VILLALONGA', N'12bl15071726351', 236007, 1, 6, 5, 2, 2, 0, CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2, N'EDU', N'FAJARDO', N'FLORES', N'12bl15071726352', 235054, 1, 6, 13, 2, 2, 0, CAST(N'2021-09-05T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (3, N'BORJA', N'DE', N'MATAS', N'12bl15071726353', 235223, 1, 2, 2, 2, 2, 0, CAST(N'2021-09-05T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (4, N'MARTIRIO', N'MIRO', N'PEDRO', N'12bl15071726354', 235096, 1, 4, 10, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (5, N'LARA', N'AMORES', N'CABANAS', N'12bl15071726355', 235006, 1, 1, 8, 2, 2, 0, CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (6, N'BARTOLOME', N'ELORZA', N'HUGUET', N'12bl15071726356', 235855, 1, 2, 6, 2, 2, 0, CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (7, N'BLAS', N'DEL', N'CAL', N'12bl15071726357', 236194, 1, 6, 6, 2, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (8, N'BONIFACIO', N'SAURA', N'SANS', N'12bl15071726358', 236174, 1, 6, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (9, N'ASUNCION', N'BERROCAL', N'MUNIZ', N'12bl15071726359', 236299, 1, 1, 10, 2, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (10, N'JAIME', N'FUENTES', N'BARRERA', N'12bl15071726310', 235808, 1, 1, 13, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (11, N'BAUTISTA', N'HERNANDEZ', N'LUJAN', N'12bl15071726311', 235068, 1, 5, 2, 2, 2, 0, CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (12, N'ESTELA', N'ROLDAN', N'ROSADO', N'12bl15071726312', 235475, 1, 4, 4, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (13, N'CASEMIRO', N'LUCAS', N'AYLLON', N'12bl15071726313', 235879, 1, 5, 8, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (14, N'ROSENDA', N'CALVET', N'SANCHEZ', N'12bl15071726314', 235316, 1, 2, 7, 2, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (15, N'ALBA', N'ALBA', N'ARAUJO', N'12bl15071726315', 235246, 1, 4, 9, 2, 2, 0, CAST(N'2022-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (16, N'JAVIER', N'GRAU', N'SARMIENTO', N'12bl15071726316', 235925, 1, 5, 3, 2, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (17, N'ALONDRA', N'PRADA', N'HERRERO', N'12bl15071726317', 235342, 1, 6, 3, 2, 2, 0, CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (18, N'BERTO', N'DEL', N'BLANCH', N'12bl15071726318', 236050, 1, 1, 8, 2, 2, 0, CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (19, N'NEREIDA', N'DEL', N'FONT', N'12bl15071726319', 235847, 1, 2, 4, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (20, N'ANNA', N'ROSA', N'RIQUELME', N'12bl15071726320', 235008, 1, 6, 4, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (21, N'CAMILA', N'DE', N'ROCHA', N'12bl15071726321', 236330, 1, 4, 12, 2, 2, 0, CAST(N'2022-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (22, N'NACHO', N'DEL', N'COELLO', N'12bl15071726322', 236014, 1, 6, 15, 2, 2, 0, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (23, N'GEORGINA', N'GEORGINA', N'PLAZA', N'12bl15071726323', 236028, 1, 5, 15, 2, 2, 0, CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (24, N'CONSUELO', N'DURAN', N'AGUILA', N'12bl15071726324', 235297, 1, 3, 14, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (25, N'NEREIDA', N'DIEGO', N'DONAIRE', N'12bl15071726325', 235014, 1, 1, 9, 2, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (26, N'VALENTIN', N'HOZ', N'SOLANO', N'12bl15071726326', 235224, 1, 6, 12, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (27, N'NICANOR', N'DE', N'BARRANCO', N'12bl15071726327', 236256, 1, 4, 8, 2, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (28, N'LUCHO', N'URRUTIA', N'PALACIOS', N'12bl15071726328', 236078, 1, 6, 13, 2, 2, 0, CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (29, N'PASTOR', N'CASAL', N'GOMIS', N'12bl15071726329', 235037, 1, 3, 11, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (30, N'MAXIMINO', N'MAXIMINO', N'CASAL', N'12bl15071726330', 236160, 1, 6, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (31, N'FIDELA', N'SAINZ', N'ANGEL', N'12bl15071726331', 235994, 1, 3, 2, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (32, N'JORDANA', N'DUQUE', N'OCANA', N'12bl15071726332', 235347, 1, 4, 6, 2, 2, 0, CAST(N'2023-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (33, N'CELESTINO', N'RODRIGO', N'SANABRIA', N'12bl15071726333', 236184, 1, 3, 13, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (34, N'FERNANDA', N'COBO', N'BUENO', N'12bl15071726334', 235714, 1, 5, 15, 2, 2, 0, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (35, N'EMILIA', N'EMILIA', N'MARINO', N'12bl15071726335', 235256, 1, 4, 10, 2, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (36, N'CAYETANO', N'MANJON', N'RIO', N'12bl15071726336', 234990, 1, 3, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (37, N'BAUTISTA', N'CARO', N'BUSTAMANTE', N'12bl15071726337', 236421, 1, 1, 5, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (38, N'ALONSO', N'MARQUEZ', N'MESA', N'12bl15071726338', 235092, 1, 1, 3, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (39, N'WALTER', N'LLOBET', N'GRAU', N'12bl15071726339', 235813, 1, 3, 8, 2, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (40, N'SABAS', N'MANZANO', N'FERRANDO', N'12bl15071726340', 236218, 1, 2, 14, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (41, N'ALMUDENA', N'RAMOS', N'ESPADA', N'12bl15071726341', 235867, 1, 3, 14, 2, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (42, N'SALUD', N'VILLA', N'OTERO', N'12bl15071726342', 235222, 1, 3, 5, 2, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (43, N'EUGENIO', N'TOLOSA', N'ESTEBAN', N'12bl15071726343', 235187, 1, 4, 5, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (44, N'CARMELO', N'ANDRES', N'COZAR', N'12bl15071726344', 235215, 1, 3, 12, 2, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (45, N'GUIOMAR', N'FOLCH', N'CANTON', N'12bl15071726345', 236281, 1, 1, 15, 2, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (46, N'OLALLA', N'COLL', N'CASANOVAS', N'12bl15071726346', 235688, 1, 2, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (47, N'ISABEL', N'TABOADA', N'MADRID', N'12bl15071726347', 235635, 1, 6, 13, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (48, N'ANIBAL', N'DOMINGUEZ', N'LLOPIS', N'12bl15071726348', 236067, 1, 4, 14, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (49, N'BEGONA', N'SANCHEZ', N'CRESPI', N'12bl15071726349', 235407, 1, 5, 12, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (50, N'JUAN', N'ESPANOL', N'BARON', N'12bl15071726350', 235557, 1, 2, 4, 2, 2, 0, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (51, N'JOAQUIN', N'GONZALO', N'CHACON', N'12bl15071726351', 236188, 1, 5, 12, 2, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (52, N'MARTIRIO', N'CASALS', N'BERMUDEZ', N'12bl15071726352', 235614, 1, 4, 8, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (53, N'MARCO', N'VILLANUEVA', N'ESCOLANO', N'12bl15071726353', 235782, 1, 1, 6, 2, 2, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (54, N'HELIODORO', N'CASAS', N'LEAL', N'12bl15071726354', 235227, 1, 5, 14, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (55, N'ADELIA', N'ANDRES', N'BARRENA', N'12bl15071726355', 235778, 1, 1, 8, 2, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (56, N'GERMAN', N'GUAL', N'BAYO', N'12bl15071726356', 236152, 1, 6, 14, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (57, N'LEOPOLDO', N'COLLADO', N'VIANA', N'12bl15071726357', 235166, 1, 2, 9, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (58, N'FLOR', N'FLOR', N'JARA', N'12bl15071726358', 235889, 1, 5, 3, 2, 2, 0, CAST(N'2020-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (59, N'JOSE', N'ALAMO', N'SIERRA', N'12bl15071726359', 235518, 1, 3, 8, 2, 2, 0, CAST(N'2021-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (60, N'PALMIRA', N'PALMIRA', N'VILLANUEVA', N'12bl15071726360', 235950, 1, 4, 12, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (61, N'EZEQUIEL', N'SOLERA', N'NAVAS', N'12bl15071726361', 235167, 1, 6, 12, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (62, N'IRENE', N'PENALVER', N'FOLCH', N'12bl15071726362', 235597, 1, 1, 15, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (63, N'EDMUNDO', N'FLORES', N'LLANO', N'12bl15071726363', 235648, 1, 2, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (64, N'ROSAURA', N'ANGLADA', N'GALLEGO', N'12bl15071726364', 235456, 1, 4, 2, 2, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (65, N'FELIPE', N'ANGEL', N'PUGA', N'12bl15071726365', 235504, 1, 4, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (66, N'SAMUEL', N'CAMPO', N'ARRANZ', N'12bl15071726366', 236246, 1, 2, 14, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (67, N'SERGIO', N'AROCA', N'MURILLO', N'12bl15071726367', 235334, 1, 2, 15, 2, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (68, N'JULIAN', N'AGULLO', N'VIGIL', N'12bl15071726368', 235356, 1, 4, 15, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (69, N'FELIPE', N'ALCAZAR', N'CANELLAS', N'12bl15071726369', 236395, 1, 2, 15, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (70, N'SABINA', N'PADILLA', N'BANOS', N'12bl15071726370', 235027, 1, 5, 2, 2, 2, 0, CAST(N'2021-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (71, N'MARC', N'CASTILLO', N'SOLE', N'12bl15071726371', 235288, 1, 5, 11, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (72, N'EDU', N'MATA', N'ALCARAZ', N'12bl15071726372', 236337, 1, 1, 7, 2, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (73, N'AMBROSIO', N'COBO', N'GOMILA', N'12bl15071726373', 235329, 1, 3, 8, 2, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (74, N'RICO', N'RIQUELME', N'BARROSO', N'12bl15071726374', 235948, 1, 6, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (75, N'RAMON', N'RAMON', N'PLANA', N'12bl15071726375', 235355, 1, 4, 15, 2, 2, 0, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (76, N'TEODOSIO', N'SASTRE', N'BARON', N'12bl15071726376', 236340, 1, 5, 9, 2, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (77, N'DESIDERIO', N'PIQUER', N'CARDONA', N'12bl15071726377', 234999, 1, 3, 11, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (78, N'ALMA', N'BRU', N'ALVAREZ', N'12bl15071726378', 235628, 1, 1, 7, 2, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (79, N'RAFAELA', N'REGUERA', N'MARCO', N'12bl15071726379', 236367, 1, 4, 7, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (80, N'TELMO', N'FABREGAT', N'MENDOZA', N'12bl15071726380', 235762, 1, 6, 10, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (81, N'DOROTEA', N'ROMERO', N'PRADO', N'12bl15071726381', 236414, 1, 2, 9, 2, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (82, N'GLORIA', N'ACEVEDO', N'CASTILLA', N'12bl15071726382', 236020, 1, 4, 5, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (83, N'ROSENDO', N'ROSENDO', N'MERINO', N'12bl15071726383', 236104, 1, 3, 10, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (84, N'JESSICA', N'PENALVER', N'VINAS', N'12bl15071726384', 236298, 1, 3, 12, 2, 2, 0, CAST(N'2022-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (85, N'SONIA', N'DE', N'PORCEL', N'12bl15071726385', 235848, 1, 5, 14, 2, 2, 0, CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (86, N'JUAN', N'HIERRO', N'SANCHEZ', N'12bl15071726386', 235217, 1, 3, 12, 2, 2, 0, CAST(N'2022-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (87, N'FIDEL', N'POL', N'PAEZ', N'12bl15071726387', 235927, 1, 1, 10, 2, 2, 0, CAST(N'2022-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (88, N'LOPE', N'CARRO', N'CORTES', N'12bl15071726388', 235730, 1, 3, 4, 2, 2, 0, CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (89, N'APOLINAR', N'APOLINAR', N'GUARDIOLA', N'12bl15071726389', 235814, 1, 2, 6, 2, 2, 0, CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (90, N'ADELARDO', N'MILLAN', N'DIAZ', N'12bl15071726390', 235252, 1, 3, 15, 2, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (91, N'BONIFACIO', N'DE', N'BUENDIA', N'12bl15071726391', 235781, 1, 1, 4, 2, 2, 0, CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (92, N'VILMA', N'DIAZ', N'POMBO', N'12bl15071726392', 235274, 1, 5, 11, 2, 2, 0, CAST(N'2021-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (93, N'MICAELA', N'DE', N'ROJAS', N'12bl15071726393', 235235, 1, 3, 8, 2, 2, 0, CAST(N'2020-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (94, N'CUSTODIO', N'MARCOS', N'FONSECA', N'12bl15071726394', 236037, 1, 4, 3, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (95, N'NATANAEL', N'ALEGRE', N'CANTON', N'12bl15071726395', 235034, 1, 4, 10, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (96, N'AMANDA', N'MORERA', N'VERGARA', N'12bl15071726396', 235210, 1, 1, 4, 2, 2, 0, CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (97, N'CHUS', N'LEON', N'PALOMINO', N'12bl15071726397', 236147, 1, 2, 5, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (98, N'YESICA', N'SECO', N'PINEIRO', N'12bl15071726398', 236232, 1, 6, 3, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (99, N'BASILIO', N'LUJAN', N'BENITEZ', N'12bl15071726399', 236427, 1, 1, 3, 2, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (100, N'ORIANA', N'ARRIBAS', N'HERAS', N'12bl15071726100', 236069, 1, 6, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (101, N'PEDRO', N'DE', N'MARISCAL', N'12bl15071726101', 235544, 1, 5, 12, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (102, N'DANI', N'PALOMINO', N'BANOS', N'12bl15071726102', 236088, 1, 5, 3, 2, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (103, N'JAVIER', N'ELORZA', N'LUJAN', N'12bl15071726103', 235051, 1, 5, 8, 2, 2, 0, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (104, N'LUCIA', N'PEDRERO', N'INIGUEZ', N'12bl15071726104', 236118, 1, 5, 8, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (105, N'MARGARITA', N'MARGARITA', N'SANZ', N'12bl15071726105', 235423, 1, 6, 4, 2, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (106, N'APOLINAR', N'ALFONSO', N'BENITEZ', N'12bl15071726106', 236334, 1, 5, 15, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (107, N'LORETO', N'MORALEDA', N'ESCAMILLA', N'12bl15071726107', 236032, 1, 3, 2, 2, 2, 0, CAST(N'2021-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (108, N'AZAHARA', N'PALACIO', N'DOMINGO', N'12bl15071726108', 235402, 1, 4, 8, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (109, N'JOSE', N'BAYO', N'BLANES', N'12bl15071726109', 236083, 1, 5, 7, 2, 2, 0, CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (110, N'ROSALINDA', N'ROSALINDA', N'SALVA', N'12bl15071726110', 236124, 1, 1, 14, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (111, N'MARC', N'DAZA', N'ROVIRA', N'12bl15071726111', 236297, 1, 1, 5, 2, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (112, N'PACA', N'ABAD', N'BLANCA', N'12bl15071726112', 236029, 1, 1, 7, 2, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (113, N'BUENAVENTURA', N'BARROSO', N'LOBO', N'12bl15071726113', 236378, 1, 1, 13, 2, 2, 0, CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (114, N'MARIA', N'MORENO', N'ORTIZ', N'12bl15071726114', 236390, 1, 6, 11, 2, 2, 0, CAST(N'2021-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (115, N'ANA', N'MANJON', N'BONILLA', N'12bl15071726115', 235770, 1, 5, 2, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (116, N'SALVADOR', N'NAVAS', N'BRAVO', N'12bl15071726116', 235832, 1, 3, 4, 2, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (117, N'CIPRIANO', N'TOLEDO', N'PERELLO', N'12bl15071726117', 235399, 1, 3, 8, 2, 2, 0, CAST(N'2020-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (118, N'PIEDAD', N'URIARTE', N'DOMINGO', N'12bl15071726118', 235709, 1, 2, 14, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (119, N'NYDIA', N'ADADIA', N'CARRETERO', N'12bl15071726119', 236165, 1, 1, 9, 2, 2, 0, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (120, N'RAFAEL', N'VIVES', N'MARCO', N'12bl15071726120', 236286, 1, 1, 5, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (121, N'HERNANDO', N'NOVOA', N'TORRENT', N'12bl15071726121', 235783, 1, 1, 4, 2, 2, 0, CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (122, N'CARLOS', N'FABREGAT', N'IZQUIERDO', N'12bl15071726122', 236318, 1, 3, 4, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (123, N'TONI', N'TONI', N'ALONSO', N'12bl15071726123', 236046, 1, 5, 12, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (124, N'JULIO', N'SOLANO', N'PUJADAS', N'12bl15071726124', 235872, 1, 1, 3, 2, 2, 0, CAST(N'2020-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (125, N'JULIANA', N'JULIANA', N'CASES', N'12bl15071726125', 236161, 1, 1, 7, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (126, N'FERMIN', N'PRAT', N'SIMO', N'12bl15071726126', 235588, 1, 3, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (127, N'LINA', N'ESTEBAN', N'GUTIERREZ', N'12bl15071726127', 235471, 1, 1, 10, 2, 2, 0, CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (128, N'PRIMITIVO', N'DEL', N'PELAEZ', N'12bl15071726128', 236205, 1, 5, 3, 2, 2, 0, CAST(N'2021-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (129, N'HILARIO', N'LUZ', N'FERRERO', N'12bl15071726129', 235868, 1, 1, 11, 2, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (130, N'LIGIA', N'LIGIA', N'CORNEJO', N'12bl15071726130', 235939, 1, 2, 3, 2, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (131, N'ANA', N'BELEN', N'MOLINS', N'12bl15071726131', 235869, 1, 3, 8, 2, 2, 0, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (132, N'MANUEL', N'DE', N'CAMINO', N'12bl15071726132', 235535, 1, 1, 6, 2, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (133, N'FELICIA', N'FERRANDIZ', N'ESTEVE', N'12bl15071726133', 235483, 1, 6, 2, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (134, N'HAYDEE', N'GALINDO', N'SANDOVAL', N'12bl15071726134', 235050, 1, 2, 15, 2, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (135, N'CAMILO', N'SALMERON', N'COELLO', N'12bl15071726135', 235422, 1, 3, 3, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (136, N'BENITA', N'ROMAN', N'GUZMAN', N'12bl15071726136', 236383, 1, 1, 13, 2, 2, 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (137, N'NAZARET', N'DE', N'GUILLEN', N'12bl15071726137', 235827, 1, 3, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (138, N'MANUELA', N'MARTI', N'VALENZUELA', N'12bl15071726138', 235516, 1, 3, 7, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (139, N'LORETO', N'BUENO', N'RICART', N'12bl15071726139', 235738, 1, 6, 4, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (140, N'LUPE', N'ECHEVARRIA', N'PALMER', N'12bl15071726140', 236289, 1, 5, 3, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (141, N'ELIAS', N'PULIDO', N'CARRASCO', N'12bl15071726141', 235570, 1, 1, 12, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (142, N'FRANCISCO', N'ARAGONES', N'TELLO', N'12bl15071726142', 235107, 1, 6, 2, 2, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (143, N'GLAUCO', N'DEL', N'ABASCAL', N'12bl15071726143', 235716, 1, 1, 4, 2, 2, 0, CAST(N'2023-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (144, N'LORENZA', N'ALARCON', N'MULET', N'12bl15071726144', 235680, 1, 1, 8, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (145, N'SANCHO', N'PEREA', N'REBOLLO', N'12bl15071726145', 235771, 1, 2, 6, 2, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (146, N'ELOY', N'ELOY', N'ZURITA', N'12bl15071726146', 235470, 1, 5, 5, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (147, N'OLIMPIA', N'CERVERA', N'MORENO', N'12bl15071726147', 235697, 1, 6, 12, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (148, N'RAQUEL', N'AYALA', N'CARRASCO', N'12bl15071726148', 235620, 1, 2, 12, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (149, N'JUAN', N'RIOS', N'PALAU', N'12bl15071726149', 235058, 1, 1, 8, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (150, N'OVIDIO', N'PRATS', N'GARCIA', N'12bl15071726150', 235434, 1, 4, 15, 2, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (151, N'CARIDAD', N'MANZANO', N'BOSCH', N'12bl15071726151', 235212, 1, 1, 10, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (152, N'MARIA', N'MAESTRE', N'BERMUDEZ', N'12bl15071726152', 236404, 1, 6, 3, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (153, N'AUGUSTO', N'TOLEDO', N'MINGUEZ', N'12bl15071726153', 236202, 1, 3, 15, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (154, N'ALEJANDRO', N'VILLENA', N'ALFARO', N'12bl15071726154', 235665, 1, 2, 15, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (155, N'TEOBALDO', N'FERRERAS', N'AMOROS', N'12bl15071726155', 236267, 1, 1, 8, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (156, N'MARCELO', N'CASTELLANOS', N'ROYO', N'12bl15071726156', 236279, 1, 5, 4, 2, 2, 0, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (157, N'BALDUINO', N'DOMENECH', N'FLOR', N'12bl15071726157', 235009, 1, 3, 2, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (158, N'AINOA', N'CAMINO', N'CERVANTES', N'12bl15071726158', 236051, 1, 1, 10, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (159, N'GUIOMAR', N'FERRANDIZ', N'CARPIO', N'12bl15071726159', 235269, 1, 3, 4, 2, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (160, N'BALDOMERO', N'DE', N'BALLESTER', N'12bl15071726160', 236081, 1, 6, 5, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (161, N'SEBASTIAN', N'VILLALBA', N'VALLES', N'12bl15071726161', 235425, 1, 4, 9, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (162, N'JOSUE', N'GINER', N'LUJAN', N'12bl15071726162', 235719, 1, 4, 10, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (163, N'PASTOR', N'CANO', N'ALARCON', N'12bl15071726163', 235715, 1, 4, 4, 2, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (164, N'ISIDRO', N'REINA', N'SEVILLA', N'12bl15071726164', 235573, 1, 2, 14, 2, 2, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (165, N'SANTIAGO', N'PALOMARES', N'SOBRINO', N'12bl15071726165', 235335, 1, 1, 10, 2, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (166, N'ANASTASIA', N'DE', N'ACERO', N'12bl15071726166', 235386, 1, 4, 3, 2, 2, 0, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (167, N'JAVIER', N'MOLL', N'ANGULO', N'12bl15071726167', 236084, 1, 1, 12, 2, 2, 0, CAST(N'2021-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (168, N'JOAN', N'SAEZ', N'PACHECO', N'12bl15071726168', 235382, 1, 2, 12, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (169, N'CHARO', N'IZQUIERDO', N'VALENCIANO', N'12bl15071726169', 235391, 1, 3, 3, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (170, N'FLAVIO', N'GIBERT', N'URIARTE', N'12bl15071726170', 235142, 1, 6, 5, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (171, N'ZORAIDA', N'VAZQUEZ', N'MASCARO', N'12bl15071726171', 235649, 1, 6, 13, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (172, N'RICARDA', N'MARINO', N'BUSTOS', N'12bl15071726172', 235155, 1, 5, 3, 2, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (173, N'JULIAN', N'TOMAS', N'FORTUNY', N'12bl15071726173', 235952, 1, 6, 2, 2, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (174, N'CHARO', N'VAQUERO', N'NAVAS', N'12bl15071726174', 235503, 1, 3, 13, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (175, N'ALBERT', N'VALLEJO', N'PEIRO', N'12bl15071726175', 235208, 1, 2, 9, 2, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (176, N'VICENTA', N'ZAMORANO', N'VERA', N'12bl15071726176', 236288, 1, 6, 9, 2, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (177, N'HECTOR', N'ARREGUI', N'AGUSTIN', N'12bl15071726177', 235498, 1, 6, 8, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (178, N'FAUSTINO', N'VALLE', N'RUANO', N'12bl15071726178', 235184, 1, 6, 8, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (179, N'NICOLAS', N'PUJOL', N'HUGUET', N'12bl15071726179', 236066, 1, 1, 9, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (180, N'CHUS', N'RAMIREZ', N'GINER', N'12bl15071726180', 236424, 1, 3, 5, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (181, N'DARIO', N'BARRANCO', N'GISBERT', N'12bl15071726181', 236209, 1, 5, 14, 2, 2, 0, CAST(N'2021-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (182, N'AMARO', N'REIG', N'SARABIA', N'12bl15071726182', 235974, 1, 4, 9, 2, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (183, N'BELEN', N'MONTES', N'SANTANA', N'12bl15071726183', 235957, 1, 4, 8, 2, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (184, N'FLAVIA', N'DUENAS', N'TELLEZ', N'12bl15071726184', 235508, 1, 2, 3, 2, 2, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (185, N'VASCO', N'PADILLA', N'PALACIOS', N'12bl15071726185', 236117, 1, 2, 14, 2, 2, 0, CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (186, N'CANDIDO', N'SANABRIA', N'CAZORLA', N'12bl15071726186', 235884, 1, 2, 9, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (187, N'FELIPA', N'BELMONTE', N'MADRID', N'12bl15071726187', 235344, 1, 4, 3, 2, 2, 0, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (188, N'CLIMACO', N'CASTELL', N'BERROCAL', N'12bl15071726188', 236013, 1, 3, 7, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (189, N'CHE', N'ISERN', N'LLADO', N'12bl15071726189', 235015, 1, 5, 9, 2, 2, 0, CAST(N'2022-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (190, N'MARTIN', N'JUAN', N'BERENGUER', N'12bl15071726190', 235539, 1, 3, 4, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (191, N'LAZARO', N'RIBAS', N'PUERTA', N'12bl15071726191', 235506, 1, 3, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (192, N'TEO', N'URIA', N'HEREDIA', N'12bl15071726192', 235001, 1, 3, 12, 2, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (193, N'FELICIANA', N'SAEZ', N'CAMARA', N'12bl15071726193', 235596, 1, 3, 15, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (194, N'BASILIO', N'BASILIO', N'POZUELO', N'12bl15071726194', 236393, 1, 5, 14, 2, 2, 0, CAST(N'2022-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (195, N'AINOA', N'OLIVE', N'SANTIAGO', N'12bl15071726195', 234964, 1, 4, 15, 2, 2, 0, CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (196, N'PIO', N'DOMINGUEZ', N'GARATE', N'12bl15071726196', 235221, 1, 3, 12, 2, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (197, N'BRIGIDA', N'MARTIN', N'MANZANARES', N'12bl15071726197', 235465, 1, 1, 3, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (198, N'GABRIELA', N'MONTENEGRO', N'FEIJOO', N'12bl15071726198', 235737, 1, 4, 4, 2, 2, 0, CAST(N'2022-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (199, N'JUAN', N'ALEMANY', N'CANTON', N'12bl15071726199', 235410, 1, 6, 13, 2, 2, 0, CAST(N'2020-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (200, N'OLGA', N'ABELLA', N'RODRIGUEZ', N'12bl15071726200', 236308, 1, 5, 15, 2, 2, 0, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (201, N'EDELMIRO', N'SUAREZ', N'QUINTANILLA', N'12bl15071726201', 236276, 1, 2, 14, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (202, N'JOSE', N'UGARTE', N'SALA', N'12bl15071726202', 235502, 1, 2, 3, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (203, N'ALE', N'LLABRES', N'PERALTA', N'12bl15071726203', 236402, 1, 1, 8, 2, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (204, N'MAXIMILIANO', N'CERRO', N'DOMINGUEZ', N'12bl15071726204', 235900, 1, 1, 8, 2, 2, 0, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (205, N'ANA', N'ANGULO', N'ARIZA', N'12bl15071726205', 236382, 1, 5, 8, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (206, N'NOELIA', N'LUCAS', N'BORJA', N'12bl15071726206', 235132, 1, 1, 2, 2, 2, 0, CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (207, N'CALISTO', N'MARQUES', N'NOGUERA', N'12bl15071726207', 235366, 1, 6, 12, 2, 2, 0, CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (208, N'MILAGROS', N'AGUSTI', N'CUESTA', N'12bl15071726208', 236372, 1, 3, 12, 2, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (209, N'PEDRO', N'REAL', N'ARAMBURU', N'12bl15071726209', 235420, 1, 2, 12, 2, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (210, N'ILEANA', N'ILEANA', N'VERA', N'12bl15071726210', 236008, 1, 2, 5, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (211, N'COSME', N'CAMPILLO', N'PALACIOS', N'12bl15071726211', 235172, 1, 3, 6, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (212, N'MARIBEL', N'CAMPS', N'ALMAZAN', N'12bl15071726212', 235805, 1, 4, 13, 2, 2, 0, CAST(N'2022-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (213, N'MANU', N'MANU', N'RIO', N'12bl15071726213', 235216, 1, 6, 15, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (214, N'BALDUINO', N'MARTINEZ', N'SIERRA', N'12bl15071726214', 235656, 1, 6, 5, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (215, N'AFRICA', N'JORDAN', N'ROMAN', N'12bl15071726215', 236100, 1, 2, 10, 2, 2, 0, CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (216, N'PAULA', N'GASCON', N'PINA', N'12bl15071726216', 236169, 1, 3, 13, 2, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (217, N'AGUEDA', N'MANSO', N'MARIN', N'12bl15071726217', 235625, 1, 3, 4, 2, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (218, N'BEGONA', N'FARRE', N'BARRIOS', N'12bl15071726218', 235100, 1, 4, 12, 2, 2, 0, CAST(N'2021-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (219, N'BARBARA', N'GARGALLO', N'SANJUAN', N'12bl15071726219', 235419, 1, 4, 3, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (220, N'JORDANA', N'DEL', N'MATAS', N'12bl15071726220', 235444, 1, 3, 10, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (221, N'SILVIO', N'DE', N'REQUENA', N'12bl15071726221', 234971, 1, 1, 15, 2, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (222, N'PANFILO', N'SALDANA', N'VALLEJO', N'12bl15071726222', 234972, 1, 1, 11, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (223, N'MARCELO', N'POSADA', N'CACERES', N'12bl15071726223', 235102, 1, 2, 14, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (224, N'SILVESTRE', N'DE', N'RIQUELME', N'12bl15071726224', 235533, 1, 3, 9, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (225, N'EMA', N'LOPEZ', N'CAPARROS', N'12bl15071726225', 236407, 1, 3, 3, 2, 2, 0, CAST(N'2021-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (226, N'TIMOTEO', N'GUZMAN', N'COLOMER', N'12bl15071726226', 235196, 1, 3, 7, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (227, N'ROXANA', N'DEL', N'VENDRELL', N'12bl15071726227', 236086, 1, 4, 13, 2, 2, 0, CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (228, N'TERESITA', N'MARTINEZ', N'LERMA', N'12bl15071726228', 236019, 1, 6, 10, 2, 2, 0, CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (229, N'EDU', N'CADENAS', N'PEREIRA', N'12bl15071726229', 236222, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (230, N'COSME', N'MORALES', N'BELMONTE', N'12bl15071726230', 235705, 1, 3, 15, 2, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (231, N'TADEO', N'NADAL', N'VILLEGAS', N'12bl15071726231', 236292, 1, 3, 5, 2, 2, 0, CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (232, N'JAIME', N'BENITEZ', N'BAUTISTA', N'12bl15071726232', 236183, 1, 6, 12, 2, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (233, N'PANCHO', N'JAEN', N'VALENCIANO', N'12bl15071726233', 235261, 1, 2, 9, 2, 2, 0, CAST(N'2022-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (234, N'EDGAR', N'MONTESINOS', N'ROMA', N'12bl15071726234', 235310, 1, 3, 14, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (235, N'LORENZA', N'CAPARROS', N'SARMIENTO', N'12bl15071726235', 236447, 1, 1, 15, 2, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (236, N'VIRGINIA', N'LORENZO', N'PEREZ', N'12bl15071726236', 236077, 1, 5, 15, 2, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (237, N'TORIBIO', N'GUZMAN', N'MACHADO', N'12bl15071726237', 236435, 1, 5, 4, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (238, N'CRISTIAN', N'CRISTIAN', N'POMARES', N'12bl15071726238', 235343, 1, 4, 14, 2, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (239, N'ETELVINA', N'SAEZ', N'JUAREZ', N'12bl15071726239', 235904, 1, 6, 2, 2, 2, 0, CAST(N'2023-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (240, N'ROLDAN', N'BARRERA', N'RAMOS', N'12bl15071726240', 235901, 1, 2, 14, 2, 2, 0, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (241, N'HECTOR', N'CABALLERO', N'MORELL', N'12bl15071726241', 236315, 1, 5, 15, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (242, N'MANU', N'ROZAS', N'CRESPI', N'12bl15071726242', 236363, 1, 3, 10, 2, 2, 0, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (243, N'SOL', N'BARCO', N'BASTIDA', N'12bl15071726243', 235618, 1, 2, 15, 2, 2, 0, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (244, N'ESTRELLA', N'DE', N'ROIG', N'12bl15071726244', 235537, 1, 4, 9, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (245, N'TITO', N'LOPEZ', N'VILLALOBOS', N'12bl15071726245', 236121, 1, 5, 3, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (246, N'MERCEDES', N'DUQUE', N'POZO', N'12bl15071726246', 235388, 1, 3, 3, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (247, N'SILVESTRE', N'SANCHO', N'ZABALA', N'12bl15071726247', 235866, 1, 2, 12, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (248, N'CORONA', N'PUENTE', N'BAEZ', N'12bl15071726248', 236322, 1, 2, 4, 2, 2, 0, CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (249, N'GEORGINA', N'NOGUEIRA', N'LLABRES', N'12bl15071726249', 235698, 1, 3, 7, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (250, N'AMELIA', N'SANCHEZ', N'CAMPS', N'12bl15071726250', 236277, 1, 4, 12, 2, 2, 0, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (251, N'ELADIO', N'FIGUEROA', N'ANDRES', N'12bl15071726251', 235842, 1, 6, 8, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (252, N'XAVIER', N'CABRERA', N'FABREGAS', N'12bl15071726252', 235747, 1, 4, 15, 2, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (253, N'PRUDENCIO', N'PEINADO', N'GOICOECHEA', N'12bl15071726253', 236239, 1, 6, 11, 2, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (254, N'PACO', N'DUQUE', N'CANTON', N'12bl15071726254', 235197, 1, 4, 6, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (255, N'TANIA', N'SOBRINO', N'VILLALOBOS', N'12bl15071726255', 236116, 1, 2, 13, 2, 2, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (256, N'JOEL', N'VILLENA', N'BELTRAN', N'12bl15071726256', 236096, 1, 2, 6, 2, 2, 0, CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (257, N'REYNA', N'GALIANO', N'LANDA', N'12bl15071726257', 236134, 1, 5, 15, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (258, N'SOLEDAD', N'ALVARADO', N'CUERVO', N'12bl15071726258', 234956, 1, 3, 12, 2, 2, 0, CAST(N'2023-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (259, N'JORGE', N'NADAL', N'HIDALGO', N'12bl15071726259', 236347, 1, 2, 12, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (260, N'REGULO', N'DALMAU', N'ARAGONES', N'12bl15071726260', 235493, 1, 5, 3, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (261, N'LALO', N'ESCOBAR', N'ORTIZ', N'12bl15071726261', 236090, 1, 6, 9, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (262, N'SEVERO', N'BARCENA', N'MANCEBO', N'12bl15071726262', 235797, 1, 1, 13, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (263, N'NESTOR', N'TAMAYO', N'CLAVERO', N'12bl15071726263', 235457, 1, 5, 14, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (264, N'LINA', N'PORTA', N'CARRION', N'12bl15071726264', 235390, 1, 4, 5, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (265, N'BERTO', N'PINEDO', N'VERDUGO', N'12bl15071726265', 235936, 1, 1, 5, 2, 2, 0, CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (266, N'ISMAEL', N'DE', N'ESTEBAN', N'12bl15071726266', 235314, 1, 1, 15, 2, 2, 0, CAST(N'2023-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (267, N'SALOME', N'TORRENS', N'ROSELL', N'12bl15071726267', 235323, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (268, N'VERA', N'CARBONELL', N'GABALDON', N'12bl15071726268', 236040, 1, 1, 4, 2, 2, 0, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (269, N'FABIANA', N'CASTELL', N'LUCAS', N'12bl15071726269', 235600, 1, 5, 5, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (270, N'BERNARDO', N'DE', N'ACOSTA', N'12bl15071726270', 236108, 1, 3, 6, 2, 2, 0, CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (271, N'AZAHARA', N'BONILLA', N'TUR', N'12bl15071726271', 235281, 1, 4, 8, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (272, N'ADRIAN', N'BARRIOS', N'DAVILA', N'12bl15071726272', 235231, 1, 4, 12, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (273, N'AZUCENA', N'TORRENTS', N'ALCALDE', N'12bl15071726273', 236164, 1, 4, 9, 2, 2, 0, CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (274, N'ANGELICA', N'CASARES', N'LLORET', N'12bl15071726274', 236257, 1, 6, 10, 2, 2, 0, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (275, N'BRUNO', N'BRUNO', N'BERROCAL', N'12bl15071726275', 235305, 1, 4, 15, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (276, N'JULIA', N'REAL', N'PONS', N'12bl15071726276', 235525, 1, 6, 5, 2, 2, 0, CAST(N'2023-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (277, N'LIGIA', N'DEL', N'GARMENDIA', N'12bl15071726277', 235840, 1, 5, 5, 2, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (278, N'PABLO', N'JIMENEZ', N'TAMAYO', N'12bl15071726278', 236065, 1, 5, 3, 2, 2, 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (279, N'SATURNINO', N'PALOMARES', N'VILLALONGA', N'12bl15071726279', 236015, 1, 5, 9, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (280, N'CINTIA', N'CINTIA', N'HUERTAS', N'12bl15071726280', 235574, 1, 5, 15, 2, 2, 0, CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (281, N'JORDI', N'FRIAS', N'CANIZARES', N'12bl15071726281', 235836, 1, 3, 14, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (282, N'SONIA', N'BORRAS', N'SAURA', N'12bl15071726282', 235299, 1, 5, 2, 2, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (283, N'MANOLO', N'DE', N'GIRONA', N'12bl15071726283', 235819, 1, 1, 8, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (284, N'TELMO', N'NARVAEZ', N'ATIENZA', N'12bl15071726284', 235976, 1, 1, 15, 2, 2, 0, CAST(N'2020-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (285, N'JULIAN', N'RIQUELME', N'GINER', N'12bl15071726285', 236237, 1, 4, 6, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (286, N'HIPOLITO', N'DEL', N'LARA', N'12bl15071726286', 235337, 1, 1, 6, 2, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (287, N'LINA', N'MAZA', N'LASA', N'12bl15071726287', 235728, 1, 5, 5, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (288, N'ALEX', N'AGUDO', N'GUILLEN', N'12bl15071726288', 236170, 1, 6, 11, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (289, N'NILDA', N'VALENCIANO', N'PALACIOS', N'12bl15071726289', 235703, 1, 2, 2, 2, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (290, N'JOEL', N'SAAVEDRA', N'CORRAL', N'12bl15071726290', 235319, 1, 4, 11, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (291, N'ELISABET', N'MARMOL', N'TOMAS', N'12bl15071726291', 235691, 1, 2, 14, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (292, N'MORENO', N'DE', N'PARDO', N'12bl15071726292', 235062, 1, 3, 12, 2, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (293, N'NORBERTO', N'COLL', N'IBANEZ', N'12bl15071726293', 235180, 1, 1, 12, 2, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (294, N'GODOFREDO', N'DE', N'ESTEBAN', N'12bl15071726294', 235030, 1, 2, 9, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (295, N'JUAN', N'DE', N'NOGUERA', N'12bl15071726295', 235558, 1, 4, 4, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (296, N'CLARISA', N'SILVA', N'LEDESMA', N'12bl15071726296', 235888, 1, 2, 13, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (297, N'AGUEDA', N'TORRENS', N'ROURA', N'12bl15071726297', 236307, 1, 5, 7, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (298, N'ELISABET', N'ESTEBAN', N'OCHOA', N'12bl15071726298', 236388, 1, 5, 5, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (299, N'MANOLA', N'SAENZ', N'CASALS', N'12bl15071726299', 235339, 1, 5, 9, 2, 2, 0, CAST(N'2020-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (300, N'NATALIO', N'NICOLAU', N'BARRERA', N'12bl15071726300', 235799, 1, 2, 8, 2, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (301, N'NADIA', N'VEGA', N'PINO', N'12bl15071726301', 235908, 1, 3, 2, 2, 2, 0, CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (302, N'MARGARITA', N'CANO', N'TEJERO', N'12bl15071726302', 235089, 1, 4, 11, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (303, N'PRIMITIVA', N'MONTENEGRO', N'CERVANTES', N'12bl15071726303', 235524, 1, 1, 12, 2, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (304, N'ROSENDO', N'COBO', N'VALLES', N'12bl15071726304', 235530, 1, 1, 8, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (305, N'ZORAIDA', N'TRILLO', N'MARQUEZ', N'12bl15071726305', 235341, 1, 4, 6, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (306, N'JEREMIAS', N'ANDRES', N'VILLANUEVA', N'12bl15071726306', 235941, 1, 4, 15, 2, 2, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (307, N'MANUEL', N'LLANOS', N'ANDRES', N'12bl15071726307', 235745, 1, 2, 10, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (308, N'CARMELITA', N'RODENAS', N'GRAU', N'12bl15071726308', 235858, 1, 4, 2, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (309, N'MANU', N'LERMA', N'REY', N'12bl15071726309', 236431, 1, 2, 10, 2, 2, 0, CAST(N'2020-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (310, N'NELIDA', N'PINA', N'CARDONA', N'12bl15071726310', 235035, 1, 3, 14, 2, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (311, N'ITZIAR', N'ANGUITA', N'SOLERA', N'12bl15071726311', 234959, 1, 1, 3, 2, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (312, N'EULALIA', N'DE', N'MANZANO', N'12bl15071726312', 234981, 1, 5, 7, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (313, N'NATALIA', N'NATALIA', N'SANCHEZ', N'12bl15071726313', 235466, 1, 1, 7, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (314, N'LEONCIO', N'ESTEVEZ', N'ROCAMORA', N'12bl15071726314', 235257, 1, 5, 2, 2, 2, 0, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (315, N'JULIETA', N'MATA', N'ALEMANY', N'12bl15071726315', 236301, 1, 6, 4, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (316, N'NANDO', N'FIGUEROA', N'CABANAS', N'12bl15071726316', 235377, 1, 6, 9, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (317, N'GERONIMO', N'VALDERRAMA', N'FUENTES', N'12bl15071726317', 235802, 1, 2, 6, 2, 2, 0, CAST(N'2020-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (318, N'JORDAN', N'BOLANOS', N'VERGARA', N'12bl15071726318', 235163, 1, 2, 15, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (319, N'REGULO', N'RODENAS', N'ZAMORANO', N'12bl15071726319', 234963, 1, 4, 2, 2, 2, 0, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (320, N'ANGELICA', N'LARA', N'SALINAS', N'12bl15071726320', 235145, 1, 6, 2, 2, 2, 0, CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (321, N'ABEL', N'ARENAS', N'FERRERO', N'12bl15071726321', 235767, 1, 1, 13, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (322, N'VILMA', N'ESTEVEZ', N'CANALES', N'12bl15071726322', 235497, 1, 3, 11, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (323, N'ASCENSION', N'BENITEZ', N'ECHEVARRIA', N'12bl15071726323', 235651, 1, 1, 9, 2, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (324, N'ENRIQUE', N'AMORES', N'ARENAS', N'12bl15071726324', 236317, 1, 4, 6, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (325, N'EFRAIN', N'INIESTA', N'VICENS', N'12bl15071726325', 235052, 1, 1, 3, 2, 2, 0, CAST(N'2022-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (326, N'ADELARDO', N'NADAL', N'ANDRADE', N'12bl15071726326', 236370, 1, 4, 14, 2, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (327, N'FLORENCIO', N'FLORENCIO', N'BOADA', N'12bl15071726327', 236379, 1, 1, 11, 2, 2, 0, CAST(N'2021-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (328, N'ELIAS', N'TAPIA', N'ESCUDERO', N'12bl15071726328', 235040, 1, 6, 6, 2, 2, 0, CAST(N'2021-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (329, N'EFRAIN', N'DEL', N'JAEN', N'12bl15071726329', 236439, 1, 5, 8, 2, 2, 0, CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (330, N'SILVIO', N'SASTRE', N'VILANOVA', N'12bl15071726330', 236345, 1, 2, 11, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (331, N'EFRAIN', N'GRANDE', N'POL', N'12bl15071726331', 235137, 1, 4, 5, 2, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (332, N'ADELARDO', N'SUAREZ', N'BARRANCO', N'12bl15071726332', 236380, 1, 1, 8, 2, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (333, N'BRUNO', N'HERRANZ', N'ARCO', N'12bl15071726333', 235515, 1, 5, 9, 2, 2, 0, CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (334, N'ADELINA', N'TEJADA', N'AGUILERA', N'12bl15071726334', 235616, 1, 6, 15, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (335, N'RUPERTA', N'RUPERTA', N'MORALEDA', N'12bl15071726335', 235263, 1, 4, 3, 2, 2, 0, CAST(N'2022-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (336, N'PONCIO', N'HUERTAS', N'HUERTAS', N'12bl15071726336', 236412, 1, 2, 14, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (337, N'JOSE', N'RODENAS', N'FIOL', N'12bl15071726337', 236192, 1, 4, 2, 2, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (338, N'CARINA', N'ANDREU', N'MORERA', N'12bl15071726338', 235491, 1, 5, 4, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (339, N'FRANCISCA', N'DE', N'MUGICA', N'12bl15071726339', 236111, 1, 1, 9, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (340, N'CESAR', N'BARCENA', N'LOBO', N'12bl15071726340', 236399, 1, 2, 5, 2, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (341, N'ISABEL', N'GOICOECHEA', N'ROSELLO', N'12bl15071726341', 235188, 1, 1, 3, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (342, N'TADEO', N'TADEO', N'VALERA', N'12bl15071726342', 235753, 1, 1, 13, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (343, N'VITO', N'PUJADAS', N'DIAZ', N'12bl15071726343', 234977, 1, 4, 12, 2, 2, 0, CAST(N'2023-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (344, N'LUPE', N'BADIA', N'MOSQUERA', N'12bl15071726344', 235532, 1, 4, 7, 2, 2, 0, CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (345, N'ESPIRIDION', N'ANTON', N'DUQUE', N'12bl15071726345', 236092, 1, 1, 14, 2, 2, 0, CAST(N'2022-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (346, N'ISIDORO', N'DEL', N'OTERO', N'12bl15071726346', 235637, 1, 2, 6, 2, 2, 0, CAST(N'2022-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (347, N'FIDELA', N'ROSADO', N'SANS', N'12bl15071726347', 236409, 1, 2, 10, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (348, N'NICO', N'ZABALETA', N'RIVERO', N'12bl15071726348', 235119, 1, 5, 9, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (349, N'LALO', N'DEL', N'NEBOT', N'12bl15071726349', 235364, 1, 1, 8, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (350, N'CARMEN', N'URRUTIA', N'GUARDIA', N'12bl15071726350', 235774, 1, 1, 10, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (351, N'TEO', N'TORRECILLA', N'SANABRIA', N'12bl15071726351', 235442, 1, 5, 10, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (352, N'DELFINA', N'DIAZ', N'MADRIGAL', N'12bl15071726352', 235351, 1, 4, 6, 2, 2, 0, CAST(N'2022-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (353, N'MANU', N'BARRANCO', N'CASTELLO', N'12bl15071726353', 235615, 1, 6, 4, 2, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (354, N'JOSE', N'TORRENS', N'GALAN', N'12bl15071726354', 235075, 1, 5, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (355, N'PERLA', N'MUNOZ', N'ROSELLO', N'12bl15071726355', 236248, 1, 4, 10, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (356, N'PEDRO', N'PUENTE', N'CASES', N'12bl15071726356', 235784, 1, 1, 6, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (357, N'AITOR', N'DE', N'IGLESIA', N'12bl15071726357', 235038, 1, 2, 8, 2, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (358, N'ENCARNACION', N'ENCARNACION', N'GONZALO', N'12bl15071726358', 235838, 1, 1, 4, 2, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (359, N'LEON', N'DEL', N'ESPADA', N'12bl15071726359', 235125, 1, 4, 11, 2, 2, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (360, N'CLARA', N'RIUS', N'SANTIAGO', N'12bl15071726360', 235247, 1, 4, 11, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (361, N'CRESCENCIA', N'LUQUE', N'CUADRADO', N'12bl15071726361', 235267, 1, 1, 3, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (362, N'ROMULO', N'SEGARRA', N'LUNA', N'12bl15071726362', 235932, 1, 6, 13, 2, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (363, N'LUCAS', N'ACEVEDO', N'CABEZAS', N'12bl15071726363', 235147, 1, 5, 4, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (364, N'CHUCHO', N'PEREIRA', N'ARTEAGA', N'12bl15071726364', 235987, 1, 5, 9, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (365, N'ALEJANDRO', N'IBANEZ', N'ROVIRA', N'12bl15071726365', 235230, 1, 1, 11, 2, 2, 0, CAST(N'2022-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (366, N'MARCIA', N'DE', N'RUIZ', N'12bl15071726366', 235988, 1, 4, 12, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (367, N'AMANCIO', N'LEIVA', N'ALMAGRO', N'12bl15071726367', 236342, 1, 2, 12, 2, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (368, N'CHARO', N'CANET', N'BLANCO', N'12bl15071726368', 235961, 1, 5, 7, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (369, N'AFRICA', N'MONREAL', N'GUARDIA', N'12bl15071726369', 236141, 1, 2, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (370, N'ERASMO', N'NUNEZ', N'LLUCH', N'12bl15071726370', 235995, 1, 3, 6, 2, 2, 0, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (371, N'ESMERALDA', N'MARTI', N'SOLANO', N'12bl15071726371', 235546, 1, 4, 5, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (372, N'PALMIRA', N'BAQUERO', N'JAUME', N'12bl15071726372', 235066, 1, 2, 7, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (373, N'JOEL', N'AGUILERA', N'CORNEJO', N'12bl15071726373', 236025, 1, 2, 10, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (374, N'ALEJANDRO', N'PRIEGO', N'CASAS', N'12bl15071726374', 236278, 1, 6, 7, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (375, N'CIRO', N'ROYO', N'BELTRAN', N'12bl15071726375', 235934, 1, 4, 12, 2, 2, 0, CAST(N'2021-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (376, N'BAUTISTA', N'BERTRAN', N'VILLALBA', N'12bl15071726376', 234983, 1, 3, 5, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (377, N'ABEL', N'DEL', N'PRADO', N'12bl15071726377', 234993, 1, 6, 14, 2, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (378, N'ITZIAR', N'DE', N'MANZANARES', N'12bl15071726378', 235302, 1, 6, 14, 2, 2, 0, CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (379, N'MACARIO', N'PONT', N'CANETE', N'12bl15071726379', 235586, 1, 4, 9, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (380, N'CRISTIAN', N'SOLIS', N'FRANCH', N'12bl15071726380', 235727, 1, 6, 8, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (381, N'EUGENIO', N'SEGARRA', N'HARO', N'12bl15071726381', 235110, 1, 2, 15, 2, 2, 0, CAST(N'2021-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (382, N'SILVIO', N'DEL', N'NICOLAS', N'12bl15071726382', 235361, 1, 5, 2, 2, 2, 0, CAST(N'2020-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (383, N'EDGAR', N'EDGAR', N'CORRAL', N'12bl15071726383', 235510, 1, 3, 8, 2, 2, 0, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (384, N'WILFREDO', N'LUCENA', N'ACERO', N'12bl15071726384', 235826, 1, 5, 12, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (385, N'ABRAHAM', N'DE', N'VILLALBA', N'12bl15071726385', 234988, 1, 4, 4, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (386, N'FLAVIO', N'FABREGAT', N'LUZ', N'12bl15071726386', 235209, 1, 5, 3, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (387, N'MAMEN', N'SALES', N'LEIVA', N'12bl15071726387', 235624, 1, 1, 10, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (388, N'MAXIMIANO', N'TELLEZ', N'CRESPO', N'12bl15071726388', 235968, 1, 5, 11, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (389, N'VANESA', N'VANESA', N'ALFARO', N'12bl15071726389', 235671, 1, 4, 15, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (390, N'CRUZ', N'CHAVES', N'GALLO', N'12bl15071726390', 236244, 1, 3, 8, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (391, N'ISIDRO', N'ROYO', N'JUAREZ', N'12bl15071726391', 235389, 1, 4, 6, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (392, N'RAFA', N'RAFA', N'LARREA', N'12bl15071726392', 236348, 1, 5, 10, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (393, N'GERMAN', N'DE', N'JUAN', N'12bl15071726393', 235699, 1, 6, 5, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (394, N'CALISTA', N'PRIETO', N'PINA', N'12bl15071726394', 235469, 1, 6, 3, 2, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (395, N'NATALIO', N'NATALIO', N'ROSELL', N'12bl15071726395', 236056, 1, 4, 10, 2, 2, 0, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (396, N'IRIS', N'PERA', N'VALENZUELA', N'12bl15071726396', 236350, 1, 5, 10, 2, 2, 0, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (397, N'JULIE', N'AMAYA', N'ESTEVEZ', N'12bl15071726397', 236225, 1, 1, 14, 2, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (398, N'LAZARO', N'SALAS', N'ORTIZ', N'12bl15071726398', 235455, 1, 1, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (399, N'SATURNINA', N'GIRALT', N'BERNAD', N'12bl15071726399', 235289, 1, 5, 9, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (400, N'JOSE', N'SOLERA', N'SALVA', N'12bl15071726400', 235640, 1, 2, 6, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (401, N'CLAUDIO', N'BEJARANO', N'MOYA', N'12bl15071726401', 235874, 1, 3, 7, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (402, N'MARIA', N'AGUIRRE', N'BENITO', N'12bl15071726402', 236041, 1, 6, 7, 2, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (403, N'PACO', N'ALIAGA', N'CAZORLA', N'12bl15071726403', 236413, 1, 4, 11, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (404, N'FELICIANO', N'MONTOYA', N'MAZA', N'12bl15071726404', 236166, 1, 6, 14, 2, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (405, N'ASCENSION', N'ESPEJO', N'ACERO', N'12bl15071726405', 235116, 1, 5, 9, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (406, N'CARLOTA', N'QUINTANA', N'ALFARO', N'12bl15071726406', 235055, 1, 4, 12, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (407, N'HERACLIO', N'CORREA', N'MONTALBAN', N'12bl15071726407', 235324, 1, 4, 12, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (408, N'ARTEMIO', N'JORDAN', N'POZO', N'12bl15071726408', 235793, 1, 2, 10, 2, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (409, N'LEONEL', N'CARLOS', N'IGLESIAS', N'12bl15071726409', 235741, 1, 5, 13, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (410, N'FLORINDA', N'RIERA', N'CAMPO', N'12bl15071726410', 236098, 1, 3, 13, 2, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (411, N'LEANDRO', N'LEANDRO', N'BALLESTEROS', N'12bl15071726411', 235500, 1, 2, 4, 2, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (412, N'SOL', N'BAYO', N'DOMENECH', N'12bl15071726412', 236039, 1, 6, 10, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (413, N'DORA', N'BERNAD', N'PRIETO', N'12bl15071726413', 236303, 1, 2, 13, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (414, N'BARTOLOME', N'PRADA', N'GUILLEN', N'12bl15071726414', 235643, 1, 6, 2, 2, 2, 0, CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (415, N'BALDOMERO', N'RAMON', N'SANS', N'12bl15071726415', 235608, 1, 6, 10, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (416, N'ANDREA', N'DUENAS', N'MONTOYA', N'12bl15071726416', 236022, 1, 5, 13, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (417, N'JAFET', N'TRILLO', N'LLADO', N'12bl15071726417', 235047, 1, 6, 14, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (418, N'MANU', N'ISERN', N'BUENO', N'12bl15071726418', 235431, 1, 6, 11, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (419, N'ISIDORO', N'SALINAS', N'SOMOZA', N'12bl15071726419', 235413, 1, 6, 11, 2, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (420, N'MARCOS', N'MARCOS', N'PLA', N'12bl15071726420', 236296, 1, 3, 15, 2, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (421, N'LORENA', N'DEL', N'ANDRES', N'12bl15071726421', 236129, 1, 4, 2, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (422, N'FLORINA', N'MARTINEZ', N'VALENCIA', N'12bl15071726422', 236059, 1, 2, 7, 2, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (423, N'NICOLAS', N'PARRA', N'BEJARANO', N'12bl15071726423', 235581, 1, 5, 12, 2, 2, 0, CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (424, N'CONSUELO', N'CONSUELO', N'GOMEZ', N'12bl15071726424', 235911, 1, 4, 11, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (425, N'LILIA', N'DURAN', N'COLLADO', N'12bl15071726425', 235488, 1, 4, 15, 2, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (426, N'ESTELA', N'DEL', N'CONDE', N'12bl15071726426', 235929, 1, 5, 12, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (427, N'SEBASTIAN', N'SANTOS', N'GIRON', N'12bl15071726427', 235806, 1, 1, 15, 2, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (428, N'ISIDORO', N'GARCIA', N'BLANCH', N'12bl15071726428', 235890, 1, 5, 7, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (429, N'MARICRUZ', N'FERRANDEZ', N'ALMAGRO', N'12bl15071726429', 236139, 1, 1, 12, 2, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (430, N'MAXIMA', N'SALMERON', N'TENORIO', N'12bl15071726430', 235687, 1, 3, 13, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (431, N'LOLA', N'DE', N'PARRA', N'12bl15071726431', 235479, 1, 3, 9, 2, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (432, N'BALTASAR', N'BARRENA', N'RICART', N'12bl15071726432', 235240, 1, 3, 8, 2, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (433, N'HAROLDO', N'PUENTE', N'PULIDO', N'12bl15071726433', 235992, 1, 3, 10, 2, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (434, N'FLORENTINO', N'DEL', N'VERA', N'12bl15071726434', 235878, 1, 4, 6, 2, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (435, N'NARCISA', N'GALLARDO', N'URIA', N'12bl15071726435', 236251, 1, 3, 14, 2, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (436, N'ALONSO', N'HERNANDO', N'ARRIBAS', N'12bl15071726436', 235766, 1, 6, 8, 2, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (437, N'PATRICIA', N'CASTANEDA', N'PABLO', N'12bl15071726437', 236133, 1, 5, 13, 2, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (438, N'RAIMUNDO', N'JUAREZ', N'BLANCA', N'12bl15071726438', 235202, 1, 3, 6, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (439, N'BONIFACIO', N'FIGUEROA', N'DOMINGO', N'12bl15071726439', 235652, 1, 2, 11, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (440, N'FORTUNATO', N'BRU', N'ROVIRA', N'12bl15071726440', 235686, 1, 2, 12, 2, 2, 0, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (441, N'TADEO', N'NICOLAU', N'CARMONA', N'12bl15071726441', 235949, 1, 3, 10, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (442, N'PANFILO', N'ARREGUI', N'FERRERO', N'12bl15071726442', 236253, 1, 3, 13, 2, 2, 0, CAST(N'2020-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (443, N'RUFINO', N'DE', N'POMARES', N'12bl15071726443', 235375, 1, 6, 14, 2, 2, 0, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (444, N'GUILLERMO', N'BLAZQUEZ', N'SERNA', N'12bl15071726444', 235019, 1, 4, 15, 2, 2, 0, CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (445, N'BEGONA', N'BEGONA', N'ACUNA', N'12bl15071726445', 235909, 1, 1, 13, 2, 2, 0, CAST(N'2022-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (446, N'OVIDIO', N'OVIDIO', N'FUENTES', N'12bl15071726446', 234975, 1, 2, 5, 2, 2, 0, CAST(N'2022-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (447, N'FEBE', N'ESCRIVA', N'VALVERDE', N'12bl15071726447', 236376, 1, 3, 13, 2, 2, 0, CAST(N'2021-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (448, N'FERNANDO', N'DALMAU', N'COLL', N'12bl15071726448', 236384, 1, 6, 7, 2, 2, 0, CAST(N'2021-06-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (449, N'ARIEL', N'ORTIZ', N'MARQUES', N'12bl15071726449', 235338, 1, 2, 13, 2, 2, 0, CAST(N'2022-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (450, N'ISAAC', N'DE', N'OJEDA', N'12bl15071726450', 235862, 1, 2, 4, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (451, N'EUGENIO', N'MEDINA', N'BARROSO', N'12bl15071726451', 235562, 1, 2, 7, 2, 2, 0, CAST(N'2020-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (452, N'GUIOMAR', N'SANTOS', N'MORAN', N'12bl15071726452', 235721, 1, 6, 8, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (453, N'ANGELINO', N'LARRANAGA', N'BAUTISTA', N'12bl15071726453', 236082, 1, 6, 7, 2, 2, 0, CAST(N'2023-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (454, N'ALONDRA', N'RUANO', N'BAYON', N'12bl15071726454', 236089, 1, 1, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (455, N'WILFREDO', N'DEL', N'AMORES', N'12bl15071726455', 235326, 1, 5, 2, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (456, N'PAULINA', N'PAEZ', N'CABANAS', N'12bl15071726456', 235946, 1, 1, 14, 2, 2, 0, CAST(N'2020-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (457, N'MATILDE', N'ALCOLEA', N'HEREDIA', N'12bl15071726457', 236352, 1, 3, 13, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (458, N'EMMA', N'MORAN', N'BENET', N'12bl15071726458', 235870, 1, 6, 7, 2, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (459, N'CHUCHO', N'MINGUEZ', N'NINO', N'12bl15071726459', 234969, 1, 6, 4, 2, 2, 0, CAST(N'2023-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (460, N'IKER', N'ARANDA', N'ROMAN', N'12bl15071726460', 235474, 1, 5, 11, 2, 2, 0, CAST(N'2021-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (461, N'JESUS', N'SANTANA', N'GAYA', N'12bl15071726461', 236226, 1, 2, 10, 2, 2, 0, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (462, N'LIGIA', N'TORMO', N'CERRO', N'12bl15071726462', 235540, 1, 2, 11, 2, 2, 0, CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (463, N'SORAYA', N'CABELLO', N'PIQUER', N'12bl15071726463', 235526, 1, 6, 9, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (464, N'FLORENCIO', N'ABASCAL', N'ORTIZ', N'12bl15071726464', 235857, 1, 6, 6, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (465, N'ANABEL', N'BASTIDA', N'BONET', N'12bl15071726465', 236433, 1, 2, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (466, N'JULIO', N'ALBERDI', N'LUJAN', N'12bl15071726466', 235359, 1, 4, 9, 2, 2, 0, CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (467, N'EVELIA', N'ALBERO', N'VIGIL', N'12bl15071726467', 235449, 1, 3, 15, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (468, N'ZAIRA', N'CANALS', N'SALGADO', N'12bl15071726468', 235903, 1, 1, 6, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (469, N'MANU', N'URRUTIA', N'CADENAS', N'12bl15071726469', 236263, 1, 6, 2, 2, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (470, N'MARGARITA', N'MERCADER', N'LEON', N'12bl15071726470', 235821, 1, 6, 3, 2, 2, 0, CAST(N'2020-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (471, N'GALA', N'FERRER', N'BLAZQUEZ', N'12bl15071726471', 235953, 1, 2, 15, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (472, N'SABINA', N'HERAS', N'CABO', N'12bl15071726472', 235124, 1, 2, 13, 2, 2, 0, CAST(N'2022-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (473, N'NACIO', N'BENITEZ', N'SOLANO', N'12bl15071726473', 236220, 1, 3, 12, 2, 2, 0, CAST(N'2023-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (474, N'JOSE', N'CUEVAS', N'CABO', N'12bl15071726474', 235007, 1, 3, 13, 2, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (475, N'SEGISMUNDO', N'BERNAT', N'MALO', N'12bl15071726475', 235411, 1, 3, 2, 2, 2, 0, CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (476, N'SANTOS', N'MERINO', N'CUADRADO', N'12bl15071726476', 235613, 1, 2, 15, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (477, N'LUCIO', N'REGUERA', N'ROLDAN', N'12bl15071726477', 235346, 1, 6, 12, 2, 2, 0, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (478, N'AMARILIS', N'RIVERO', N'BARRIO', N'12bl15071726478', 235458, 1, 5, 8, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (479, N'LEIRE', N'RICO', N'ZAPATA', N'12bl15071726479', 235788, 1, 6, 15, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (480, N'CORNELIO', N'VILA', N'DOMENECH', N'12bl15071726480', 236266, 1, 6, 10, 2, 2, 0, CAST(N'2023-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (481, N'MARCELO', N'ARJONA', N'ALLER', N'12bl15071726481', 235542, 1, 3, 3, 2, 2, 0, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (482, N'PLACIDO', N'ALEGRE', N'ESPARZA', N'12bl15071726482', 235501, 1, 5, 14, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (483, N'NATANAEL', N'MARTINEZ', N'AGUSTI', N'12bl15071726483', 235437, 1, 3, 13, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (484, N'ELIAS', N'CARRASCO', N'ARROYO', N'12bl15071726484', 236000, 1, 1, 15, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (485, N'LARA', N'GABALDON', N'SANTAMARIA', N'12bl15071726485', 236287, 1, 4, 6, 2, 2, 0, CAST(N'2020-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (486, N'CARMEN', N'TORRENS', N'AMOROS', N'12bl15071726486', 235825, 1, 4, 5, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (487, N'YOLANDA', N'YOLANDA', N'ARTIGAS', N'12bl15071726487', 235621, 1, 4, 5, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (488, N'AMOR', N'AMOR', N'ROMAN', N'12bl15071726488', 236187, 1, 3, 13, 2, 2, 0, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (489, N'GALA', N'PALAU', N'LLOPIS', N'12bl15071726489', 235418, 1, 1, 7, 2, 2, 0, CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (490, N'SEVERIANO', N'LORENZO', N'DOMINGUEZ', N'12bl15071726490', 236369, 1, 6, 10, 2, 2, 0, CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (491, N'ESTHER', N'RICART', N'TENA', N'12bl15071726491', 235185, 1, 3, 6, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (492, N'GERALDO', N'GERALDO', N'RUANO', N'12bl15071726492', 235824, 1, 6, 13, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (493, N'LUCHO', N'GARGALLO', N'VILLALBA', N'12bl15071726493', 235003, 1, 5, 14, 2, 2, 0, CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (494, N'BEGONA', N'CARVAJAL', N'ESPARZA', N'12bl15071726494', 235672, 1, 4, 15, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (495, N'BELEN', N'LASTRA', N'DIEZ', N'12bl15071726495', 234984, 1, 1, 3, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (496, N'YAIZA', N'YAIZA', N'ALVAREZ', N'12bl15071726496', 235514, 1, 6, 13, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (497, N'SABAS', N'DEL', N'CATALA', N'12bl15071726497', 235461, 1, 5, 9, 2, 2, 0, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (498, N'CATALINA', N'GODOY', N'CAMARA', N'12bl15071726498', 235885, 1, 1, 10, 2, 2, 0, CAST(N'2020-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (499, N'VIRGINIA', N'RIUS', N'GOICOECHEA', N'12bl15071726499', 235550, 1, 4, 13, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (500, N'CLOE', N'OLIVER', N'VICENS', N'12bl15071726500', 235926, 1, 1, 13, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (501, N'SONIA', N'PEIRO', N'COLL', N'12bl15071726501', 236168, 1, 2, 12, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (502, N'AMOR', N'MUNIZ', N'PORTERO', N'12bl15071726502', 236054, 1, 1, 13, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (503, N'OLIVIA', N'SECO', N'MELENDEZ', N'12bl15071726503', 236333, 1, 1, 3, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (504, N'GISELA', N'ZAPATA', N'GUIJARRO', N'12bl15071726504', 235678, 1, 3, 10, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (505, N'DAMIAN', N'MATE', N'MENDEZ', N'12bl15071726505', 235087, 1, 2, 5, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (506, N'REMIGIO', N'JORDA', N'SASTRE', N'12bl15071726506', 235675, 1, 2, 11, 2, 2, 0, CAST(N'2022-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (507, N'NICOLAS', N'PONCE', N'SOLANO', N'12bl15071726507', 236026, 1, 2, 3, 2, 2, 0, CAST(N'2023-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (508, N'PAULA', N'DOMENECH', N'ALMAGRO', N'12bl15071726508', 236349, 1, 2, 2, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (509, N'OLIVIA', N'LOPEZ', N'AGULLO', N'12bl15071726509', 235846, 1, 4, 15, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (510, N'EMILIO', N'CAMACHO', N'MOLINS', N'12bl15071726510', 235128, 1, 5, 11, 2, 2, 0, CAST(N'2021-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (511, N'BENIGNO', N'CATALAN', N'LINARES', N'12bl15071726511', 235650, 1, 4, 13, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (512, N'PILAR', N'FRANCISCO', N'ESPANA', N'12bl15071726512', 235400, 1, 6, 2, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (513, N'JOSE', N'CABANAS', N'BELMONTE', N'12bl15071726513', 235131, 1, 4, 10, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (514, N'CARMINA', N'PI', N'CAMPS', N'12bl15071726514', 234968, 1, 6, 8, 2, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (515, N'REBECA', N'REBECA', N'MAYORAL', N'12bl15071726515', 236320, 1, 6, 11, 2, 2, 0, CAST(N'2021-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (516, N'LUNA', N'CERRO', N'BARBERA', N'12bl15071726516', 236229, 1, 1, 7, 2, 2, 0, CAST(N'2020-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (517, N'PATRICIA', N'PORTERO', N'GRAU', N'12bl15071726517', 235684, 1, 4, 14, 2, 2, 0, CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (518, N'JORDAN', N'ECHEVERRIA', N'PLANA', N'12bl15071726518', 236238, 1, 5, 7, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (519, N'BEATRIZ', N'AGUILO', N'ALEGRIA', N'12bl15071726519', 235734, 1, 5, 5, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (520, N'PILI', N'LLUCH', N'PASTOR', N'12bl15071726520', 235661, 1, 2, 12, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (521, N'ROSENDA', N'GARGALLO', N'BORRELL', N'12bl15071726521', 235997, 1, 2, 4, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (522, N'VICENTA', N'LEON', N'FELIU', N'12bl15071726522', 236150, 1, 3, 4, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (523, N'JOSE', N'MONTERO', N'PINOL', N'12bl15071726523', 235567, 1, 6, 5, 2, 2, 0, CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (524, N'FELIX', N'DEL', N'SALA', N'12bl15071726524', 235321, 1, 3, 15, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (525, N'MARCIA', N'CARRASCO', N'GUERRA', N'12bl15071726525', 235786, 1, 6, 14, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (526, N'FILOMENA', N'ALFONSO', N'NICOLAS', N'12bl15071726526', 235179, 1, 5, 7, 2, 2, 0, CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (527, N'LEONEL', N'DEL', N'MADRID', N'12bl15071726527', 235692, 1, 4, 2, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (528, N'OMAR', N'PIQUER', N'TORO', N'12bl15071726528', 236120, 1, 3, 15, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (529, N'NORBERTO', N'DEL', N'CASAS', N'12bl15071726529', 235012, 1, 3, 13, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (530, N'RICO', N'MONTSERRAT', N'BARRAL', N'12bl15071726530', 235555, 1, 3, 11, 2, 2, 0, CAST(N'2023-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (531, N'BUENAVENTURA', N'GONZALEZ', N'LOBO', N'12bl15071726531', 235279, 1, 4, 3, 2, 2, 0, CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (532, N'REYNALDO', N'PERELLO', N'VERDU', N'12bl15071726532', 235575, 1, 3, 11, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (533, N'AMERICO', N'SOLIS', N'PERERA', N'12bl15071726533', 235405, 1, 4, 2, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (534, N'SEVERIANO', N'SOBRINO', N'HOYOS', N'12bl15071726534', 236227, 1, 6, 9, 2, 2, 0, CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (535, N'VALERIA', N'ZAMORA', N'QUINTANA', N'12bl15071726535', 236185, 1, 5, 13, 2, 2, 0, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (536, N'CHE', N'DE', N'NOGUEIRA', N'12bl15071726536', 235372, 1, 6, 11, 2, 2, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (537, N'MAYTE', N'CAMPILLO', N'GAYA', N'12bl15071726537', 235916, 1, 1, 6, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (538, N'ROSAURA', N'PALACIO', N'POSADA', N'12bl15071726538', 235696, 1, 4, 8, 2, 2, 0, CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (539, N'LUPE', N'CORDOBA', N'LEON', N'12bl15071726539', 235594, 1, 1, 6, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (540, N'ABRAHAM', N'GIRONA', N'OSORIO', N'12bl15071726540', 236171, 1, 5, 10, 2, 2, 0, CAST(N'2022-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (541, N'JOSE', N'PORRAS', N'GOMEZ', N'12bl15071726541', 235448, 1, 6, 10, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (542, N'TELMO', N'VILAPLANA', N'CALZADA', N'12bl15071726542', 236203, 1, 3, 2, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (543, N'MACARIA', N'DEL', N'DALMAU', N'12bl15071726543', 236401, 1, 3, 11, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (544, N'ADRIAN', N'LUZ', N'MANZANARES', N'12bl15071726544', 235810, 1, 3, 4, 2, 2, 0, CAST(N'2021-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (545, N'TEODOSIO', N'SUAREZ', N'CANALES', N'12bl15071726545', 236410, 1, 6, 10, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (546, N'MARCELINO', N'CORREA', N'MORALES', N'12bl15071726546', 236386, 1, 5, 13, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (547, N'ANSELMO', N'DE', N'GARGALLO', N'12bl15071726547', 235101, 1, 2, 2, 2, 2, 0, CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (548, N'DONATO', N'GONZALEZ', N'VILLANUEVA', N'12bl15071726548', 235352, 1, 5, 11, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (549, N'PERLA', N'PERLA', N'HUGUET', N'12bl15071726549', 236448, 1, 3, 9, 2, 2, 0, CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (550, N'JUAN', N'CANET', N'BARRAGAN', N'12bl15071726550', 235290, 1, 2, 7, 2, 2, 0, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (551, N'LEOCADIO', N'CASTILLO', N'HERAS', N'12bl15071726551', 235080, 1, 6, 7, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (552, N'NATALIO', N'ANAYA', N'RINCON', N'12bl15071726552', 236316, 1, 3, 11, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (553, N'CRISTIAN', N'ESPARZA', N'FERRAN', N'12bl15071726553', 236323, 1, 1, 6, 2, 2, 0, CAST(N'2021-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (554, N'GRACIELA', N'RIBES', N'VILLENA', N'12bl15071726554', 235121, 1, 2, 14, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (555, N'ADELAIDA', N'GILABERT', N'MATA', N'12bl15071726555', 235049, 1, 4, 13, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (556, N'CHELO', N'HUERTAS', N'PERALTA', N'12bl15071726556', 235981, 1, 1, 8, 2, 2, 0, CAST(N'2022-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (557, N'GASTON', N'CORBACHO', N'PIZARRO', N'12bl15071726557', 235416, 1, 3, 10, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (558, N'EVA', N'DE', N'MILLA', N'12bl15071726558', 236005, 1, 5, 11, 2, 2, 0, CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (559, N'GABINO', N'QUIROS', N'FUENTES', N'12bl15071726559', 235722, 1, 6, 10, 2, 2, 0, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (560, N'FRANCISCO', N'GOMEZ', N'BEJARANO', N'12bl15071726560', 235161, 1, 1, 5, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (561, N'DOMINGA', N'BAQUERO', N'JORDAN', N'12bl15071726561', 235146, 1, 2, 14, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (562, N'JENARO', N'SAAVEDRA', N'CANOVAS', N'12bl15071726562', 235098, 1, 6, 4, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (563, N'EUSTAQUIO', N'MILLA', N'OLIVE', N'12bl15071726563', 236017, 1, 1, 4, 2, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (564, N'GRACIANO', N'PRADO', N'CABRERA', N'12bl15071726564', 235309, 1, 1, 10, 2, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (565, N'TONO', N'BAENA', N'LAMAS', N'12bl15071726565', 235818, 1, 3, 12, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (566, N'ALMUDENA', N'PALMA', N'HERRERA', N'12bl15071726566', 234973, 1, 4, 7, 2, 2, 0, CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (567, N'OSCAR', N'QUINTANILLA', N'PAREJA', N'12bl15071726567', 235667, 1, 5, 10, 2, 2, 0, CAST(N'2022-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (568, N'EZEQUIEL', N'ARCO', N'BATLLE', N'12bl15071726568', 235428, 1, 4, 5, 2, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (569, N'ALICIA', N'ALBA', N'FLORES', N'12bl15071726569', 235877, 1, 4, 13, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (570, N'MANU', N'MONTENEGRO', N'PEDRO', N'12bl15071726570', 235084, 1, 2, 9, 2, 2, 0, CAST(N'2022-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (571, N'ELOY', N'DE', N'MURILLO', N'12bl15071726571', 236112, 1, 4, 3, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (572, N'JOSE', N'OCANA', N'SALES', N'12bl15071726572', 235384, 1, 5, 7, 2, 2, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (573, N'CESAR', N'PALAU', N'GALLEGO', N'12bl15071726573', 235871, 1, 4, 9, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (574, N'ROSARIO', N'MIGUEL', N'ESTEVEZ', N'12bl15071726574', 235325, 1, 2, 7, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (575, N'VICENTA', N'QUIROGA', N'URIARTE', N'12bl15071726575', 235689, 1, 4, 8, 2, 2, 0, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (576, N'CHUY', N'PONCE', N'PINOL', N'12bl15071726576', 235143, 1, 3, 10, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (577, N'FELIPA', N'GALINDO', N'ROMAN', N'12bl15071726577', 235607, 1, 3, 4, 2, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (578, N'GABINO', N'GABINO', N'VIZCAINO', N'12bl15071726578', 235020, 1, 2, 11, 2, 2, 0, CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (579, N'JOSE', N'DE', N'CAMPOY', N'12bl15071726579', 235095, 1, 6, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (580, N'TITO', N'GALLEGO', N'VELEZ', N'12bl15071726580', 235140, 1, 2, 9, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (581, N'NOA', N'ROCA', N'CASTILLA', N'12bl15071726581', 236309, 1, 1, 12, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (582, N'PRISCILA', N'ABRIL', N'PRIEGO', N'12bl15071726582', 235245, 1, 2, 2, 2, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (583, N'FEDERICO', N'VALERO', N'ROVIRA', N'12bl15071726583', 234997, 1, 5, 7, 2, 2, 0, CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (584, N'HUMBERTO', N'TUDELA', N'MAS', N'12bl15071726584', 235996, 1, 2, 9, 2, 2, 0, CAST(N'2021-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (585, N'ANA', N'ARNAIZ', N'QUEVEDO', N'12bl15071726585', 235149, 1, 5, 9, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (586, N'OSVALDO', N'SANTANA', N'TERRON', N'12bl15071726586', 235134, 1, 3, 7, 2, 2, 0, CAST(N'2022-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (587, N'JOSE', N'IBANEZ', N'PUGA', N'12bl15071726587', 235701, 1, 3, 3, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (588, N'DOLORES', N'GONI', N'ARNAIZ', N'12bl15071726588', 236024, 1, 5, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (589, N'ROXANA', N'APARICIO', N'VILLENA', N'12bl15071726589', 235169, 1, 1, 7, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (590, N'NIDIA', N'DEL', N'MONTANA', N'12bl15071726590', 235404, 1, 5, 3, 2, 2, 0, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (591, N'CARLOTA', N'ZURITA', N'VILALTA', N'12bl15071726591', 235565, 1, 6, 7, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (592, N'EFRAIN', N'CARRION', N'TORO', N'12bl15071726592', 236070, 1, 4, 13, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (593, N'SEBASTIAN', N'ARAMBURU', N'YANEZ', N'12bl15071726593', 235064, 1, 4, 5, 2, 2, 0, CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (594, N'DORITA', N'ESCOBAR', N'BELDA', N'12bl15071726594', 235118, 1, 3, 11, 2, 2, 0, CAST(N'2022-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (595, N'GISELA', N'GUITART', N'TORRECILLA', N'12bl15071726595', 235752, 1, 2, 12, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (596, N'FORTUNATA', N'BAEZ', N'CARRILLO', N'12bl15071726596', 236215, 1, 2, 6, 2, 2, 0, CAST(N'2023-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (597, N'PAULA', N'COZAR', N'ARCE', N'12bl15071726597', 236357, 1, 4, 5, 2, 2, 0, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (598, N'DAN', N'RECIO', N'BARON', N'12bl15071726598', 235320, 1, 1, 10, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (599, N'FIDEL', N'TENORIO', N'VARGAS', N'12bl15071726599', 235975, 1, 2, 6, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (600, N'DOLORES', N'MARCOS', N'GALINDO', N'12bl15071726600', 235657, 1, 5, 14, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (601, N'BALTASAR', N'ANDRES', N'OJEDA', N'12bl15071726601', 236055, 1, 4, 6, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (602, N'EMILIO', N'TEJERA', N'VALENZUELA', N'12bl15071726602', 236131, 1, 5, 5, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (603, N'ARTEMIO', N'ARTEMIO', N'VALERA', N'12bl15071726603', 235711, 1, 3, 3, 2, 2, 0, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (604, N'MARTIN', N'MARTIN', N'PORRAS', N'12bl15071726604', 236119, 1, 5, 15, 2, 2, 0, CAST(N'2020-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (605, N'SANTOS', N'LUIS', N'MONTESINOS', N'12bl15071726605', 235053, 1, 5, 4, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (606, N'MIRTA', N'TENORIO', N'VILLALONGA', N'12bl15071726606', 236361, 1, 5, 12, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (607, N'JESUSA', N'COELLO', N'CABELLO', N'12bl15071726607', 235046, 1, 3, 10, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (608, N'ILEANA', N'VELASCO', N'NORIEGA', N'12bl15071726608', 235804, 1, 5, 6, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (609, N'JOSE', N'ALCALDE', N'MARI', N'12bl15071726609', 235609, 1, 4, 11, 2, 2, 0, CAST(N'2022-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (610, N'ANSELMA', N'ANSELMA', N'LLABRES', N'12bl15071726610', 235893, 1, 2, 5, 2, 2, 0, CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (611, N'MARIA', N'ELIAS', N'VERA', N'12bl15071726611', 236199, 1, 6, 13, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (612, N'FITO', N'GIRONA', N'VERDEJO', N'12bl15071726612', 235011, 1, 4, 7, 2, 2, 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (613, N'TONO', N'CALVO', N'VAZQUEZ', N'12bl15071726613', 235200, 1, 2, 13, 2, 2, 0, CAST(N'2022-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (614, N'AMERICA', N'BLANCO', N'ASENJO', N'12bl15071726614', 235168, 1, 1, 15, 2, 2, 0, CAST(N'2023-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (615, N'DESIDERIO', N'CORONADO', N'HERNANDEZ', N'12bl15071726615', 235286, 1, 5, 14, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (616, N'NESTOR', N'BUENO', N'CARRENO', N'12bl15071726616', 236038, 1, 4, 13, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (617, N'HERACLIO', N'FRIAS', N'VALDERRAMA', N'12bl15071726617', 235538, 1, 3, 12, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (618, N'HERIBERTO', N'CASTELL', N'EXPOSITO', N'12bl15071726618', 235318, 1, 2, 10, 2, 2, 0, CAST(N'2022-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (619, N'ELVIRA', N'DEL', N'LERMA', N'12bl15071726619', 236087, 1, 5, 15, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (620, N'RAMONA', N'GASCON', N'GIMENO', N'12bl15071726620', 235659, 1, 4, 7, 2, 2, 0, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (621, N'APOLINAR', N'MAYO', N'VALERO', N'12bl15071726621', 235585, 1, 6, 14, 2, 2, 0, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (622, N'DAFNE', N'RIBERA', N'CARRION', N'12bl15071726622', 235396, 1, 1, 10, 2, 2, 0, CAST(N'2022-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (623, N'MIGUELA', N'ALVARO', N'ARTIGAS', N'12bl15071726623', 235706, 1, 5, 10, 2, 2, 0, CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (624, N'JUAN', N'LUIS', N'LLOBET', N'12bl15071726624', 235282, 1, 3, 6, 2, 2, 0, CAST(N'2022-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (625, N'JULIO', N'CASADO', N'DUENAS', N'12bl15071726625', 235120, 1, 6, 11, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (626, N'RENE', N'BLAZQUEZ', N'PENA', N'12bl15071726626', 235467, 1, 2, 12, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (627, N'SALVADOR', N'SOLANA', N'RIPOLL', N'12bl15071726627', 236268, 1, 5, 4, 2, 2, 0, CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (628, N'SANTOS', N'GALLART', N'OLMO', N'12bl15071726628', 235541, 1, 2, 12, 2, 2, 0, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (629, N'LETICIA', N'RAYA', N'PERA', N'12bl15071726629', 235750, 1, 6, 14, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (630, N'EMILIANA', N'RIBES', N'MANUEL', N'12bl15071726630', 235694, 1, 5, 3, 2, 2, 0, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (631, N'CHELO', N'FERNANDEZ', N'BARRAGAN', N'12bl15071726631', 236136, 1, 5, 15, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (632, N'LALO', N'CORTINA', N'JAEN', N'12bl15071726632', 235841, 1, 4, 15, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (633, N'PEPE', N'CAZORLA', N'DIEGO', N'12bl15071726633', 235590, 1, 5, 4, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (634, N'PANCHO', N'DE', N'RIOS', N'12bl15071726634', 235531, 1, 6, 15, 2, 2, 0, CAST(N'2022-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (635, N'TOMASA', N'OSORIO', N'PERALTA', N'12bl15071726635', 235190, 1, 1, 10, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (636, N'DOMINGA', N'DOMINGA', N'SOLE', N'12bl15071726636', 236035, 1, 6, 2, 2, 2, 0, CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (637, N'ISIDORO', N'JEREZ', N'SEBASTIAN', N'12bl15071726637', 236228, 1, 3, 7, 2, 2, 0, CAST(N'2021-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (638, N'TRINIDAD', N'DE', N'ESTRADA', N'12bl15071726638', 235253, 1, 2, 5, 2, 2, 0, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (639, N'FERMIN', N'AGULLO', N'BARON', N'12bl15071726639', 235292, 1, 2, 2, 2, 2, 0, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (640, N'VINICIO', N'MURO', N'HIGUERAS', N'12bl15071726640', 235863, 1, 3, 9, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (641, N'ROLANDO', N'CORREA', N'VILLALBA', N'12bl15071726641', 236422, 1, 2, 6, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (642, N'ALCIDES', N'NEIRA', N'MOYA', N'12bl15071726642', 235313, 1, 2, 15, 2, 2, 0, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (643, N'RENATA', N'DURAN', N'BUENDIA', N'12bl15071726643', 235258, 1, 1, 6, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (644, N'SUSANITA', N'VALERO', N'BOU', N'12bl15071726644', 235660, 1, 2, 10, 2, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (645, N'PEDRO', N'MAS', N'MANZANO', N'12bl15071726645', 235238, 1, 5, 2, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (646, N'SOCORRO', N'VILLALOBOS', N'VILLENA', N'12bl15071726646', 235712, 1, 1, 2, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (647, N'CAROLINA', N'CAROLINA', N'LOPEZ', N'12bl15071726647', 236034, 1, 4, 10, 2, 2, 0, CAST(N'2021-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (648, N'TEOFILO', N'DE', N'SACRISTAN', N'12bl15071726648', 236195, 1, 5, 7, 2, 2, 0, CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (649, N'ANA', N'DEL', N'HIGUERAS', N'12bl15071726649', 235850, 1, 6, 13, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (650, N'SATURNINO', N'VILLAVERDE', N'BUSTOS', N'12bl15071726650', 235450, 1, 3, 13, 2, 2, 0, CAST(N'2020-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (651, N'VANESA', N'MARTORELL', N'CUADRADO', N'12bl15071726651', 235708, 1, 4, 2, 2, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (652, N'JOSE', N'SANS', N'HURTADO', N'12bl15071726652', 235978, 1, 2, 6, 2, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (653, N'PANCHO', N'MARISCAL', N'PEREZ', N'12bl15071726653', 236190, 1, 1, 5, 2, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (654, N'HECTOR', N'FERRERA', N'PINO', N'12bl15071726654', 235864, 1, 3, 3, 2, 2, 0, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (655, N'JAFET', N'LLOBET', N'MAS', N'12bl15071726655', 235717, 1, 3, 11, 2, 2, 0, CAST(N'2021-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (656, N'NOEMI', N'IGLESIAS', N'VICENS', N'12bl15071726656', 235605, 1, 6, 7, 2, 2, 0, CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (657, N'EMELINA', N'LLADO', N'ARCOS', N'12bl15071726657', 235070, 1, 2, 3, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (658, N'AGATA', N'ALARCON', N'RIOS', N'12bl15071726658', 235663, 1, 2, 12, 2, 2, 0, CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (659, N'DIANA', N'DEL', N'CHAVES', N'12bl15071726659', 236282, 1, 6, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (660, N'URBANO', N'CASANOVAS', N'CRESPO', N'12bl15071726660', 236425, 1, 3, 3, 2, 2, 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (661, N'MAXI', N'ROZAS', N'CARRENO', N'12bl15071726661', 235742, 1, 2, 13, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (662, N'ALBINO', N'ALBINO', N'HURTADO', N'12bl15071726662', 236438, 1, 3, 9, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (663, N'ANGELINA', N'MANZANO', N'MATEO', N'12bl15071726663', 235403, 1, 4, 2, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (664, N'JOSE', N'ALEMAN', N'VALCARCEL', N'12bl15071726664', 235630, 1, 1, 14, 2, 2, 0, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (665, N'RAMIRO', N'GINER', N'HURTADO', N'12bl15071726665', 235091, 1, 5, 15, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (666, N'ANTONIA', N'SARMIENTO', N'BADIA', N'12bl15071726666', 235647, 1, 2, 11, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (667, N'RAUL', N'MARCO', N'ROSELL', N'12bl15071726667', 235041, 1, 3, 8, 2, 2, 0, CAST(N'2022-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (668, N'YESSICA', N'DE', N'PALOMAR', N'12bl15071726668', 235765, 1, 2, 3, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (669, N'ESTELA', N'VILANOVA', N'FRUTOS', N'12bl15071726669', 235424, 1, 1, 15, 2, 2, 0, CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (670, N'GRISELDA', N'JULIA', N'PERELLO', N'12bl15071726670', 236153, 1, 2, 2, 2, 2, 0, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (671, N'MELANIA', N'SALAZAR', N'BAYONA', N'12bl15071726671', 234952, 1, 5, 6, 2, 2, 0, CAST(N'2021-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (672, N'HILDA', N'ROPERO', N'SANMARTIN', N'12bl15071726672', 236122, 1, 6, 15, 2, 2, 0, CAST(N'2020-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (673, N'CONSUELO', N'CONSUELO', N'AROCA', N'12bl15071726673', 236341, 1, 5, 5, 2, 2, 0, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (674, N'NAZARIO', N'BUSTAMANTE', N'PRIEGO', N'12bl15071726674', 235332, 1, 2, 15, 2, 2, 0, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (675, N'CIRO', N'RODA', N'AGULLO', N'12bl15071726675', 235044, 1, 3, 15, 2, 2, 0, CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (676, N'CARLOS', N'CHAPARRO', N'SILVA', N'12bl15071726676', 234989, 1, 2, 6, 2, 2, 0, CAST(N'2023-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (677, N'ISIDRO', N'TRUJILLO', N'CASTELLANOS', N'12bl15071726677', 235521, 1, 6, 10, 2, 2, 0, CAST(N'2021-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (678, N'ERIC', N'SEGUI', N'MINGUEZ', N'12bl15071726678', 235004, 1, 5, 14, 2, 2, 0, CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (679, N'HAROLDO', N'ABELLA', N'FEIJOO', N'12bl15071726679', 236240, 1, 2, 11, 2, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (680, N'LUPE', N'DEL', N'SAINZ', N'12bl15071726680', 235636, 1, 5, 10, 2, 2, 0, CAST(N'2021-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (681, N'BARTOLOME', N'GILABERT', N'SALMERON', N'12bl15071726681', 235962, 1, 2, 11, 2, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (682, N'CLIMACO', N'MELERO', N'CASANOVA', N'12bl15071726682', 235203, 1, 5, 13, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (683, N'DOMITILA', N'CARRENO', N'SALES', N'12bl15071726683', 235151, 1, 4, 5, 2, 2, 0, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (684, N'SALUD', N'CARBAJO', N'ANDRES', N'12bl15071726684', 235298, 1, 5, 11, 2, 2, 0, CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (685, N'RUFINA', N'SAEZ', N'LEIVA', N'12bl15071726685', 235485, 1, 5, 14, 2, 2, 0, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (686, N'ALCIDES', N'ALCIDES', N'MANCEBO', N'12bl15071726686', 235611, 1, 6, 7, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (687, N'ANTONIO', N'LUNA', N'GOMEZ', N'12bl15071726687', 235835, 1, 2, 6, 2, 2, 0, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (688, N'MAXIMA', N'DEL', N'HARO', N'12bl15071726688', 235986, 1, 5, 5, 2, 2, 0, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (689, N'CLOTILDE', N'DE', N'VIANA', N'12bl15071726689', 235942, 1, 5, 12, 2, 2, 0, CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (690, N'CONRADO', N'COLOMA', N'NINO', N'12bl15071726690', 236021, 1, 4, 2, 2, 2, 0, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (691, N'CAMILO', N'DE', N'BONET', N'12bl15071726691', 235301, 1, 2, 7, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (692, N'MAGDALENA', N'VARGAS', N'OLIVER', N'12bl15071726692', 235443, 1, 5, 15, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (693, N'PANCHO', N'PANCHO', N'BOIX', N'12bl15071726693', 235633, 1, 1, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (694, N'OBDULIA', N'PINEDA', N'MORILLO', N'12bl15071726694', 235105, 1, 3, 10, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (695, N'MARIANELA', N'BARRAL', N'JAUREGUI', N'12bl15071726695', 235674, 1, 2, 12, 2, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (696, N'CLOTILDE', N'DE', N'ARCE', N'12bl15071726696', 236274, 1, 2, 15, 2, 2, 0, CAST(N'2021-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (697, N'RODOLFO', N'CHAMORRO', N'PAREDES', N'12bl15071726697', 236138, 1, 5, 4, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (698, N'GUILLERMO', N'ARAMBURU', N'GARGALLO', N'12bl15071726698', 234976, 1, 5, 14, 2, 2, 0, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (699, N'NESTOR', N'REVILLA', N'AGUILA', N'12bl15071726699', 235713, 1, 2, 5, 2, 2, 0, CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (700, N'MARIBEL', N'DEL', N'SANZ', N'12bl15071726700', 234995, 1, 6, 15, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (701, N'SALOMON', N'OCANA', N'TORRECILLA', N'12bl15071726701', 235060, 1, 3, 6, 2, 2, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (702, N'ZAIDA', N'PELAEZ', N'CERVANTES', N'12bl15071726702', 235973, 1, 3, 2, 2, 2, 0, CAST(N'2022-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (703, N'CLOTILDE', N'JORDA', N'SANCHEZ', N'12bl15071726703', 235792, 1, 6, 4, 2, 2, 0, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (704, N'AURORA', N'GALVEZ', N'NOGUES', N'12bl15071726704', 235272, 1, 3, 9, 2, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (705, N'CELIA', N'VALLE', N'PASTOR', N'12bl15071726705', 236175, 1, 2, 13, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (706, N'SANDRA', N'TORO', N'PERALTA', N'12bl15071726706', 235175, 1, 6, 14, 2, 2, 0, CAST(N'2021-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (707, N'GUADALUPE', N'DEL', N'VALLES', N'12bl15071726707', 235025, 1, 6, 3, 2, 2, 0, CAST(N'2021-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (708, N'AZENETH', N'PALACIOS', N'PALLARES', N'12bl15071726708', 234998, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (709, N'GABRIEL', N'BARBERO', N'ESPANOL', N'12bl15071726709', 235271, 1, 3, 7, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (710, N'PORFIRIO', N'BENET', N'GALVEZ', N'12bl15071726710', 235082, 1, 2, 3, 2, 2, 0, CAST(N'2022-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (711, N'VALERO', N'BOTELLA', N'DUQUE', N'12bl15071726711', 235642, 1, 2, 15, 2, 2, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (712, N'JOSEP', N'DEL', N'GALAN', N'12bl15071726712', 235591, 1, 4, 9, 2, 2, 0, CAST(N'2022-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (713, N'CHELO', N'REY', N'AZCONA', N'12bl15071726713', 236387, 1, 3, 10, 2, 2, 0, CAST(N'2023-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (714, N'LORENZO', N'MOSQUERA', N'RIOS', N'12bl15071726714', 235111, 1, 5, 8, 2, 2, 0, CAST(N'2022-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (715, N'BERNARDA', N'DE', N'MONREAL', N'12bl15071726715', 236304, 1, 2, 14, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (716, N'DONATO', N'GISBERT', N'RIOS', N'12bl15071726716', 235076, 1, 1, 5, 2, 2, 0, CAST(N'2020-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (717, N'VALERIO', N'CASES', N'MAYORAL', N'12bl15071726717', 236272, 1, 4, 11, 2, 2, 0, CAST(N'2023-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (718, N'HUGO', N'DIAZ', N'CASTILLA', N'12bl15071726718', 234960, 1, 3, 3, 2, 2, 0, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (719, N'FLORENTINO', N'MONTOYA', N'MOLINA', N'12bl15071726719', 236033, 1, 2, 6, 2, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (720, N'SEBASTIAN', N'BOIX', N'BAYO', N'12bl15071726720', 235702, 1, 1, 13, 2, 2, 0, CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (721, N'SILVESTRE', N'GALLARDO', N'SANTAMARIA', N'12bl15071726721', 236178, 1, 2, 9, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (722, N'DUILIO', N'ESTEVEZ', N'DOMINGO', N'12bl15071726722', 235547, 1, 1, 12, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (723, N'CESAR', N'NOGUEIRA', N'ESTEVE', N'12bl15071726723', 236434, 1, 3, 2, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (724, N'JOSEFINA', N'GISBERT', N'SEDANO', N'12bl15071726724', 235211, 1, 1, 15, 2, 2, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (725, N'ROSARIO', N'BELMONTE', N'SEGOVIA', N'12bl15071726725', 235244, 1, 5, 15, 2, 2, 0, CAST(N'2022-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (726, N'FABIO', N'CARRENO', N'BERNAD', N'12bl15071726726', 235592, 1, 4, 11, 2, 2, 0, CAST(N'2021-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (727, N'ETELVINA', N'PEDRAZA', N'GIMENEZ', N'12bl15071726727', 236415, 1, 2, 13, 2, 2, 0, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (728, N'ANSELMA', N'BELLIDO', N'PIQUER', N'12bl15071726728', 235059, 1, 6, 4, 2, 2, 0, CAST(N'2022-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (729, N'ROSENDO', N'NOGUES', N'MIR', N'12bl15071726729', 236430, 1, 3, 2, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (730, N'CELESTINO', N'CELESTINO', N'ALARCON', N'12bl15071726730', 236262, 1, 2, 12, 2, 2, 0, CAST(N'2020-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (731, N'JORDI', N'JORDI', N'GODOY', N'12bl15071726731', 235772, 1, 4, 2, 2, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (732, N'ROSALIA', N'ROSALIA', N'VILALTA', N'12bl15071726732', 235880, 1, 5, 12, 2, 2, 0, CAST(N'2022-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (733, N'MAITE', N'HERRERA', N'JORDAN', N'12bl15071726733', 236079, 1, 4, 8, 2, 2, 0, CAST(N'2022-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (734, N'FELICIA', N'ROSELL', N'CAMACHO', N'12bl15071726734', 235016, 1, 3, 4, 2, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (735, N'ROMULO', N'SIMO', N'LILLO', N'12bl15071726735', 236358, 1, 2, 2, 2, 2, 0, CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (736, N'SAMANTA', N'PALOMARES', N'DOMENECH', N'12bl15071726736', 235944, 1, 2, 7, 2, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (737, N'DEMETRIO', N'CASALS', N'GUZMAN', N'12bl15071726737', 236368, 1, 2, 4, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (738, N'MAYTE', N'DE', N'SANMIGUEL', N'12bl15071726738', 236049, 1, 2, 5, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (739, N'MARTIN', N'SOLIS', N'ALAMO', N'12bl15071726739', 235523, 1, 1, 4, 2, 2, 0, CAST(N'2021-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (740, N'JOSE', N'COLOMER', N'BILBAO', N'12bl15071726740', 236398, 1, 4, 2, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (741, N'PAZ', N'PENA', N'CATALA', N'12bl15071726741', 235902, 1, 4, 9, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (742, N'SOSIMO', N'PADILLA', N'GUERRERO', N'12bl15071726742', 235280, 1, 2, 3, 2, 2, 0, CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (743, N'EDGAR', N'SOLANO', N'PANIAGUA', N'12bl15071726743', 235599, 1, 5, 14, 2, 2, 0, CAST(N'2023-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (744, N'IKER', N'PINO', N'RECIO', N'12bl15071726744', 236319, 1, 5, 9, 2, 2, 0, CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (745, N'RICO', N'JURADO', N'CARRETERO', N'12bl15071726745', 235073, 1, 4, 12, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (746, N'TEOFILA', N'DEL', N'GALAN', N'12bl15071726746', 235036, 1, 2, 6, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (747, N'MELISA', N'DE', N'POL', N'12bl15071726747', 235654, 1, 5, 9, 2, 2, 0, CAST(N'2022-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (748, N'VICTOR', N'GUARDIA', N'MANRIQUE', N'12bl15071726748', 235033, 1, 4, 6, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (749, N'OSCAR', N'ACUNA', N'VALDERRAMA', N'12bl15071726749', 235447, 1, 5, 9, 2, 2, 0, CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (750, N'CLARA', N'ALFARO', N'LLORET', N'12bl15071726750', 235795, 1, 1, 14, 2, 2, 0, CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (751, N'LEIRE', N'LEIRE', N'CIFUENTES', N'12bl15071726751', 236097, 1, 2, 2, 2, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (752, N'LORENA', N'ARRIBAS', N'TORMO', N'12bl15071726752', 236300, 1, 6, 7, 2, 2, 0, CAST(N'2020-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (753, N'BERNABE', N'BERNABE', N'VALENCIA', N'12bl15071726753', 236331, 1, 4, 9, 2, 2, 0, CAST(N'2021-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (754, N'MARCELO', N'RIVAS', N'RODRIGUEZ', N'12bl15071726754', 235482, 1, 1, 8, 2, 2, 0, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (755, N'MAURICIO', N'AMORES', N'CUESTA', N'12bl15071726755', 235385, 1, 2, 3, 2, 2, 0, CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (756, N'JUAN', N'CASTELLANOS', N'CORDERO', N'12bl15071726756', 235409, 1, 3, 2, 2, 2, 0, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (757, N'PIEDAD', N'BORRAS', N'DIEZ', N'12bl15071726757', 235273, 1, 1, 2, 2, 2, 0, CAST(N'2021-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (758, N'VALENTIN', N'JAUME', N'VALENZUELA', N'12bl15071726758', 235921, 1, 2, 8, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (759, N'ROSALVA', N'SALAZAR', N'SOSA', N'12bl15071726759', 236356, 1, 6, 7, 2, 2, 0, CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (760, N'TRINIDAD', N'GALAN', N'RIOS', N'12bl15071726760', 235757, 1, 4, 9, 2, 2, 0, CAST(N'2022-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (761, N'OLIVIA', N'ALCOLEA', N'HERRERO', N'12bl15071726761', 235376, 1, 4, 15, 2, 2, 0, CAST(N'2020-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (762, N'GERVASIO', N'HURTADO', N'LILLO', N'12bl15071726762', 234954, 1, 2, 3, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (763, N'LEON', N'ANDRADE', N'CAMACHO', N'12bl15071726763', 235966, 1, 3, 6, 2, 2, 0, CAST(N'2020-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (764, N'LINA', N'GUILLEN', N'CORBACHO', N'12bl15071726764', 235126, 1, 5, 5, 2, 2, 0, CAST(N'2020-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (765, N'FLORINA', N'FLORINA', N'SOLER', N'12bl15071726765', 235578, 1, 5, 7, 2, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (766, N'SOFIA', N'ANTON', N'ESCOBAR', N'12bl15071726766', 235815, 1, 5, 10, 2, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (767, N'ESPIRIDION', N'SAEZ', N'JORDAN', N'12bl15071726767', 234980, 1, 6, 7, 2, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (768, N'AMELIA', N'BLASCO', N'VIDAL', N'12bl15071726768', 235174, 1, 1, 9, 2, 2, 0, CAST(N'2021-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (769, N'LEANDRO', N'ALBA', N'ROLDAN', N'12bl15071726769', 235285, 1, 1, 9, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (770, N'FABIO', N'OLIVERAS', N'VERDEJO', N'12bl15071726770', 235445, 1, 1, 11, 2, 2, 0, CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (771, N'EUGENIO', N'DUENAS', N'LLORET', N'12bl15071726771', 236385, 1, 5, 12, 2, 2, 0, CAST(N'2023-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (772, N'CLARISA', N'GISBERT', N'GUTIERREZ', N'12bl15071726772', 235528, 1, 1, 4, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (773, N'AARON', N'ALSINA', N'CAMPOY', N'12bl15071726773', 236031, 1, 5, 14, 2, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (774, N'GASPAR', N'PASCUAL', N'URENA', N'12bl15071726774', 235164, 1, 2, 13, 2, 2, 0, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (775, N'MARISTELA', N'DEL', N'FIGUEROLA', N'12bl15071726775', 236207, 1, 2, 11, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (776, N'INES', N'AGUILA', N'VILAR', N'12bl15071726776', 236429, 1, 5, 3, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (777, N'MACARIO', N'DE', N'LLORET', N'12bl15071726777', 234992, 1, 5, 13, 2, 2, 0, CAST(N'2023-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (778, N'DIONISIO', N'OSUNA', N'CASARES', N'12bl15071726778', 236428, 1, 5, 10, 2, 2, 0, CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (779, N'LUIS', N'DEL', N'PAREDES', N'12bl15071726779', 236389, 1, 2, 6, 2, 2, 0, CAST(N'2022-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (780, N'BENITO', N'FUENTE', N'POU', N'12bl15071726780', 235571, 1, 5, 6, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (781, N'MARTA', N'DEL', N'MIGUEL', N'12bl15071726781', 235237, 1, 3, 6, 2, 2, 0, CAST(N'2022-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (782, N'AURA', N'PERA', N'FIOL', N'12bl15071726782', 235582, 1, 2, 3, 2, 2, 0, CAST(N'2020-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (783, N'RICO', N'VALLE', N'VENDRELL', N'12bl15071726783', 236080, 1, 3, 14, 2, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (784, N'ANIBAL', N'BOIX', N'QUIROS', N'12bl15071726784', 235317, 1, 5, 7, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (785, N'LEOPOLDO', N'NEBOT', N'JUAREZ', N'12bl15071726785', 235534, 1, 5, 15, 2, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (786, N'YESICA', N'MENENDEZ', N'SAEZ', N'12bl15071726786', 236027, 1, 4, 4, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (787, N'GERMAN', N'PINILLA', N'ARCOS', N'12bl15071726787', 235644, 1, 3, 3, 2, 2, 0, CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (788, N'RUBEN', N'PALACIOS', N'BANOS', N'12bl15071726788', 235395, 1, 5, 9, 2, 2, 0, CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (789, N'JUAN', N'PABLO', N'ARANA', N'12bl15071726789', 236374, 1, 2, 3, 2, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (790, N'LEONCIO', N'BOIX', N'SAURA', N'12bl15071726790', 235029, 1, 5, 4, 2, 2, 0, CAST(N'2022-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (791, N'BARTOLOME', N'BARTOLOME', N'CUERVO', N'12bl15071726791', 236335, 1, 6, 14, 2, 2, 0, CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (792, N'ANACLETO', N'GRACIA', N'CALZADA', N'12bl15071726792', 235430, 1, 4, 5, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (793, N'LALO', N'LALO', N'HEREDIA', N'12bl15071726793', 235536, 1, 1, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (794, N'GREGORIO', N'CEREZO', N'TORO', N'12bl15071726794', 235666, 1, 4, 10, 2, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (795, N'ELOY', N'BENAVENTE', N'CORTINA', N'12bl15071726795', 235206, 1, 6, 2, 2, 2, 0, CAST(N'2023-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (796, N'JESSICA', N'SARMIENTO', N'FERNANDEZ', N'12bl15071726796', 235148, 1, 3, 5, 2, 2, 0, CAST(N'2020-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (797, N'ERNESTO', N'SALVA', N'ARNAIZ', N'12bl15071726797', 236445, 1, 6, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (798, N'FIDELA', N'OLMO', N'FAJARDO', N'12bl15071726798', 236115, 1, 2, 6, 2, 2, 0, CAST(N'2021-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (799, N'VALERIO', N'BARCENA', N'PASTOR', N'12bl15071726799', 235417, 1, 1, 8, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (800, N'GENOVEVA', N'BAUTISTA', N'ANGULO', N'12bl15071726800', 235933, 1, 1, 10, 2, 2, 0, CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (801, N'APOLINAR', N'FIOL', N'OLIVERA', N'12bl15071726801', 235718, 1, 4, 12, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (802, N'AFRICA', N'DEL', N'LLUCH', N'12bl15071726802', 235943, 1, 3, 9, 2, 2, 0, CAST(N'2023-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (803, N'DORA', N'ALCANTARA', N'LARRANAGA', N'12bl15071726803', 235220, 1, 4, 4, 2, 2, 0, CAST(N'2020-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (804, N'AZAHAR', N'LOBATO', N'CHAPARRO', N'12bl15071726804', 235002, 1, 4, 4, 2, 2, 0, CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (805, N'ANA', N'NAVARRO', N'NIETO', N'12bl15071726805', 236162, 1, 6, 8, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (806, N'AMOR', N'ARNAL', N'MORERA', N'12bl15071726806', 236018, 1, 6, 4, 2, 2, 0, CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (807, N'JACOBO', N'TORRE', N'SALA', N'12bl15071726807', 235990, 1, 3, 7, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (808, N'ARTEMIO', N'RINCON', N'DALMAU', N'12bl15071726808', 235882, 1, 6, 2, 2, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (809, N'MORENA', N'ESCAMILLA', N'SALMERON', N'12bl15071726809', 235623, 1, 4, 8, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (810, N'OCTAVIO', N'SEGARRA', N'VAZQUEZ', N'12bl15071726810', 235250, 1, 6, 6, 2, 2, 0, CAST(N'2020-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (811, N'ABRAHAM', N'ABRAHAM', N'QUIROGA', N'12bl15071726811', 235262, 1, 5, 8, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (812, N'JUAN', N'MESA', N'CAPDEVILA', N'12bl15071726812', 235028, 1, 4, 5, 2, 2, 0, CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (813, N'VICTOR', N'DE', N'CAMPOY', N'12bl15071726813', 236210, 1, 5, 8, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (814, N'DEMETRIO', N'SANJUAN', N'CARRENO', N'12bl15071726814', 235094, 1, 2, 4, 2, 2, 0, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (815, N'PAZ', N'SANTANA', N'DOMINGUEZ', N'12bl15071726815', 235725, 1, 5, 9, 2, 2, 0, CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (816, N'EDGAR', N'CANELLAS', N'ROSELLO', N'12bl15071726816', 235438, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (817, N'JOSEFINA', N'CORONADO', N'ZURITA', N'12bl15071726817', 235408, 1, 3, 2, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (818, N'AINARA', N'PALOMO', N'TAPIA', N'12bl15071726818', 235759, 1, 1, 10, 2, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (819, N'ESPERANZA', N'RIBAS', N'BAEZA', N'12bl15071726819', 235486, 1, 3, 3, 2, 2, 0, CAST(N'2022-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (820, N'MARCOS', N'SALVADOR', N'REYES', N'12bl15071726820', 235755, 1, 2, 9, 2, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (821, N'BERNARDA', N'RODRIGO', N'BERMUDEZ', N'12bl15071726821', 236392, 1, 4, 15, 2, 2, 0, CAST(N'2022-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (822, N'PLINIO', N'PLINIO', N'REDONDO', N'12bl15071726822', 235969, 1, 1, 12, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (823, N'ISIDORO', N'FRUTOS', N'ARJONA', N'12bl15071726823', 236197, 1, 4, 15, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (824, N'MORENA', N'DEL', N'CASALS', N'12bl15071726824', 235875, 1, 5, 15, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (825, N'JENNY', N'INIESTA', N'ALBEROLA', N'12bl15071726825', 236010, 1, 1, 10, 2, 2, 0, CAST(N'2021-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (826, N'GEMA', N'ALEMANY', N'MOLINS', N'12bl15071726826', 235843, 1, 5, 13, 2, 2, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (827, N'REINA', N'ZAMORANO', N'QUIROGA', N'12bl15071726827', 235509, 1, 5, 9, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (828, N'CALIXTO', N'MIRALLES', N'RIBERA', N'12bl15071726828', 236326, 1, 5, 8, 2, 2, 0, CAST(N'2022-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (829, N'MARCO', N'HERNANDEZ', N'VILLEGAS', N'12bl15071726829', 236154, 1, 6, 3, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (830, N'CELSO', N'DUENAS', N'BORRAS', N'12bl15071726830', 235311, 1, 3, 2, 2, 2, 0, CAST(N'2021-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (831, N'PONCIO', N'CUELLAR', N'PINEDA', N'12bl15071726831', 235690, 1, 3, 5, 2, 2, 0, CAST(N'2022-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (832, N'JACINTO', N'CABEZAS', N'FABRA', N'12bl15071726832', 235748, 1, 4, 5, 2, 2, 0, CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (833, N'BENJAMIN', N'SANTOS', N'RODRIGO', N'12bl15071726833', 234961, 1, 1, 2, 2, 2, 0, CAST(N'2022-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (834, N'ANASTASIO', N'JARA', N'ANGLADA', N'12bl15071726834', 235854, 1, 1, 15, 2, 2, 0, CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (835, N'TEOFILO', N'ESPARZA', N'ROLDAN', N'12bl15071726835', 235048, 1, 2, 2, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (836, N'LUCHO', N'ABELLAN', N'ALVARO', N'12bl15071726836', 235446, 1, 4, 7, 2, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (837, N'EUFEMIA', N'VIANA', N'CAMINO', N'12bl15071726837', 235554, 1, 4, 12, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (838, N'ALEJANDRO', N'ARCOS', N'PALMER', N'12bl15071726838', 236036, 1, 2, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (839, N'YOLANDA', N'GARRIGA', N'MOSQUERA', N'12bl15071726839', 235177, 1, 6, 10, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (840, N'ANTONIO', N'BARRIO', N'GISBERT', N'12bl15071726840', 235296, 1, 2, 9, 2, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (841, N'JULIE', N'JULIE', N'ELORZA', N'12bl15071726841', 235108, 1, 5, 15, 2, 2, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (842, N'VICTOR', N'CARMONA', N'FIGUEROLA', N'12bl15071726842', 235198, 1, 5, 15, 2, 2, 0, CAST(N'2020-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (843, N'MARCIA', N'FERRERAS', N'VELAZQUEZ', N'12bl15071726843', 235923, 1, 3, 6, 2, 2, 0, CAST(N'2022-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (844, N'BAUDELIO', N'MONTSERRAT', N'BERNAD', N'12bl15071726844', 235022, 1, 1, 11, 2, 2, 0, CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (845, N'RICARDA', N'ARIAS', N'ARRIETA', N'12bl15071726845', 235480, 1, 5, 7, 2, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (846, N'PIO', N'REYES', N'BENAVIDES', N'12bl15071726846', 236140, 1, 2, 15, 2, 2, 0, CAST(N'2022-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (847, N'EVARISTO', N'TERUEL', N'LOBATO', N'12bl15071726847', 235401, 1, 2, 6, 2, 2, 0, CAST(N'2023-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (848, N'JEREMIAS', N'RIOS', N'GALLART', N'12bl15071726848', 235891, 1, 3, 6, 2, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (849, N'EUSTAQUIO', N'SANZ', N'EGEA', N'12bl15071726849', 234957, 1, 5, 13, 2, 2, 0, CAST(N'2022-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (850, N'PEDRO', N'OTERO', N'ROSADO', N'12bl15071726850', 235791, 1, 4, 9, 2, 2, 0, CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (851, N'EUGENIA', N'EUGENIA', N'PRATS', N'12bl15071726851', 236235, 1, 6, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (852, N'AGUSTINA', N'AGUSTINA', N'NICOLAS', N'12bl15071726852', 235130, 1, 6, 14, 2, 2, 0, CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (853, N'GLORIA', N'GLORIA', N'CANIZARES', N'12bl15071726853', 235330, 1, 4, 4, 2, 2, 0, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (854, N'MARIA', N'PELAEZ', N'MENDIZABAL', N'12bl15071726854', 236142, 1, 1, 9, 2, 2, 0, CAST(N'2022-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (855, N'CRISTIAN', N'MORANTE', N'SOTO', N'12bl15071726855', 236102, 1, 5, 9, 2, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (856, N'PACO', N'CODINA', N'MERINO', N'12bl15071726856', 235984, 1, 4, 15, 2, 2, 0, CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (857, N'EVARISTO', N'DEL', N'ECHEVARRIA', N'12bl15071726857', 235693, 1, 2, 13, 2, 2, 0, CAST(N'2021-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (858, N'EUGENIA', N'ALEMAN', N'CABANILLAS', N'12bl15071726858', 234958, 1, 2, 4, 2, 2, 0, CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (859, N'ERASMO', N'LLANOS', N'BAYONA', N'12bl15071726859', 236105, 1, 3, 4, 2, 2, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (860, N'BIBIANA', N'BIBIANA', N'TORRALBA', N'12bl15071726860', 235593, 1, 4, 2, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (861, N'LEON', N'COZAR', N'ESCAMILLA', N'12bl15071726861', 236093, 1, 1, 11, 2, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (862, N'SERGIO', N'CASES', N'DUARTE', N'12bl15071726862', 235135, 1, 2, 9, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (863, N'NORBERTO', N'CORONADO', N'VILLALBA', N'12bl15071726863', 235669, 1, 1, 9, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (864, N'YESICA', N'DE', N'COCA', N'12bl15071726864', 235732, 1, 1, 13, 2, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (865, N'FABIOLA', N'TOLOSA', N'CARRILLO', N'12bl15071726865', 236275, 1, 2, 14, 2, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (866, N'BARTOLOME', N'ESPINOSA', N'FABREGAT', N'12bl15071726866', 236173, 1, 1, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (867, N'FABIANA', N'FERRANDIZ', N'BERNAD', N'12bl15071726867', 236419, 1, 2, 7, 2, 2, 0, CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (868, N'MARTA', N'COLOMA', N'GUILLEN', N'12bl15071726868', 235300, 1, 1, 13, 2, 2, 0, CAST(N'2021-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (869, N'JACINTA', N'AZORIN', N'ALCARAZ', N'12bl15071726869', 235115, 1, 5, 2, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (870, N'VIVIANA', N'DE', N'BAEZA', N'12bl15071726870', 235433, 1, 4, 14, 2, 2, 0, CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (871, N'CANDIDA', N'PINO', N'ROCAMORA', N'12bl15071726871', 235406, 1, 2, 15, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (872, N'ALEXANDRA', N'JAEN', N'BURGOS', N'12bl15071726872', 235368, 1, 4, 15, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (873, N'MERCHE', N'MERCHE', N'VILLALONGA', N'12bl15071726873', 235440, 1, 1, 10, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (874, N'RAQUEL', N'ARAGONES', N'DOMINGUEZ', N'12bl15071726874', 235473, 1, 5, 13, 2, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (875, N'ROSALVA', N'JUAN', N'AGUILERA', N'12bl15071726875', 234967, 1, 2, 2, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (876, N'JORDANA', N'REY', N'GARRIGA', N'12bl15071726876', 236391, 1, 2, 9, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (877, N'MARIA', N'MARTI', N'SALA', N'12bl15071726877', 236217, 1, 2, 5, 2, 2, 0, CAST(N'2023-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (878, N'JULIO', N'JULIO', N'NARVAEZ', N'12bl15071726878', 235955, 1, 3, 12, 2, 2, 0, CAST(N'2023-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (879, N'BENJAMIN', N'DE', N'BARROS', N'12bl15071726879', 235478, 1, 1, 4, 2, 2, 0, CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (880, N'TRINI', N'DE', N'CADENAS', N'12bl15071726880', 235021, 1, 2, 14, 2, 2, 0, CAST(N'2020-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (881, N'SALUD', N'VELAZQUEZ', N'ALCOLEA', N'12bl15071726881', 235063, 1, 3, 5, 2, 2, 0, CAST(N'2021-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (882, N'ERNESTO', N'MELENDEZ', N'VEGA', N'12bl15071726882', 235363, 1, 4, 2, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (883, N'CARMINA', N'SUAREZ', N'AMORES', N'12bl15071726883', 235255, 1, 1, 3, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (884, N'AMAYA', N'FRIAS', N'URIBE', N'12bl15071726884', 235043, 1, 6, 6, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (885, N'GASTON', N'OJEDA', N'OLIVARES', N'12bl15071726885', 235529, 1, 4, 8, 2, 2, 0, CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (886, N'TORIBIO', N'CABO', N'CARBONELL', N'12bl15071726886', 236325, 1, 5, 12, 2, 2, 0, CAST(N'2022-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (887, N'RAMON', N'QUEVEDO', N'MARQUEZ', N'12bl15071726887', 235192, 1, 3, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (888, N'ALONDRA', N'PRIETO', N'GONI', N'12bl15071726888', 235207, 1, 5, 15, 2, 2, 0, CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (889, N'JOSE', N'VELAZQUEZ', N'DELGADO', N'12bl15071726889', 235199, 1, 4, 2, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (890, N'FELIPA', N'CORTES', N'PENAS', N'12bl15071726890', 235522, 1, 2, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (891, N'CARMEN', N'RIERA', N'BERMEJO', N'12bl15071726891', 236189, 1, 2, 15, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (892, N'MIGUEL', N'MARCOS', N'CABO', N'12bl15071726892', 235549, 1, 6, 7, 2, 2, 0, CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (893, N'JORDAN', N'JORDAN', N'FERRAN', N'12bl15071726893', 236270, 1, 1, 3, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (894, N'MARCELINO', N'SAMPER', N'BERNAD', N'12bl15071726894', 235150, 1, 4, 9, 2, 2, 0, CAST(N'2020-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (895, N'ASDRUBAL', N'ECHEVERRIA', N'LUIS', N'12bl15071726895', 236072, 1, 4, 13, 2, 2, 0, CAST(N'2022-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (896, N'JOAQUIN', N'DEL', N'TRILLO', N'12bl15071726896', 235604, 1, 6, 14, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (897, N'NURIA', N'BLAZQUEZ', N'MONREAL', N'12bl15071726897', 235141, 1, 1, 8, 2, 2, 0, CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (898, N'RODOLFO', N'CODINA', N'VALENTIN', N'12bl15071726898', 235780, 1, 5, 8, 2, 2, 0, CAST(N'2020-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (899, N'ISMAEL', N'OLLER', N'PASTOR', N'12bl15071726899', 235739, 1, 1, 2, 2, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (900, N'MANOLO', N'TOME', N'TOLOSA', N'12bl15071726900', 235303, 1, 6, 5, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (901, N'IRENE', N'RINCON', N'CUELLAR', N'12bl15071726901', 235106, 1, 6, 11, 2, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (902, N'ELEUTERIO', N'RECIO', N'HURTADO', N'12bl15071726902', 236252, 1, 1, 4, 2, 2, 0, CAST(N'2020-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (903, N'WILFREDO', N'WILFREDO', N'QUESADA', N'12bl15071726903', 235928, 1, 5, 10, 2, 2, 0, CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (904, N'CORONA', N'PRIETO', N'CALDERON', N'12bl15071726904', 236052, 1, 4, 8, 2, 2, 0, CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (905, N'JOEL', N'LARREA', N'ATIENZA', N'12bl15071726905', 235097, 1, 1, 9, 2, 2, 0, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (906, N'ENCARNITA', N'ROVIRA', N'BORRELL', N'12bl15071726906', 235527, 1, 4, 7, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (907, N'ISAURA', N'DE', N'SUAREZ', N'12bl15071726907', 235681, 1, 4, 4, 2, 2, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (908, N'LUPITA', N'COLOMER', N'FRANCISCO', N'12bl15071726908', 235331, 1, 3, 3, 2, 2, 0, CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (909, N'JULIE', N'MANSO', N'BAYON', N'12bl15071726909', 235899, 1, 1, 4, 2, 2, 0, CAST(N'2021-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (910, N'QUIRINO', N'QUIRINO', N'GELABERT', N'12bl15071726910', 235266, 1, 4, 13, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (911, N'LEONCIO', N'LEONCIO', N'VALENTIN', N'12bl15071726911', 236260, 1, 1, 3, 2, 2, 0, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (912, N'RUPERTO', N'OLLER', N'TORRES', N'12bl15071726912', 236075, 1, 6, 14, 2, 2, 0, CAST(N'2020-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (913, N'FABIO', N'CARRERA', N'BARBERO', N'12bl15071726913', 235333, 1, 3, 8, 2, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (914, N'MARIA', N'INIESTA', N'HOYOS', N'12bl15071726914', 235032, 1, 5, 15, 2, 2, 0, CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (915, N'SOCORRO', N'SOCORRO', N'JOVE', N'12bl15071726915', 235232, 1, 1, 13, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (916, N'ELENA', N'ATIENZA', N'MENDEZ', N'12bl15071726916', 236196, 1, 6, 15, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (917, N'CESAR', N'CESAR', N'QUINTERO', N'12bl15071726917', 235733, 1, 6, 5, 2, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (918, N'CEFERINO', N'ECHEVARRIA', N'PLANA', N'12bl15071726918', 236125, 1, 4, 4, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (919, N'RUFINO', N'PLAZA', N'APARICIO', N'12bl15071726919', 235270, 1, 5, 13, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (920, N'ENRIQUE', N'AYUSO', N'LILLO', N'12bl15071726920', 235918, 1, 2, 4, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (921, N'REMIGIO', N'BARCO', N'SACRISTAN', N'12bl15071726921', 235566, 1, 3, 14, 2, 2, 0, CAST(N'2021-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (922, N'AGATA', N'PORTA', N'ESCOBAR', N'12bl15071726922', 235112, 1, 4, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (923, N'GERMAN', N'COLOMER', N'GRANDE', N'12bl15071726923', 234962, 1, 5, 6, 2, 2, 0, CAST(N'2020-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (924, N'MARCO', N'MORALES', N'ALEGRIA', N'12bl15071726924', 235905, 1, 6, 4, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (925, N'RUBEN', N'OSUNA', N'JAUME', N'12bl15071726925', 235829, 1, 2, 2, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (926, N'NATIVIDAD', N'NEIRA', N'ARNAU', N'12bl15071726926', 235031, 1, 5, 12, 2, 2, 0, CAST(N'2020-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (927, N'LUCHO', N'LUCHO', N'SERRANO', N'12bl15071726927', 236179, 1, 6, 7, 2, 2, 0, CAST(N'2022-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (928, N'ANGELES', N'VILLA', N'CORRAL', N'12bl15071726928', 236302, 1, 1, 4, 2, 2, 0, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (929, N'ANA', N'ESCOLANO', N'TORRENT', N'12bl15071726929', 235336, 1, 2, 12, 2, 2, 0, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (930, N'NAZARET', N'BOSCH', N'AGUSTIN', N'12bl15071726930', 235883, 1, 3, 11, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (931, N'ANITA', N'MUNIZ', N'CARDONA', N'12bl15071726931', 235679, 1, 4, 14, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (932, N'DOROTEA', N'AGUILO', N'EXPOSITO', N'12bl15071726932', 236091, 1, 4, 9, 2, 2, 0, CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (933, N'ISABELA', N'IGLESIAS', N'UGARTE', N'12bl15071726933', 234994, 1, 1, 13, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (934, N'ENCARNACION', N'COLL', N'ROMAN', N'12bl15071726934', 235178, 1, 5, 15, 2, 2, 0, CAST(N'2021-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (935, N'CARMELA', N'VILA', N'CABEZAS', N'12bl15071726935', 235083, 1, 2, 2, 2, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (936, N'JOEL', N'JOEL', N'CALATAYUD', N'12bl15071726936', 235340, 1, 3, 4, 2, 2, 0, CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (937, N'FLORINDA', N'ZABALETA', N'FUERTES', N'12bl15071726937', 235373, 1, 4, 10, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (938, N'XIOMARA', N'XIOMARA', N'TELLO', N'12bl15071726938', 236113, 1, 3, 5, 2, 2, 0, CAST(N'2021-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (939, N'SANTIAGO', N'SOLSONA', N'CUENCA', N'12bl15071726939', 235645, 1, 2, 4, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (940, N'TELMO', N'OLIVE', N'JAEN', N'12bl15071726940', 236284, 1, 2, 10, 2, 2, 0, CAST(N'2020-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (941, N'CECILIA', N'DE', N'CHAVES', N'12bl15071726941', 235201, 1, 1, 9, 2, 2, 0, CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (942, N'ANGELINO', N'ALARCON', N'MIRO', N'12bl15071726942', 235917, 1, 2, 6, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (943, N'VICTOR', N'URIA', N'CARRO', N'12bl15071726943', 234979, 1, 5, 12, 2, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (944, N'ELIANA', N'REBOLLO', N'BERROCAL', N'12bl15071726944', 235800, 1, 6, 2, 2, 2, 0, CAST(N'2020-06-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (945, N'URSULA', N'PAZOS', N'RECIO', N'12bl15071726945', 235970, 1, 1, 11, 2, 2, 0, CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (946, N'ROBERTA', N'ROBERTA', N'POMARES', N'12bl15071726946', 235823, 1, 2, 9, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (947, N'JULIAN', N'MOLES', N'AGULLO', N'12bl15071726947', 236157, 1, 1, 2, 2, 2, 0, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (948, N'CINTIA', N'DE', N'CARNERO', N'12bl15071726948', 236294, 1, 1, 9, 2, 2, 0, CAST(N'2023-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (949, N'CANDELARIA', N'ESCOLANO', N'DUENAS', N'12bl15071726949', 235042, 1, 2, 11, 2, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (950, N'EUFEMIA', N'SALGADO', N'MURO', N'12bl15071726950', 235243, 1, 3, 10, 2, 2, 0, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (951, N'GUADALUPE', N'AVILA', N'BERTRAN', N'12bl15071726951', 235427, 1, 5, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (952, N'PATRICIO', N'SALVADOR', N'ANGULO', N'12bl15071726952', 236291, 1, 5, 7, 2, 2, 0, CAST(N'2021-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (953, N'JOSE', N'SANDOVAL', N'SOLER', N'12bl15071726953', 235779, 1, 3, 14, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (954, N'BONIFACIO', N'MORELL', N'BARCENA', N'12bl15071726954', 235056, 1, 2, 10, 2, 2, 0, CAST(N'2022-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (955, N'LEOPOLDO', N'BLANCH', N'VILAR', N'12bl15071726955', 235117, 1, 2, 12, 2, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (956, N'ELISA', N'ALCAZAR', N'CARO', N'12bl15071726956', 235985, 1, 2, 6, 2, 2, 0, CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (957, N'DEMETRIO', N'DOMINGO', N'PEDRAZA', N'12bl15071726957', 235077, 1, 4, 5, 2, 2, 0, CAST(N'2020-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (958, N'FELICIANA', N'OSUNA', N'MARTIN', N'12bl15071726958', 235822, 1, 6, 11, 2, 2, 0, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (959, N'XAVIER', N'LAMAS', N'HARO', N'12bl15071726959', 235601, 1, 5, 14, 2, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (960, N'ROBERTO', N'ROBERTO', N'FERRER', N'12bl15071726960', 235769, 1, 3, 5, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (961, N'AFRICA', N'DEL', N'SANZ', N'12bl15071726961', 235228, 1, 4, 11, 2, 2, 0, CAST(N'2022-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (962, N'ZORAIDA', N'ACOSTA', N'PENALVER', N'12bl15071726962', 235837, 1, 3, 6, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (963, N'MARIA', N'FERNANDA', N'BARRENA', N'12bl15071726963', 235989, 1, 5, 10, 2, 2, 0, CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (964, N'SEVERIANO', N'DE', N'CASTELLS', N'12bl15071726964', 236373, 1, 2, 4, 2, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (965, N'RAMONA', N'BERMUDEZ', N'TORRIJOS', N'12bl15071726965', 236403, 1, 6, 13, 2, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (966, N'BRUNILDA', N'PALOMO', N'BLANCH', N'12bl15071726966', 235641, 1, 3, 10, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (967, N'BLAS', N'POL', N'MORATA', N'12bl15071726967', 236030, 1, 1, 12, 2, 2, 0, CAST(N'2020-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (968, N'AMADOR', N'AMADOR', N'HERVIA', N'12bl15071726968', 235165, 1, 2, 11, 2, 2, 0, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (969, N'GIL', N'GONZALO', N'CARDENAS', N'12bl15071726969', 235378, 1, 3, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (970, N'RENE', N'IZQUIERDO', N'ALBERTO', N'12bl15071726970', 235462, 1, 2, 11, 2, 2, 0, CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (971, N'RAIMUNDO', N'RAIMUNDO', N'GARCES', N'12bl15071726971', 236224, 1, 4, 5, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (972, N'RUFINO', N'RUFINO', N'OLIVA', N'12bl15071726972', 235865, 1, 1, 3, 2, 2, 0, CAST(N'2020-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (973, N'VICTORINO', N'HERRERO', N'CUADRADO', N'12bl15071726973', 235700, 1, 3, 7, 2, 2, 0, CAST(N'2023-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (974, N'IVAN', N'DEL', N'CLEMENTE', N'12bl15071726974', 236156, 1, 5, 14, 2, 2, 0, CAST(N'2020-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (975, N'ELISA', N'BAQUERO', N'ALBA', N'12bl15071726975', 236328, 1, 5, 13, 2, 2, 0, CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (976, N'EMMA', N'BRIONES', N'MONTSERRAT', N'12bl15071726976', 236045, 1, 6, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (977, N'HILARIO', N'ROMEU', N'LEDESMA', N'12bl15071726977', 235603, 1, 6, 7, 2, 2, 0, CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (978, N'AMAYA', N'SANABRIA', N'TERRON', N'12bl15071726978', 235251, 1, 4, 12, 2, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (979, N'ANGELES', N'CALZADA', N'LOPEZ', N'12bl15071726979', 236011, 1, 3, 5, 2, 2, 0, CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (980, N'EVANGELINA', N'ALEGRIA', N'GOMEZ', N'12bl15071726980', 235807, 1, 5, 4, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (981, N'CORNELIO', N'VELEZ', N'FRANCISCO', N'12bl15071726981', 236004, 1, 6, 10, 2, 2, 0, CAST(N'2020-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (982, N'NICO', N'PERELLO', N'MANZANARES', N'12bl15071726982', 235287, 1, 2, 4, 2, 2, 0, CAST(N'2020-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (983, N'ARANZAZU', N'ARANZAZU', N'ARMAS', N'12bl15071726983', 236273, 1, 1, 10, 2, 2, 0, CAST(N'2023-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (984, N'ANTONIA', N'MENDEZ', N'MERINO', N'12bl15071726984', 235638, 1, 3, 7, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (985, N'ELODIA', N'LINARES', N'BERROCAL', N'12bl15071726985', 235349, 1, 1, 2, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (986, N'TRISTAN', N'BATALLA', N'BLANCA', N'12bl15071726986', 235556, 1, 5, 9, 2, 2, 0, CAST(N'2022-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (987, N'NICODEMO', N'PEREIRA', N'LLORENTE', N'12bl15071726987', 235315, 1, 6, 8, 2, 2, 0, CAST(N'2020-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (988, N'VICTOR', N'SAENZ', N'ESTEVE', N'12bl15071726988', 235979, 1, 5, 14, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (989, N'JOSE', N'REGUERA', N'PASTOR', N'12bl15071726989', 235295, 1, 4, 6, 2, 2, 0, CAST(N'2021-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (990, N'SARA', N'FLORES', N'ESPINOSA', N'12bl15071726990', 235312, 1, 1, 7, 2, 2, 0, CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (991, N'BERNARDO', N'DEL', N'COLOM', N'12bl15071726991', 235492, 1, 4, 3, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (992, N'ROBERTO', N'ROBERTO', N'BEJARANO', N'12bl15071726992', 236436, 1, 2, 7, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (993, N'JENNIFER', N'GRANADOS', N'BENAVENTE', N'12bl15071726993', 236396, 1, 3, 10, 2, 2, 0, CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (994, N'HUMBERTO', N'GAMEZ', N'CASANOVA', N'12bl15071726994', 236359, 1, 2, 3, 2, 2, 0, CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (995, N'SANTIAGO', N'MONTENEGRO', N'RINCON', N'12bl15071726995', 236099, 1, 3, 3, 2, 2, 0, CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (996, N'CANDELARIO', N'CANDELARIO', N'MUNIZ', N'12bl15071726996', 235740, 1, 6, 7, 2, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (997, N'FIDELA', N'LORENZO', N'GALVEZ', N'12bl15071726997', 235045, 1, 2, 2, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (998, N'FIDEL', N'DOMINGO', N'GARCES', N'12bl15071726998', 235381, 1, 4, 10, 2, 2, 0, CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (999, N'ALMUDENA', N'CORTES', N'GUILLEN', N'12bl15071726999', 236137, 1, 3, 6, 2, 2, 0, CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1000, N'FABIANA', N'VALERO', N'MARMOL', N'12bl15071721000', 235138, 1, 2, 5, 2, 2, 0, CAST(N'2021-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1001, N'DIANA', N'DEL', N'SOBRINO', N'12bl15071721001', 236148, 1, 6, 12, 2, 2, 0, CAST(N'2021-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1002, N'IMELDA', N'CORBACHO', N'BERROCAL', N'12bl15071721002', 234965, 1, 5, 5, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1003, N'MARIA', N'JODAR', N'OROZCO', N'12bl15071721003', 235308, 1, 2, 5, 2, 2, 0, CAST(N'2017-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1004, N'MARIA', N'DOLORES', N'CARRASCO', N'12bl15071721004', 235415, 1, 4, 14, 2, 2, 0, CAST(N'2021-07-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1005, N'MANU', N'PALOMARES', N'SOLERA', N'12bl15071721005', 235358, 1, 6, 8, 2, 2, 0, CAST(N'2015-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1006, N'PABLO', N'BLANCH', N'BATLLE', N'12bl15071721006', 236423, 1, 5, 6, 2, 2, 0, CAST(N'2018-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1007, N'JORDAN', N'ALMAZAN', N'ROCA', N'12bl15071721007', 236293, 1, 3, 3, 2, 2, 0, CAST(N'2019-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1008, N'BASILIO', N'PAZOS', N'MACIAS', N'12bl15071721008', 235505, 1, 5, 2, 2, 2, 0, CAST(N'2015-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1009, N'HIPOLITO', N'FUENTE', N'GUAL', N'12bl15071721009', 236254, 1, 6, 7, 2, 2, 0, CAST(N'2017-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1010, N'PETRONA', N'PETRONA', N'COMPANY', N'12bl15071721010', 236193, 1, 6, 4, 2, 2, 0, CAST(N'2019-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1011, N'MARIA', N'ESTEVEZ', N'TOVAR', N'12bl15071721011', 236044, 1, 5, 12, 2, 2, 0, CAST(N'2019-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1012, N'MELCHOR', N'MELCHOR', N'TEJEDOR', N'12bl15071721012', 235304, 1, 3, 8, 2, 2, 0, CAST(N'2011-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1013, N'AURA', N'FARRE', N'SOLER', N'12bl15071721013', 235938, 1, 5, 3, 2, 2, 0, CAST(N'2010-08-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1014, N'EFRAIN', N'JULIAN', N'SALCEDO', N'12bl15071721014', 236180, 1, 2, 9, 2, 2, 0, CAST(N'2021-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1015, N'SEVERIANO', N'MAS', N'SANTIAGO', N'12bl15071721015', 235873, 1, 1, 13, 2, 2, 0, CAST(N'2019-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1016, N'TERESA', N'ALBERDI', N'LARRANAGA', N'12bl15071721016', 235348, 1, 6, 10, 2, 2, 0, CAST(N'2011-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1017, N'JUAN', N'LOPEZ', N'MONTOYA', N'12bl15071721017', 235412, 1, 6, 7, 2, 2, 0, CAST(N'2019-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1018, N'ALMA', N'CASANOVA', N'ANGEL', N'12bl15071721018', 236269, 1, 3, 10, 2, 2, 0, CAST(N'2021-07-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1019, N'NIDIA', N'DE', N'ROYO', N'12bl15071721019', 235383, 1, 4, 3, 2, 2, 0, CAST(N'2015-09-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1020, N'ROSA', N'GUERRERO', N'BRAVO', N'12bl15071721020', 235158, 1, 4, 5, 2, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1021, N'VINICIO', N'VINICIO', N'DURAN', N'12bl15071721021', 235803, 1, 4, 15, 2, 2, 0, CAST(N'2014-08-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1022, N'GLORIA', N'TABOADA', N'MUGICA', N'12bl15071721022', 236346, 1, 6, 7, 2, 2, 0, CAST(N'2022-09-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1023, N'MIGUEL', N'BENITEZ', N'FRANCISCO', N'12bl15071721023', 235463, 1, 2, 10, 2, 2, 0, CAST(N'2013-07-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1024, N'CIRINO', N'CIRINO', N'PERALTA', N'12bl15071721024', 235964, 1, 5, 2, 2, 2, 0, CAST(N'2014-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1025, N'GRACIELA', N'PEINADO', N'RIPOLL', N'12bl15071721025', 236110, 1, 4, 7, 2, 2, 0, CAST(N'2020-08-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1026, N'IMELDA', N'BORREGO', N'FEIJOO', N'12bl15071721026', 236060, 1, 1, 3, 2, 2, 0, CAST(N'2014-08-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1027, N'ROMULO', N'ROMULO', N'TRILLO', N'12bl15071721027', 235254, 1, 5, 15, 2, 2, 0, CAST(N'2015-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1028, N'PANFILO', N'CORTES', N'SAEZ', N'12bl15071721028', 235017, 1, 6, 3, 2, 2, 0, CAST(N'2011-08-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1029, N'AUREA', N'ALCOLEA', N'LLORET', N'12bl15071721029', 235367, 1, 3, 10, 2, 2, 0, CAST(N'2016-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1030, N'AMADOR', N'GILABERT', N'VILA', N'12bl15071721030', 236366, 1, 1, 8, 2, 2, 0, CAST(N'2010-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1031, N'BERTA', N'MIGUEL', N'SOMOZA', N'12bl15071721031', 235018, 1, 6, 15, 2, 2, 0, CAST(N'2014-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1032, N'FABIO', N'FLORES', N'IGLESIAS', N'12bl15071721032', 235464, 1, 4, 12, 2, 2, 0, CAST(N'2016-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1033, N'SAMANTA', N'SOLER', N'CATALAN', N'12bl15071721033', 235189, 1, 4, 15, 2, 2, 0, CAST(N'2019-07-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1034, N'EVARISTO', N'OCHOA', N'MACIAS', N'12bl15071721034', 236211, 1, 1, 14, 2, 2, 0, CAST(N'2013-07-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1035, N'ADORACION', N'GINER', N'AGUILO', N'12bl15071721035', 235229, 1, 2, 2, 2, 2, 0, CAST(N'2017-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1036, N'CAYETANO', N'CAYETANO', N'LOPEZ', N'12bl15071721036', 236375, 1, 4, 4, 2, 2, 0, CAST(N'2019-07-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1037, N'ANI', N'ROPERO', N'ALONSO', N'12bl15071721037', 236449, 1, 5, 6, 2, 2, 0, CAST(N'2012-09-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1038, N'MIGUEL', N'DE', N'PEINADO', N'12bl15071721038', 236426, 1, 1, 12, 2, 2, 0, CAST(N'2012-09-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1039, N'RAQUEL', N'RIVERO', N'RIVAS', N'12bl15071721039', 235085, 1, 2, 7, 2, 2, 0, CAST(N'2013-09-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1040, N'JULIA', N'JULIA', N'ARAMBURU', N'12bl15071721040', 236312, 1, 4, 14, 2, 2, 0, CAST(N'2010-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1041, N'JUAN', N'CORNEJO', N'FERRANDEZ', N'12bl15071721041', 236062, 1, 2, 5, 2, 2, 0, CAST(N'2017-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1042, N'INIGO', N'ALEGRE', N'MARI', N'12bl15071721042', 235307, 1, 4, 3, 2, 2, 0, CAST(N'2015-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1043, N'FRANCISCO', N'JOSE', N'MORENO', N'12bl15071721043', 235951, 1, 5, 8, 2, 2, 0, CAST(N'2010-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1044, N'GEMA', N'GEMA', N'CALVO', N'12bl15071721044', 236339, 1, 1, 15, 2, 2, 0, CAST(N'2015-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1045, N'ELI', N'ESCALONA', N'BENAVIDES', N'12bl15071721045', 235892, 1, 4, 3, 2, 2, 0, CAST(N'2022-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1046, N'ANSELMO', N'CUERVO', N'GALIANO', N'12bl15071721046', 235065, 1, 1, 10, 2, 2, 0, CAST(N'2017-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1047, N'MARINA', N'LUCAS', N'MATA', N'12bl15071721047', 235849, 1, 4, 7, 2, 2, 0, CAST(N'2018-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1048, N'XAVIER', N'CABEZA', N'GUAL', N'12bl15071721048', 235735, 1, 5, 5, 2, 2, 0, CAST(N'2015-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1049, N'TONI', N'JURADO', N'PEREZ', N'12bl15071721049', 236023, 1, 3, 13, 2, 2, 0, CAST(N'2020-08-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1050, N'CARMELA', N'ZAMORANO', N'PLAZA', N'12bl15071721050', 235617, 1, 4, 4, 2, 2, 0, CAST(N'2018-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1051, N'GEMA', N'ATIENZA', N'CANTERO', N'12bl15071721051', 236061, 1, 1, 9, 2, 2, 0, CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1052, N'DESIDERIO', N'SAMPER', N'RODENAS', N'12bl15071721052', 235749, 1, 5, 9, 2, 2, 0, CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1053, N'INIGO', N'PEDRAZA', N'TORRALBA', N'12bl15071721053', 235371, 1, 5, 11, 2, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1054, N'PAULINO', N'ROPERO', N'PANIAGUA', N'12bl15071721054', 235677, 1, 2, 12, 2, 2, 0, CAST(N'2018-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1055, N'SALOMON', N'RAMIREZ', N'SALAS', N'12bl15071721055', 234985, 1, 5, 9, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1056, N'CUSTODIA', N'GOICOECHEA', N'CERRO', N'12bl15071721056', 236201, 1, 4, 4, 2, 2, 0, CAST(N'2010-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1057, N'CHARO', N'CATALAN', N'CARRASCO', N'12bl15071721057', 235454, 1, 6, 12, 2, 2, 0, CAST(N'2011-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1058, N'AMERICA', N'CORDOBA', N'SALMERON', N'12bl15071721058', 235276, 1, 3, 2, 2, 2, 0, CAST(N'2012-07-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1059, N'APOLINAR', N'SANMIGUEL', N'ALBA', N'12bl15071721059', 235113, 1, 4, 13, 2, 2, 0, CAST(N'2010-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1060, N'COSME', N'DEL', N'ESCRIBANO', N'12bl15071721060', 235157, 1, 1, 2, 2, 2, 0, CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1061, N'ELISABET', N'TORRE', N'QUINTANILLA', N'12bl15071721061', 236355, 1, 1, 4, 2, 2, 0, CAST(N'2011-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1062, N'LEOCADIO', N'IZQUIERDO', N'ESTRADA', N'12bl15071721062', 236074, 1, 3, 2, 2, 2, 0, CAST(N'2012-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1063, N'RUPERTA', N'BOTELLA', N'PLAZA', N'12bl15071721063', 235136, 1, 4, 2, 2, 2, 0, CAST(N'2012-07-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1064, N'ZAIRA', N'ZAIRA', N'LEON', N'12bl15071721064', 235998, 1, 1, 14, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1065, N'HERNANDO', N'SOLERA', N'OCANA', N'12bl15071721065', 235915, 1, 2, 10, 2, 2, 0, CAST(N'2010-08-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1066, N'JORDANA', N'POZO', N'FUERTES', N'12bl15071721066', 235494, 1, 3, 2, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1067, N'MOISES', N'COLOMER', N'PEREZ', N'12bl15071721067', 235584, 1, 2, 4, 2, 2, 0, CAST(N'2010-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1068, N'LOURDES', N'VALERA', N'MANZANO', N'12bl15071721068', 235393, 1, 1, 7, 2, 2, 0, CAST(N'2022-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1069, N'DORITA', N'SALOM', N'ALBA', N'12bl15071721069', 236213, 1, 3, 6, 2, 2, 0, CAST(N'2015-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1070, N'SIMON', N'VILALTA', N'CUENCA', N'12bl15071721070', 236362, 1, 2, 11, 2, 2, 0, CAST(N'2018-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1071, N'JOSE', N'BERROCAL', N'ACEDO', N'12bl15071721071', 235283, 1, 3, 3, 2, 2, 0, CAST(N'2016-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1072, N'AMELIA', N'AMELIA', N'GARGALLO', N'12bl15071721072', 236311, 1, 2, 15, 2, 2, 0, CAST(N'2012-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1073, N'AITANA', N'ORTUNO', N'DOMENECH', N'12bl15071721073', 235553, 1, 5, 11, 2, 2, 0, CAST(N'2022-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1074, N'EMILIANA', N'BERMEJO', N'ESTEVEZ', N'12bl15071721074', 235551, 1, 5, 7, 2, 2, 0, CAST(N'2016-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1075, N'ATILIO', N'RINCON', N'DURAN', N'12bl15071721075', 235129, 1, 4, 13, 2, 2, 0, CAST(N'2018-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1076, N'VALENTINA', N'AGUDO', N'LLORENS', N'12bl15071721076', 235959, 1, 6, 14, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1077, N'SIGFRIDO', N'BAYON', N'PERALES', N'12bl15071721077', 235005, 1, 2, 3, 2, 2, 0, CAST(N'2020-08-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1078, N'TORIBIO', N'DE', N'JARA', N'12bl15071721078', 235924, 1, 1, 2, 2, 2, 0, CAST(N'2018-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1079, N'LEANDRA', N'NUNEZ', N'FALCO', N'12bl15071721079', 235160, 1, 3, 9, 2, 2, 0, CAST(N'2022-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1080, N'TEOFILO', N'SIERRA', N'OLMO', N'12bl15071721080', 235977, 1, 2, 7, 2, 2, 0, CAST(N'2016-09-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1081, N'ISAURA', N'PAEZ', N'LUCAS', N'12bl15071721081', 235577, 1, 2, 12, 2, 2, 0, CAST(N'2010-07-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1082, N'CUSTODIO', N'SANABRIA', N'ALBERTO', N'12bl15071721082', 235103, 1, 2, 7, 2, 2, 0, CAST(N'2019-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1083, N'REINA', N'MOLINA', N'GONZALEZ', N'12bl15071721083', 236016, 1, 2, 3, 2, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1084, N'GUILLERMO', N'ALBEROLA', N'ALVAREZ', N'12bl15071721084', 235000, 1, 2, 11, 2, 2, 0, CAST(N'2010-09-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1085, N'CIRIACO', N'CARRETERO', N'BURGOS', N'12bl15071721085', 235816, 1, 4, 12, 2, 2, 0, CAST(N'2022-09-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1086, N'SOCORRO', N'DEL', N'LEON', N'12bl15071721086', 236295, 1, 2, 6, 2, 2, 0, CAST(N'2011-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1087, N'ELOISA', N'VERDEJO', N'BOU', N'12bl15071721087', 236233, 1, 3, 6, 2, 2, 0, CAST(N'2018-07-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1088, N'CLEMENTE', N'CLEMENTE', N'MANCEBO', N'12bl15071721088', 236163, 1, 6, 14, 2, 2, 0, CAST(N'2010-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1089, N'EUTIMIO', N'DEL', N'GRANADOS', N'12bl15071721089', 236216, 1, 6, 15, 2, 2, 0, CAST(N'2018-09-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1090, N'GERARDO', N'BAYON', N'VILALTA', N'12bl15071721090', 235088, 1, 1, 14, 2, 2, 0, CAST(N'2017-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1091, N'IGNACIA', N'DE', N'TORRES', N'12bl15071721091', 235061, 1, 5, 6, 2, 2, 0, CAST(N'2011-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1092, N'DAVID', N'DAVID', N'JIMENEZ', N'12bl15071721092', 235484, 1, 1, 14, 2, 2, 0, CAST(N'2018-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1093, N'ODALYS', N'CERRO', N'VALLE', N'12bl15071721093', 235213, 1, 1, 12, 2, 2, 0, CAST(N'2017-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1094, N'PAULINA', N'CATALA', N'NADAL', N'12bl15071721094', 236397, 1, 5, 9, 2, 2, 0, CAST(N'2013-09-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1095, N'GABRIEL', N'ROCA', N'RUIZ', N'12bl15071721095', 235682, 1, 2, 11, 2, 2, 0, CAST(N'2022-08-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1096, N'BERNABE', N'ARJONA', N'GARGALLO', N'12bl15071721096', 235569, 1, 3, 8, 2, 2, 0, CAST(N'2016-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1097, N'RAFAEL', N'BARCO', N'ZARAGOZA', N'12bl15071721097', 235086, 1, 4, 8, 2, 2, 0, CAST(N'2020-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1098, N'SIGFRIDO', N'PINOL', N'BLAZQUEZ', N'12bl15071721098', 236159, 1, 1, 3, 2, 2, 0, CAST(N'2010-07-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1099, N'LARA', N'ALBERDI', N'ISERN', N'12bl15071721099', 235726, 1, 3, 10, 2, 2, 0, CAST(N'2019-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1100, N'ELBA', N'SIMO', N'BAS', N'12bl15071721100', 236001, 1, 5, 9, 2, 2, 0, CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1101, N'CAYETANA', N'DEL', N'BORRAS', N'12bl15071721101', 235947, 1, 5, 9, 2, 2, 0, CAST(N'2014-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1102, N'ARIEL', N'MOLINS', N'GODOY', N'12bl15071721102', 235477, 1, 3, 8, 2, 2, 0, CAST(N'2022-08-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1103, N'IRIS', N'BAEZ', N'LEIVA', N'12bl15071721103', 235426, 1, 1, 8, 2, 2, 0, CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1104, N'LISANDRO', N'ROMEU', N'PEREZ', N'12bl15071721104', 236446, 1, 1, 9, 2, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1105, N'FLAVIA', N'DE', N'JAUREGUI', N'12bl15071721105', 236336, 1, 5, 10, 2, 2, 0, CAST(N'2014-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1106, N'LUCHO', N'CERVERA', N'MORALES', N'12bl15071721106', 236214, 1, 5, 10, 2, 2, 0, CAST(N'2015-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1107, N'CANDELARIO', N'ESPINOSA', N'CANIZARES', N'12bl15071721107', 235896, 1, 5, 11, 2, 2, 0, CAST(N'2013-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1108, N'EDGARDO', N'SEVILLA', N'VERA', N'12bl15071721108', 234953, 1, 2, 13, 2, 2, 0, CAST(N'2016-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1109, N'ALE', N'ROVIRA', N'ENRIQUEZ', N'12bl15071721109', 236114, 1, 5, 10, 2, 2, 0, CAST(N'2012-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1110, N'LUNA', N'POMBO', N'REIG', N'12bl15071721110', 235801, 1, 3, 8, 2, 2, 0, CAST(N'2015-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1111, N'JUAN', N'BARRIO', N'BAQUERO', N'12bl15071721111', 235010, 1, 4, 4, 2, 2, 0, CAST(N'2012-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1112, N'SANDRA', N'QUESADA', N'ANDREU', N'12bl15071721112', 235394, 1, 4, 5, 2, 2, 0, CAST(N'2011-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1113, N'SANDRA', N'CACERES', N'ORTIZ', N'12bl15071721113', 235907, 1, 1, 13, 2, 2, 0, CAST(N'2019-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1114, N'RUY', N'RIVAS', N'VILLENA', N'12bl15071721114', 235291, 1, 2, 10, 2, 2, 0, CAST(N'2012-09-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1115, N'SABINA', N'DE', N'ASENSIO', N'12bl15071721115', 235910, 1, 5, 4, 2, 2, 0, CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1116, N'ALVARO', N'DEL', N'CESPEDES', N'12bl15071721116', 235940, 1, 3, 11, 2, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1117, N'MORENO', N'SOLANA', N'VERA', N'12bl15071721117', 235249, 1, 1, 8, 2, 2, 0, CAST(N'2016-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1118, N'FELICIDAD', N'PUENTE', N'TRUJILLO', N'12bl15071721118', 235152, 1, 4, 11, 2, 2, 0, CAST(N'2012-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1119, N'RUBEN', N'RAMIREZ', N'LLANO', N'12bl15071721119', 235242, 1, 6, 5, 2, 2, 0, CAST(N'2013-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1120, N'NELIDA', N'MENENDEZ', N'MUR', N'12bl15071721120', 236285, 1, 2, 15, 2, 2, 0, CAST(N'2014-09-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1121, N'RENATO', N'RENATO', N'LUZ', N'12bl15071721121', 235775, 1, 5, 6, 2, 2, 0, CAST(N'2018-07-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1122, N'AROA', N'DEL', N'CARNERO', N'12bl15071721122', 235634, 1, 1, 5, 2, 2, 0, CAST(N'2018-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1123, N'PURIFICACION', N'GAYA', N'FEIJOO', N'12bl15071721123', 235173, 1, 4, 14, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1124, N'ROSARIO', N'ADADIA', N'ARIZA', N'12bl15071721124', 236101, 1, 2, 14, 2, 2, 0, CAST(N'2022-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1125, N'RUBEN', N'MAS', N'ARAMBURU', N'12bl15071721125', 234970, 1, 3, 6, 2, 2, 0, CAST(N'2014-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1126, N'DIANA', N'ROSA', N'MUR', N'12bl15071721126', 235982, 1, 1, 15, 2, 2, 0, CAST(N'2012-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1127, N'ESTHER', N'HERRANZ', N'CERVERA', N'12bl15071721127', 235830, 1, 1, 8, 2, 2, 0, CAST(N'2011-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1128, N'JUDITH', N'CARRASCO', N'PUIG', N'12bl15071721128', 236236, 1, 5, 11, 2, 2, 0, CAST(N'2013-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1129, N'ESPIRIDION', N'PEREZ', N'VILAPLANA', N'12bl15071721129', 235861, 1, 6, 7, 2, 2, 0, CAST(N'2016-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1130, N'ELADIO', N'PALLARES', N'CASANOVA', N'12bl15071721130', 234951, 1, 4, 3, 2, 2, 0, CAST(N'2017-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1131, N'CIRINO', N'DEL', N'FOLCH', N'12bl15071721131', 236283, 1, 3, 12, 2, 2, 0, CAST(N'2014-08-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1132, N'JOVITA', N'DEL', N'QUINTERO', N'12bl15071721132', 235777, 1, 2, 10, 2, 2, 0, CAST(N'2016-07-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1133, N'MARIA', N'MACIAS', N'ARIZA', N'12bl15071721133', 236200, 1, 2, 7, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1134, N'REMIGIO', N'DEL', N'NOVOA', N'12bl15071721134', 234986, 1, 4, 4, 2, 2, 0, CAST(N'2012-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1135, N'SATURNINA', N'REAL', N'ROMA', N'12bl15071721135', 235796, 1, 5, 12, 2, 2, 0, CAST(N'2020-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1136, N'ANGEL', N'DEL', N'BARRIOS', N'12bl15071721136', 236043, 1, 6, 7, 2, 2, 0, CAST(N'2022-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1137, N'ARACELI', N'ARACELI', N'MACHADO', N'12bl15071721137', 235496, 1, 4, 4, 2, 2, 0, CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1138, N'FLORENTINA', N'ALMEIDA', N'TORRECILLA', N'12bl15071721138', 235851, 1, 2, 5, 2, 2, 0, CAST(N'2017-09-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1139, N'ARTEMIO', N'ADAN', N'BARRANCO', N'12bl15071721139', 236155, 1, 6, 7, 2, 2, 0, CAST(N'2013-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1140, N'PRIMITIVA', N'GALAN', N'MONTALBAN', N'12bl15071721140', 236408, 1, 4, 3, 2, 2, 0, CAST(N'2012-08-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1141, N'MARTIN', N'DEL', N'SANS', N'12bl15071721141', 236177, 1, 6, 4, 2, 2, 0, CAST(N'2010-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1142, N'FLAVIA', N'DEL', N'LASA', N'12bl15071721142', 236204, 1, 5, 14, 2, 2, 0, CAST(N'2012-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1143, N'NIEVES', N'BERMEJO', N'SEGARRA', N'12bl15071721143', 235937, 1, 5, 13, 2, 2, 0, CAST(N'2016-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1144, N'HILDA', N'HILDA', N'MACIAS', N'12bl15071721144', 234982, 1, 4, 4, 2, 2, 0, CAST(N'2010-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1145, N'JUANA', N'OLMO', N'ORTEGA', N'12bl15071721145', 236123, 1, 3, 2, 2, 2, 0, CAST(N'2010-08-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1146, N'SILVESTRE', N'ESPANA', N'FERRERO', N'12bl15071721146', 235225, 1, 2, 6, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1147, N'CANDIDA', N'CASTELLANOS', N'MATEOS', N'12bl15071721147', 236258, 1, 2, 9, 2, 2, 0, CAST(N'2011-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1148, N'SAMU', N'SAMU', N'CALATAYUD', N'12bl15071721148', 235991, 1, 3, 14, 2, 2, 0, CAST(N'2013-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1149, N'CANDELA', N'ARCOS', N'MARIN', N'12bl15071721149', 235365, 1, 4, 8, 2, 2, 0, CAST(N'2018-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1150, N'MAXI', N'AVILES', N'ACEDO', N'12bl15071721150', 235971, 1, 3, 8, 2, 2, 0, CAST(N'2018-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1151, N'FABIOLA', N'FABIOLA', N'GARCIA', N'12bl15071721151', 235472, 1, 4, 10, 2, 2, 0, CAST(N'2017-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1152, N'ABILIO', N'TERUEL', N'MIRANDA', N'12bl15071721152', 236338, 1, 6, 7, 2, 2, 0, CAST(N'2012-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1153, N'ODALYS', N'PADILLA', N'FRUTOS', N'12bl15071721153', 235631, 1, 6, 8, 2, 2, 0, CAST(N'2018-08-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1154, N'ENRIQUE', N'CANET', N'PONT', N'12bl15071721154', 235369, 1, 4, 6, 2, 2, 0, CAST(N'2017-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1155, N'ALBINA', N'FUENTES', N'TOME', N'12bl15071721155', 235013, 1, 3, 4, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1156, N'HELIODORO', N'PENALVER', N'ESTEVEZ', N'12bl15071721156', 236247, 1, 1, 10, 2, 2, 0, CAST(N'2014-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1157, N'GLORIA', N'SANTIAGO', N'CARRANZA', N'12bl15071721157', 235328, 1, 2, 12, 2, 2, 0, CAST(N'2012-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1158, N'FELIX', N'CAMPOS', N'ESPARZA', N'12bl15071721158', 235758, 1, 3, 3, 2, 2, 0, CAST(N'2013-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1159, N'ANASTASIA', N'ANASTASIA', N'SEDANO', N'12bl15071721159', 236305, 1, 1, 5, 2, 2, 0, CAST(N'2021-09-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1160, N'JOSE', N'DE', N'MANUEL', N'12bl15071721160', 236344, 1, 1, 7, 2, 2, 0, CAST(N'2018-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1161, N'ROSAURA', N'OLIVARES', N'CERVANTES', N'12bl15071721161', 235122, 1, 1, 15, 2, 2, 0, CAST(N'2018-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1162, N'MARCO', N'GARCIA', N'OLIVERA', N'12bl15071721162', 236208, 1, 1, 14, 2, 2, 0, CAST(N'2012-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1163, N'CAMILO', N'NICOLAU', N'CORTINA', N'12bl15071721163', 236158, 1, 4, 13, 2, 2, 0, CAST(N'2013-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1164, N'RAQUEL', N'SUAREZ', N'GINER', N'12bl15071721164', 235561, 1, 6, 10, 2, 2, 0, CAST(N'2012-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1165, N'BASILIO', N'CARMONA', N'CASTRO', N'12bl15071721165', 235239, 1, 3, 14, 2, 2, 0, CAST(N'2010-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1166, N'ROXANA', N'VICENS', N'VALLES', N'12bl15071721166', 235895, 1, 4, 10, 2, 2, 0, CAST(N'2019-07-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1167, N'ROQUE', N'PINEIRO', N'CABELLO', N'12bl15071721167', 235980, 1, 1, 13, 2, 2, 0, CAST(N'2013-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1168, N'DAN', N'GUIJARRO', N'VIVES', N'12bl15071721168', 235967, 1, 2, 9, 2, 2, 0, CAST(N'2014-07-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1169, N'JENNY', N'GAYA', N'VALVERDE', N'12bl15071721169', 236053, 1, 6, 3, 2, 2, 0, CAST(N'2010-09-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1170, N'JOSEFA', N'JOSEFA', N'MURCIA', N'12bl15071721170', 236191, 1, 1, 15, 2, 2, 0, CAST(N'2022-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1171, N'NOE', N'IBARRA', N'SOLERA', N'12bl15071721171', 236321, 1, 4, 15, 2, 2, 0, CAST(N'2021-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1172, N'MODESTA', N'INIGUEZ', N'MONREAL', N'12bl15071721172', 236306, 1, 2, 2, 2, 2, 0, CAST(N'2017-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1173, N'SOLEDAD', N'JIMENEZ', N'TEJEDOR', N'12bl15071721173', 235999, 1, 4, 7, 2, 2, 0, CAST(N'2017-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1174, N'LUIS', N'LAGUNA', N'PINEDA', N'12bl15071721174', 235563, 1, 5, 2, 2, 2, 0, CAST(N'2018-09-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1175, N'TATIANA', N'ACUNA', N'URIBE', N'12bl15071721175', 236219, 1, 1, 2, 2, 2, 0, CAST(N'2019-09-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1176, N'ELOISA', N'RECIO', N'ROBLEDO', N'12bl15071721176', 235322, 1, 3, 6, 2, 2, 0, CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1177, N'MANU', N'CARRENO', N'HARO', N'12bl15071721177', 235093, 1, 3, 7, 2, 2, 0, CAST(N'2015-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1178, N'BARTOLOME', N'DE', N'TRUJILLO', N'12bl15071721178', 235683, 1, 2, 6, 2, 2, 0, CAST(N'2016-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1179, N'IBAN', N'RUANO', N'CATALA', N'12bl15071721179', 235768, 1, 3, 12, 2, 2, 0, CAST(N'2016-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1180, N'TIBURCIO', N'RIERA', N'ALAMO', N'12bl15071721180', 235564, 1, 1, 5, 2, 2, 0, CAST(N'2013-09-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1181, N'LUIS', N'SAINZ', N'HUGUET', N'12bl15071721181', 235453, 1, 4, 9, 2, 2, 0, CAST(N'2014-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1182, N'MAR', N'MAR', N'CASTILLO', N'12bl15071721182', 235074, 1, 3, 4, 2, 2, 0, CAST(N'2018-08-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1183, N'FELICIA', N'VICENS', N'HUERTAS', N'12bl15071721183', 235965, 1, 6, 8, 2, 2, 0, CAST(N'2019-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1184, N'CLEMENTINA', N'VAZQUEZ', N'HERAS', N'12bl15071721184', 236377, 1, 4, 8, 2, 2, 0, CAST(N'2022-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1185, N'DEBORA', N'DEBORA', N'POLO', N'12bl15071721185', 236442, 1, 4, 15, 2, 2, 0, CAST(N'2011-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1186, N'DIONISIA', N'PENAS', N'MOLINS', N'12bl15071721186', 235153, 1, 2, 3, 2, 2, 0, CAST(N'2016-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1187, N'CRISTIAN', N'RUBIO', N'OCANA', N'12bl15071721187', 235576, 1, 6, 5, 2, 2, 0, CAST(N'2012-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1188, N'ROBERTA', N'ROBERTA', N'SACRISTAN', N'12bl15071721188', 235809, 1, 3, 3, 2, 2, 0, CAST(N'2012-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1189, N'TANIA', N'PAVON', N'PALACIOS', N'12bl15071721189', 235397, 1, 5, 7, 2, 2, 0, CAST(N'2014-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1190, N'INOCENCIO', N'ROSALES', N'ARINO', N'12bl15071721190', 235218, 1, 6, 9, 2, 2, 0, CAST(N'2019-09-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1191, N'MELANIA', N'ROS', N'HERAS', N'12bl15071721191', 236364, 1, 4, 13, 2, 2, 0, CAST(N'2022-09-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1192, N'SEVE', N'SOLIS', N'CALDERON', N'12bl15071721192', 234955, 1, 3, 11, 2, 2, 0, CAST(N'2012-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1193, N'NEREA', N'LLAMAS', N'GOMIS', N'12bl15071721193', 235583, 1, 2, 6, 2, 2, 0, CAST(N'2022-07-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1194, N'JUAN', N'ANDRADE', N'CARRION', N'12bl15071721194', 235704, 1, 2, 2, 2, 2, 0, CAST(N'2022-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1195, N'SARITA', N'BEJARANO', N'CANELLAS', N'12bl15071721195', 236249, 1, 5, 7, 2, 2, 0, CAST(N'2022-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1196, N'CLAUDIA', N'CLAUDIA', N'ARCOS', N'12bl15071721196', 235360, 1, 3, 10, 2, 2, 0, CAST(N'2013-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1197, N'ODALYS', N'PALOMARES', N'VIGIL', N'12bl15071721197', 235435, 1, 4, 11, 2, 2, 0, CAST(N'2014-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1198, N'JENARO', N'CAPARROS', N'ALCANTARA', N'12bl15071721198', 235487, 1, 4, 5, 2, 2, 0, CAST(N'2022-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1199, N'AMOR', N'COLLADO', N'MUNIZ', N'12bl15071721199', 235798, 1, 6, 7, 2, 2, 0, CAST(N'2017-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1200, N'HORTENSIA', N'DE', N'CACERES', N'12bl15071721200', 235460, 1, 5, 7, 2, 2, 0, CAST(N'2021-09-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1201, N'RUTH', N'RUTH', N'AGUADO', N'12bl15071721201', 235387, 1, 6, 5, 2, 2, 0, CAST(N'2017-09-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1202, N'ROSARIO', N'DE', N'CONESA', N'12bl15071721202', 235548, 1, 5, 15, 2, 2, 0, CAST(N'2019-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1203, N'FLAVIO', N'MADRIGAL', N'MORENO', N'12bl15071721203', 235104, 1, 3, 2, 2, 2, 0, CAST(N'2018-08-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1204, N'CAMILA', N'DEL', N'FERNANDEZ', N'12bl15071721204', 235127, 1, 6, 13, 2, 2, 0, CAST(N'2012-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1205, N'GRACIANO', N'SANTAMARIA', N'ESCRIVA', N'12bl15071721205', 235259, 1, 4, 8, 2, 2, 0, CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1206, N'IGNACIO', N'CESPEDES', N'LORENZO', N'12bl15071721206', 235079, 1, 5, 3, 2, 2, 0, CAST(N'2014-08-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1207, N'JUAN', N'LUIS', N'TENORIO', N'12bl15071721207', 236440, 1, 5, 7, 2, 2, 0, CAST(N'2010-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1208, N'MARCIO', N'ZABALA', N'PUIG', N'12bl15071721208', 235831, 1, 3, 2, 2, 2, 0, CAST(N'2011-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1209, N'FIDEL', N'BLANES', N'ZABALETA', N'12bl15071721209', 236271, 1, 6, 11, 2, 2, 0, CAST(N'2016-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1210, N'TEODORO', N'BATALLA', N'BARCELO', N'12bl15071721210', 236144, 1, 1, 13, 2, 2, 0, CAST(N'2014-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1211, N'MARTIN', N'SAEZ', N'MORALEDA', N'12bl15071721211', 236437, 1, 6, 12, 2, 2, 0, CAST(N'2014-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1212, N'ERNESTO', N'VICENS', N'PAREDES', N'12bl15071721212', 235731, 1, 6, 2, 2, 2, 0, CAST(N'2015-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1213, N'RAMONA', N'CARBALLO', N'ROSSELLO', N'12bl15071721213', 235023, 1, 2, 8, 2, 2, 0, CAST(N'2016-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1214, N'FAUSTINO', N'ROMEU', N'BAYON', N'12bl15071721214', 236441, 1, 5, 12, 2, 2, 0, CAST(N'2019-08-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1215, N'INES', N'SOLERA', N'TOLOSA', N'12bl15071721215', 235195, 1, 2, 13, 2, 2, 0, CAST(N'2016-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1216, N'DIANA', N'NEIRA', N'SANCHEZ', N'12bl15071721216', 235398, 1, 2, 3, 2, 2, 0, CAST(N'2015-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1217, N'ROGELIO', N'BUSTAMANTE', N'PERA', N'12bl15071721217', 236432, 1, 5, 15, 2, 2, 0, CAST(N'2019-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1218, N'CANDIDO', N'CASALS', N'VALLS', N'12bl15071721218', 236324, 1, 5, 13, 2, 2, 0, CAST(N'2012-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1219, N'BENIGNO', N'DIAZ', N'PEREA', N'12bl15071721219', 235072, 1, 3, 13, 2, 2, 0, CAST(N'2013-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1220, N'MAITE', N'SALES', N'REIG', N'12bl15071721220', 236394, 1, 5, 14, 2, 2, 0, CAST(N'2015-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1221, N'MARIA', N'SALA', N'PERA', N'12bl15071721221', 236206, 1, 5, 5, 2, 2, 0, CAST(N'2011-07-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1222, N'CARLOS', N'SANTAMARIA', N'CARBONELL', N'12bl15071721222', 235182, 1, 5, 7, 2, 2, 0, CAST(N'2018-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1223, N'BRUNO', N'BRUNO', N'EXPOSITO', N'12bl15071721223', 235723, 1, 3, 4, 2, 2, 0, CAST(N'2017-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1224, N'BELEN', N'CASARES', N'MEDINA', N'12bl15071721224', 235559, 1, 5, 11, 2, 2, 0, CAST(N'2020-07-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1225, N'RAIMUNDO', N'ZARAGOZA', N'YUSTE', N'12bl15071721225', 235039, 1, 2, 11, 2, 2, 0, CAST(N'2014-09-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1226, N'RUPERTA', N'VALENZUELA', N'VALDES', N'12bl15071721226', 235619, 1, 6, 5, 2, 2, 0, CAST(N'2016-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1227, N'MARIANO', N'MARIANO', N'EXPOSITO', N'12bl15071721227', 235507, 1, 1, 4, 2, 2, 0, CAST(N'2016-07-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1228, N'NACIO', N'NINO', N'MARQUEZ', N'12bl15071721228', 236406, 1, 6, 14, 2, 2, 0, CAST(N'2016-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1229, N'VENCESLAS', N'INFANTE', N'CARMONA', N'12bl15071721229', 235794, 1, 6, 15, 2, 2, 0, CAST(N'2017-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1230, N'MARIANA', N'MARIANA', N'ROSA', N'12bl15071721230', 235181, 1, 6, 4, 2, 2, 0, CAST(N'2011-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1231, N'DOMITILA', N'POMBO', N'REY', N'12bl15071721231', 235598, 1, 4, 8, 2, 2, 0, CAST(N'2018-09-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1232, N'QUIRINO', N'GUERRERO', N'PONT', N'12bl15071721232', 235579, 1, 1, 5, 2, 2, 0, CAST(N'2019-07-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1233, N'AMARO', N'MACIAS', N'FERRANDEZ', N'12bl15071721233', 235958, 1, 4, 12, 2, 2, 0, CAST(N'2022-08-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1234, N'ADORA', N'ALMANSA', N'QUERO', N'12bl15071721234', 235078, 1, 1, 6, 2, 2, 0, CAST(N'2015-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1235, N'SEBASTIAN', N'ABELLA', N'AYLLON', N'12bl15071721235', 235139, 1, 6, 7, 2, 2, 0, CAST(N'2012-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1236, N'REMIGIO', N'LERMA', N'GIRONA', N'12bl15071721236', 235812, 1, 4, 4, 2, 2, 0, CAST(N'2019-08-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1237, N'JOSE', N'BECERRA', N'FRUTOS', N'12bl15071721237', 235193, 1, 2, 7, 2, 2, 0, CAST(N'2012-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1238, N'ADELIA', N'ADELIA', N'URRUTIA', N'12bl15071721238', 235856, 1, 6, 6, 2, 2, 0, CAST(N'2011-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1239, N'GUADALUPE', N'VILAR', N'URRUTIA', N'12bl15071721239', 235414, 1, 1, 6, 2, 2, 0, CAST(N'2011-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1240, N'CARMELA', N'DEL', N'CAMPOY', N'12bl15071721240', 236149, 1, 4, 5, 2, 2, 0, CAST(N'2021-07-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1241, N'LUPE', N'POSADA', N'ROCHA', N'12bl15071721241', 236411, 1, 3, 12, 2, 2, 0, CAST(N'2014-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1242, N'PIA', N'PIA', N'INFANTE', N'12bl15071721242', 235354, 1, 5, 5, 2, 2, 0, CAST(N'2010-07-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1243, N'FLAVIO', N'COZAR', N'AVILA', N'12bl15071721243', 236058, 1, 1, 15, 2, 2, 0, CAST(N'2015-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1244, N'DIONISIO', N'TAMARIT', N'AGUILERA', N'12bl15071721244', 235572, 1, 6, 6, 2, 2, 0, CAST(N'2022-08-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1245, N'PEPE', N'MENENDEZ', N'RAMIREZ', N'12bl15071721245', 235345, 1, 3, 8, 2, 2, 0, CAST(N'2019-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1246, N'PIA', N'HERAS', N'MONTERO', N'12bl15071721246', 235026, 1, 3, 2, 2, 2, 0, CAST(N'2014-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1247, N'EUTIMIO', N'EUTIMIO', N'BAQUERO', N'12bl15071721247', 235248, 1, 4, 9, 2, 2, 0, CAST(N'2013-08-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1248, N'ANASTASIO', N'SEGURA', N'DURAN', N'12bl15071721248', 235646, 1, 2, 6, 2, 2, 0, CAST(N'2011-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1249, N'ELISABET', N'ROIG', N'VALDERRAMA', N'12bl15071721249', 236106, 1, 3, 3, 2, 2, 0, CAST(N'2018-07-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1250, N'ANDREA', N'DE', N'VICENS', N'12bl15071721250', 235512, 1, 3, 8, 2, 2, 0, CAST(N'2013-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1251, N'ALBA', N'ARCOS', N'NAVARRETE', N'12bl15071721251', 236243, 1, 2, 10, 2, 2, 0, CAST(N'2015-08-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1252, N'PRUDENCIO', N'DOMINGUEZ', N'VIVES', N'12bl15071721252', 235233, 1, 2, 13, 2, 2, 0, CAST(N'2012-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1253, N'GERTRUDIS', N'MARCO', N'GONZALO', N'12bl15071721253', 235560, 1, 5, 11, 2, 2, 0, CAST(N'2017-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1254, N'ADELARDO', N'BAYO', N'OSUNA', N'12bl15071721254', 235490, 1, 5, 11, 2, 2, 0, CAST(N'2021-07-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1255, N'SAMANTA', N'CASTRILLO', N'COROMINAS', N'12bl15071721255', 236167, 1, 1, 6, 2, 2, 0, CAST(N'2011-09-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1256, N'ROXANA', N'BRU', N'JUAN', N'12bl15071721256', 235264, 1, 4, 12, 2, 2, 0, CAST(N'2014-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1257, N'ESMERALDA', N'ARMAS', N'CAMPILLO', N'12bl15071721257', 236076, 1, 4, 13, 2, 2, 0, CAST(N'2020-07-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1258, N'SAMANTA', N'CANAS', N'ALBERTO', N'12bl15071721258', 235695, 1, 6, 8, 2, 2, 0, CAST(N'2012-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1259, N'EVELIA', N'SALVA', N'BLASCO', N'12bl15071721259', 236416, 1, 2, 14, 2, 2, 0, CAST(N'2021-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1260, N'RAMIRO', N'RAMIRO', N'AGULLO', N'12bl15071721260', 235421, 1, 5, 2, 2, 2, 0, CAST(N'2012-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1261, N'SAMUEL', N'SASTRE', N'BENITEZ', N'12bl15071721261', 235236, 1, 4, 15, 2, 2, 0, CAST(N'2013-07-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1262, N'OLALLA', N'VERDEJO', N'CAMARA', N'12bl15071721262', 235451, 1, 6, 7, 2, 2, 0, CAST(N'2017-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1263, N'LIDIA', N'RICO', N'PAREJO', N'12bl15071721263', 235945, 1, 6, 4, 2, 2, 0, CAST(N'2020-08-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1264, N'AGUEDA', N'PLA', N'BELLIDO', N'12bl15071721264', 236176, 1, 4, 12, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1265, N'ADOLFO', N'DE', N'CHICO', N'12bl15071721265', 235191, 1, 1, 8, 2, 2, 0, CAST(N'2018-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1266, N'AMANDA', N'BORREGO', N'JULIA', N'12bl15071721266', 235099, 1, 6, 14, 2, 2, 0, CAST(N'2018-09-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1267, N'ELISEO', N'DEL', N'VICENTE', N'12bl15071721267', 235370, 1, 3, 10, 2, 2, 0, CAST(N'2018-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1268, N'ALBA', N'SEBASTIAN', N'TORRENTS', N'12bl15071721268', 235983, 1, 3, 11, 2, 2, 0, CAST(N'2019-09-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1269, N'VIOLETA', N'TIRADO', N'CASES', N'12bl15071721269', 236073, 1, 5, 10, 2, 2, 0, CAST(N'2011-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1270, N'ANA', N'BARRIOS', N'VILLANUEVA', N'12bl15071721270', 235963, 1, 5, 8, 2, 2, 0, CAST(N'2010-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1271, N'DANIEL', N'FUENTE', N'SUREDA', N'12bl15071721271', 236146, 1, 1, 6, 2, 2, 0, CAST(N'2013-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1272, N'PASCUAL', N'PASCUAL', N'REGUERA', N'12bl15071721272', 235268, 1, 5, 15, 2, 2, 0, CAST(N'2014-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1273, N'BAUDELIO', N'POLO', N'SANTAMARIA', N'12bl15071721273', 236343, 1, 6, 8, 2, 2, 0, CAST(N'2014-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1274, N'TRISTAN', N'CASAS', N'PADILLA', N'12bl15071721274', 235954, 1, 6, 13, 2, 2, 0, CAST(N'2019-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1275, N'AMADOR', N'CID', N'JIMENEZ', N'12bl15071721275', 236371, 1, 3, 6, 2, 2, 0, CAST(N'2022-07-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1276, N'RENATA', N'GUITART', N'GUILLEN', N'12bl15071721276', 235789, 1, 6, 6, 2, 2, 0, CAST(N'2019-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1277, N'BIBIANA', N'DE', N'PORTERO', N'12bl15071721277', 235436, 1, 5, 6, 2, 2, 0, CAST(N'2015-07-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1278, N'SOFIA', N'SOFIA', N'BARCO', N'12bl15071721278', 235513, 1, 3, 12, 2, 2, 0, CAST(N'2019-07-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1279, N'ATILIO', N'DOMENECH', N'BARBERO', N'12bl15071721279', 236003, 1, 6, 3, 2, 2, 0, CAST(N'2012-07-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1280, N'JOSE', N'MALO', N'INIESTA', N'12bl15071721280', 236327, 1, 3, 14, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1281, N'ESTER', N'TOMAS', N'CORONADO', N'12bl15071721281', 235517, 1, 1, 2, 2, 2, 0, CAST(N'2017-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1282, N'GUILLERMO', N'SALMERON', N'ARREGUI', N'12bl15071721282', 236095, 1, 1, 10, 2, 2, 0, CAST(N'2013-07-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1283, N'MARIANELA', N'GONI', N'FRANCO', N'12bl15071721283', 236313, 1, 3, 4, 2, 2, 0, CAST(N'2020-09-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1284, N'TITO', N'RIBAS', N'PLANAS', N'12bl15071721284', 236221, 1, 5, 11, 2, 2, 0, CAST(N'2016-07-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1285, N'NATANAEL', N'LLEDO', N'CAMPOS', N'12bl15071721285', 236405, 1, 2, 2, 2, 2, 0, CAST(N'2012-07-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1286, N'JENARO', N'DEL', N'TALAVERA', N'12bl15071721286', 235519, 1, 4, 7, 2, 2, 0, CAST(N'2019-08-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1287, N'BENIGNO', N'DURAN', N'ROBLES', N'12bl15071721287', 235133, 1, 5, 6, 2, 2, 0, CAST(N'2017-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1288, N'GERVASIO', N'COLOMER', N'GAMEZ', N'12bl15071721288', 235790, 1, 3, 8, 2, 2, 0, CAST(N'2017-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1289, N'FLAVIO', N'MOLES', N'GUARDIA', N'12bl15071721289', 235876, 1, 6, 12, 2, 2, 0, CAST(N'2016-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1290, N'FABIO', N'FABIO', N'BOTELLA', N'12bl15071721290', 235626, 1, 1, 9, 2, 2, 0, CAST(N'2022-07-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1291, N'JORGE', N'DEL', N'SARABIA', N'12bl15071721291', 235379, 1, 4, 4, 2, 2, 0, CAST(N'2021-09-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1292, N'JOSE', N'HERRERA', N'AREVALO', N'12bl15071721292', 235724, 1, 5, 3, 2, 2, 0, CAST(N'2017-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1293, N'BLANCA', N'GARAY', N'ORTEGA', N'12bl15071721293', 235580, 1, 6, 8, 2, 2, 0, CAST(N'2020-07-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1294, N'SARITA', N'LAGUNA', N'FERRERA', N'12bl15071721294', 235595, 1, 5, 4, 2, 2, 0, CAST(N'2012-08-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1295, N'NELIDA', N'NELIDA', N'ALMAGRO', N'12bl15071721295', 235894, 1, 6, 5, 2, 2, 0, CAST(N'2016-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1296, N'ISABEL', N'PRIETO', N'ORDONEZ', N'12bl15071721296', 236042, 1, 6, 14, 2, 2, 0, CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1297, N'FORTUNATO', N'DE', N'OSORIO', N'12bl15071721297', 235459, 1, 5, 6, 2, 2, 0, CAST(N'2013-07-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1298, N'CASEMIRO', N'DE', N'NAVARRO', N'12bl15071721298', 235639, 1, 4, 4, 2, 2, 0, CAST(N'2011-07-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1299, N'AZENETH', N'SOLE', N'ANAYA', N'12bl15071721299', 236230, 1, 2, 9, 2, 2, 0, CAST(N'2014-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1300, N'ZACARIAS', N'CALVET', N'PUERTA', N'12bl15071721300', 236198, 1, 6, 2, 2, 2, 0, CAST(N'2011-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1301, N'GLORIA', N'ARCOS', N'ELORZA', N'12bl15071721301', 235204, 1, 3, 8, 2, 2, 0, CAST(N'2015-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1302, N'JENARO', N'NOVOA', N'TELLEZ', N'12bl15071721302', 236450, 1, 3, 3, 2, 2, 0, CAST(N'2022-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1303, N'DANI', N'DANI', N'AREVALO', N'12bl15071721303', 235156, 1, 1, 8, 2, 2, 0, CAST(N'2016-09-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1304, N'LUPE', N'LUPE', N'CALZADA', N'12bl15071721304', 236128, 1, 4, 9, 2, 2, 0, CAST(N'2014-08-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1305, N'RENATO', N'RENATO', N'LEON', N'12bl15071721305', 235090, 1, 4, 11, 2, 2, 0, CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1306, N'EMMA', N'ROS', N'PALLARES', N'12bl15071721306', 235294, 1, 6, 3, 2, 2, 0, CAST(N'2012-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1307, N'IRENE', N'CABALLERO', N'CASTILLA', N'12bl15071721307', 235081, 1, 6, 14, 2, 2, 0, CAST(N'2015-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1308, N'DOLORES', N'GAYA', N'BARRIOS', N'12bl15071721308', 236443, 1, 5, 12, 2, 2, 0, CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1309, N'RUBEN', N'CORTES', N'GUITART', N'12bl15071721309', 235610, 1, 5, 5, 2, 2, 0, CAST(N'2013-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1310, N'JOSE', N'SAMPER', N'ARAMBURU', N'12bl15071721310', 236329, 1, 2, 8, 2, 2, 0, CAST(N'2022-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1311, N'GUILLERMO', N'GALVEZ', N'BADIA', N'12bl15071721311', 235833, 1, 1, 3, 2, 2, 0, CAST(N'2013-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1312, N'LAURA', N'FIOL', N'PINEDO', N'12bl15071721312', 235545, 1, 2, 8, 2, 2, 0, CAST(N'2015-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1313, N'FELIPA', N'FELIPA', N'FERRANDO', N'12bl15071721313', 236314, 1, 2, 6, 2, 2, 0, CAST(N'2011-07-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1314, N'ARIEL', N'ARREGUI', N'VERDEJO', N'12bl15071721314', 235912, 1, 2, 13, 2, 2, 0, CAST(N'2017-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1315, N'DARIO', N'MONTERO', N'LEAL', N'12bl15071721315', 235622, 1, 2, 4, 2, 2, 0, CAST(N'2018-07-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1316, N'ODALYS', N'PUJOL', N'NINO', N'12bl15071721316', 235194, 1, 3, 5, 2, 2, 0, CAST(N'2017-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1317, N'FLORINDA', N'ANDRADE', N'LLAMAS', N'12bl15071721317', 236360, 1, 2, 3, 2, 2, 0, CAST(N'2018-09-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1318, N'SILVIA', N'CAMINO', N'ESTRADA', N'12bl15071721318', 235919, 1, 6, 11, 2, 2, 0, CAST(N'2011-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1319, N'FLORINDA', N'REGUERA', N'MARTINEZ', N'12bl15071721319', 235353, 1, 4, 11, 2, 2, 0, CAST(N'2014-08-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1320, N'ARACELI', N'MAESTRE', N'LLAMAS', N'12bl15071721320', 236264, 1, 6, 11, 2, 2, 0, CAST(N'2017-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1321, N'PASCUAL', N'CERVERA', N'TORRENT', N'12bl15071721321', 235499, 1, 3, 3, 2, 2, 0, CAST(N'2015-07-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1322, N'CLEMENTINA', N'VIANA', N'DUARTE', N'12bl15071721322', 235350, 1, 5, 7, 2, 2, 0, CAST(N'2018-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1323, N'JOSE', N'NOVOA', N'GASCON', N'12bl15071721323', 235606, 1, 5, 6, 2, 2, 0, CAST(N'2010-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1324, N'FAUSTO', N'LLAMAS', N'HIERRO', N'12bl15071721324', 236064, 1, 2, 7, 2, 2, 0, CAST(N'2016-07-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1325, N'VICENTA', N'ANGLADA', N'GIMENEZ', N'12bl15071721325', 235123, 1, 4, 8, 2, 2, 0, CAST(N'2020-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1326, N'DULCE', N'PORTERO', N'JAEN', N'12bl15071721326', 236103, 1, 2, 14, 2, 2, 0, CAST(N'2012-09-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1327, N'LUCIA', N'ESCOLANO', N'URENA', N'12bl15071721327', 236186, 1, 6, 12, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1328, N'LUPE', N'POLO', N'JUAREZ', N'12bl15071721328', 236353, 1, 5, 15, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1329, N'BORJA', N'FALCON', N'ALVARADO', N'12bl15071721329', 235587, 1, 6, 13, 2, 2, 0, CAST(N'2014-07-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1330, N'PALMIRA', N'AREVALO', N'SUREDA', N'12bl15071721330', 235429, 1, 3, 13, 2, 2, 0, CAST(N'2011-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1331, N'MARIO', N'LLADO', N'COMPANY', N'12bl15071721331', 236245, 1, 4, 2, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1332, N'BAUDELIO', N'PARRA', N'LLUCH', N'12bl15071721332', 235668, 1, 5, 15, 2, 2, 0, CAST(N'2021-07-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1333, N'JUAN', N'PALOMO', N'LILLO', N'12bl15071721333', 235629, 1, 2, 14, 2, 2, 0, CAST(N'2012-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1334, N'EDMUNDO', N'GALVEZ', N'MONREAL', N'12bl15071721334', 236006, 1, 3, 15, 2, 2, 0, CAST(N'2013-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1335, N'GODOFREDO', N'PULIDO', N'SANTANA', N'12bl15071721335', 235109, 1, 5, 6, 2, 2, 0, CAST(N'2019-07-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1336, N'MARTIN', N'ALEMAN', N'YANEZ', N'12bl15071721336', 235931, 1, 3, 10, 2, 2, 0, CAST(N'2022-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1337, N'PIA', N'GUARDIOLA', N'RUEDA', N'12bl15071721337', 236057, 1, 4, 13, 2, 2, 0, CAST(N'2010-09-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1338, N'TEODOSIO', N'DURAN', N'OCANA', N'12bl15071721338', 235653, 1, 4, 10, 2, 2, 0, CAST(N'2010-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1339, N'NATANAEL', N'MARQUEZ', N'ARCO', N'12bl15071721339', 235935, 1, 3, 5, 2, 2, 0, CAST(N'2019-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1340, N'PERLA', N'CARBALLO', N'ELIAS', N'12bl15071721340', 235468, 1, 5, 13, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1341, N'GUIOMAR', N'LOZANO', N'AYUSO', N'12bl15071721341', 236126, 1, 6, 12, 2, 2, 0, CAST(N'2016-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1342, N'NEREIDA', N'GRANDE', N'SOBRINO', N'12bl15071721342', 235627, 1, 2, 3, 2, 2, 0, CAST(N'2013-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1343, N'CIRIACO', N'LUZ', N'ROMEU', N'12bl15071721343', 235834, 1, 3, 6, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1344, N'CANDELARIO', N'PEDROSA', N'PALLARES', N'12bl15071721344', 235886, 1, 4, 13, 2, 2, 0, CAST(N'2018-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1345, N'LIGIA', N'CAMPOS', N'ALFARO', N'12bl15071721345', 235839, 1, 1, 15, 2, 2, 0, CAST(N'2015-07-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1346, N'LOPE', N'GUITART', N'QUEROL', N'12bl15071721346', 235284, 1, 4, 13, 2, 2, 0, CAST(N'2022-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1347, N'MAXIMINO', N'AMOROS', N'CARO', N'12bl15071721347', 236085, 1, 1, 2, 2, 2, 0, CAST(N'2017-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1348, N'VALENTIN', N'DEL', N'MADRIGAL', N'12bl15071721348', 235602, 1, 3, 9, 2, 2, 0, CAST(N'2013-08-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1349, N'FLORENTINO', N'FLORENTINO', N'PRAT', N'12bl15071721349', 235859, 1, 1, 3, 2, 2, 0, CAST(N'2017-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1350, N'GEMA', N'AYLLON', N'FONT', N'12bl15071721350', 236365, 1, 3, 4, 2, 2, 0, CAST(N'2011-09-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1351, N'PALOMA', N'PRIEGO', N'URENA', N'12bl15071721351', 235277, 1, 1, 10, 2, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1352, N'ADELINA', N'MARQUES', N'SAEZ', N'12bl15071721352', 235357, 1, 6, 11, 2, 2, 0, CAST(N'2019-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1353, N'JUDITH', N'SAURA', N'RUEDA', N'12bl15071721353', 235761, 1, 3, 12, 2, 2, 0, CAST(N'2011-09-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1354, N'SAMUEL', N'TEJERO', N'CAMACHO', N'12bl15071721354', 236182, 1, 2, 11, 2, 2, 0, CAST(N'2016-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1355, N'VIRGILIO', N'TOME', N'GALVAN', N'12bl15071721355', 235186, 1, 5, 12, 2, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1356, N'VIVIANA', N'LEIVA', N'ABELLAN', N'12bl15071721356', 236151, 1, 2, 4, 2, 2, 0, CAST(N'2018-09-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1357, N'ISAURA', N'VILALTA', N'BELDA', N'12bl15071721357', 235685, 1, 3, 9, 2, 2, 0, CAST(N'2013-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1358, N'CEFERINO', N'SALINAS', N'HERNANDO', N'12bl15071721358', 236234, 1, 2, 2, 2, 2, 0, CAST(N'2018-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1359, N'BEATRIZ', N'ROSA', N'BLANCO', N'12bl15071721359', 235176, 1, 6, 3, 2, 2, 0, CAST(N'2010-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1360, N'TECLA', N'VINA', N'MAZA', N'12bl15071721360', 235441, 1, 5, 5, 2, 2, 0, CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1361, N'DIANA', N'ESCRIVA', N'JULIAN', N'12bl15071721361', 235785, 1, 4, 13, 2, 2, 0, CAST(N'2017-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1362, N'CHELO', N'MONTESINOS', N'FERNANDEZ', N'12bl15071721362', 235844, 1, 2, 13, 2, 2, 0, CAST(N'2011-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1363, N'AGUSTINA', N'SOLERA', N'DIAZ', N'12bl15071721363', 235241, 1, 2, 13, 2, 2, 0, CAST(N'2010-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1364, N'AMALIA', N'AMO', N'URIBE', N'12bl15071721364', 235226, 1, 3, 11, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1365, N'DEMETRIO', N'HEREDIA', N'BARRAL', N'12bl15071721365', 235707, 1, 2, 13, 2, 2, 0, CAST(N'2021-07-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1366, N'CALISTA', N'PI', N'MORERA', N'12bl15071721366', 235853, 1, 1, 4, 2, 2, 0, CAST(N'2022-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1367, N'SAMU', N'SAMU', N'OLMEDO', N'12bl15071721367', 235744, 1, 3, 7, 2, 2, 0, CAST(N'2017-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1368, N'NORBERTO', N'BERENGUER', N'GIMENEZ', N'12bl15071721368', 236265, 1, 1, 12, 2, 2, 0, CAST(N'2016-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1369, N'MAXIMILIANO', N'SAEZ', N'VARA', N'12bl15071721369', 235219, 1, 3, 3, 2, 2, 0, CAST(N'2010-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1370, N'SATURNINO', N'AMOROS', N'VALBUENA', N'12bl15071721370', 235159, 1, 3, 4, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1371, N'MELANIA', N'ESCOBAR', N'ARMAS', N'12bl15071721371', 236259, 1, 2, 12, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1372, N'JACINTA', N'DEL', N'MONTANA', N'12bl15071721372', 236255, 1, 1, 13, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1373, N'MARIA', N'GARATE', N'CARRASCO', N'12bl15071721373', 235956, 1, 6, 3, 2, 2, 0, CAST(N'2022-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1374, N'CONCHA', N'TEJERO', N'MAYORAL', N'12bl15071721374', 234974, 1, 4, 8, 2, 2, 0, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1375, N'JOSE', N'GARGALLO', N'CUESTA', N'12bl15071721375', 235993, 1, 4, 14, 2, 2, 0, CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1376, N'AURA', N'CALATAYUD', N'DURAN', N'12bl15071721376', 235820, 1, 6, 4, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1377, N'TERESA', N'BERNAD', N'MORANTE', N'12bl15071721377', 235114, 1, 6, 10, 2, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1378, N'JORDAN', N'BENET', N'COLLADO', N'12bl15071721378', 236107, 1, 2, 5, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1379, N'MARIA', N'PAEZ', N'PALAU', N'12bl15071721379', 235306, 1, 2, 14, 2, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1380, N'SATURNINA', N'FAJARDO', N'GALIANO', N'12bl15071721380', 236181, 1, 1, 9, 2, 2, 0, CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1381, N'SEVE', N'CALZADA', N'BARROSO', N'12bl15071721381', 235495, 1, 5, 6, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1382, N'OLALLA', N'MAYOL', N'PUJADAS', N'12bl15071721382', 235673, 1, 3, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1383, N'YESICA', N'ARRIETA', N'MANZANARES', N'12bl15071721383', 236444, 1, 3, 5, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1384, N'JOSE', N'CAZORLA', N'MARTINEZ', N'12bl15071721384', 235720, 1, 5, 2, 2, 2, 0, CAST(N'2023-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1385, N'ODALYS', N'ODALYS', N'BARON', N'12bl15071721385', 236351, 1, 2, 4, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1386, N'MONTSERRAT', N'VALERO', N'NICOLAS', N'12bl15071721386', 235432, 1, 1, 6, 2, 2, 0, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1387, N'WALTER', N'ARCO', N'AGUSTI', N'12bl15071721387', 235746, 1, 1, 12, 2, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1388, N'ELIGIA', N'ELIGIA', N'CABALLERO', N'12bl15071721388', 235380, 1, 2, 15, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1389, N'BIBIANA', N'OLIVERA', N'COCA', N'12bl15071721389', 235057, 1, 4, 15, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1390, N'ELIGIA', N'PORRAS', N'SARABIA', N'12bl15071721390', 236145, 1, 1, 7, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1391, N'ANGELINO', N'LEDESMA', N'CHICO', N'12bl15071721391', 235658, 1, 2, 12, 2, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1392, N'LUIS', N'BUSTOS', N'REQUENA', N'12bl15071721392', 235756, 1, 2, 7, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1393, N'GEORGINA', N'CARRILLO', N'ACERO', N'12bl15071721393', 236009, 1, 4, 15, 2, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1394, N'FANNY', N'CASTELL', N'CABEZAS', N'12bl15071721394', 235852, 1, 5, 9, 2, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1395, N'JULIANA', N'SOLE', N'CANTON', N'12bl15071721395', 235489, 1, 2, 7, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1396, N'MARIA', N'CERDAN', N'CARRERA', N'12bl15071721396', 236242, 1, 4, 12, 2, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1397, N'CESAR', N'DE', N'BATLLE', N'12bl15071721397', 235670, 1, 2, 11, 2, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1398, N'HILDA', N'BENITEZ', N'CUESTA', N'12bl15071721398', 235511, 1, 4, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1399, N'DIEGO', N'DIEGO', N'PALOMINO', N'12bl15071721399', 234978, 1, 3, 4, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1400, N'ODALIS', N'LARRANAGA', N'PAREJO', N'12bl15071721400', 235881, 1, 5, 13, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1401, N'ELVIRA', N'ROVIRA', N'AVILES', N'12bl15071721401', 236250, 1, 2, 11, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1402, N'DESIDERIO', N'GOICOECHEA', N'LLUCH', N'12bl15071721402', 236172, 1, 1, 3, 2, 2, 0, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1403, N'LOPE', N'COSTA', N'MONTESINOS', N'12bl15071721403', 236002, 1, 3, 8, 2, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1404, N'ANDRES', N'NICOLAS', N'PEREIRA', N'12bl15071721404', 235828, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1405, N'GERALDO', N'SALAZAR', N'ALBA', N'12bl15071721405', 235845, 1, 6, 7, 2, 2, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1406, N'CLARA', N'POZUELO', N'ARCO', N'12bl15071721406', 236290, 1, 5, 4, 2, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1407, N'JOSE', N'MENA', N'CALZADA', N'12bl15071721407', 235811, 1, 3, 13, 2, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1408, N'BERNARDINO', N'MUGICA', N'AVILES', N'12bl15071721408', 236212, 1, 2, 5, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1409, N'BENITO', N'GALIANO', N'CASTILLA', N'12bl15071721409', 236310, 1, 1, 6, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1410, N'ADELAIDA', N'ADELAIDA', N'TEJEDOR', N'12bl15071721410', 235278, 1, 3, 8, 2, 2, 0, CAST(N'2020-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1411, N'PRUDENCIA', N'NOGUES', N'PLANA', N'12bl15071721411', 236143, 1, 5, 5, 2, 2, 0, CAST(N'2021-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1412, N'ENCARNACION', N'GABALDON', N'BALLESTEROS', N'12bl15071721412', 235972, 1, 2, 11, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1413, N'AMADO', N'DEL', N'ROCA', N'12bl15071721413', 235293, 1, 6, 5, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1414, N'CHELO', N'DE', N'MADRID', N'12bl15071721414', 235922, 1, 5, 12, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1415, N'SEVERINO', N'MATE', N'PERERA', N'12bl15071721415', 235552, 1, 6, 2, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1416, N'CHUS', N'LEON', N'LLANOS', N'12bl15071721416', 235773, 1, 3, 5, 2, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1417, N'MARIANELA', N'MILLAN', N'JAUREGUI', N'12bl15071721417', 236047, 1, 6, 11, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1418, N'MARIA', N'BELEN', N'FUSTER', N'12bl15071721418', 235710, 1, 4, 10, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1419, N'ISA', N'NOGUEIRA', N'CABELLO', N'12bl15071721419', 236241, 1, 1, 14, 2, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1420, N'CELIA', N'CELIA', N'FERNANDEZ', N'12bl15071721420', 235898, 1, 6, 10, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1421, N'LUCILA', N'PARRA', N'MIRALLES', N'12bl15071721421', 235764, 1, 1, 4, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1422, N'FELIPA', N'FELIPA', N'CUENCA', N'12bl15071721422', 236109, 1, 6, 8, 2, 2, 0, CAST(N'2021-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1423, N'ELISABET', N'POLO', N'COLOM', N'12bl15071721423', 235914, 1, 2, 7, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1424, N'ONOFRE', N'BARO', N'COCA', N'12bl15071721424', 235171, 1, 3, 5, 2, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1425, N'SOSIMO', N'SANCHEZ', N'ACOSTA', N'12bl15071721425', 235476, 1, 6, 10, 2, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1426, N'VERONICA', N'GUTIERREZ', N'PARRA', N'12bl15071721426', 235214, 1, 5, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1427, N'JOSE', N'GARATE', N'BARROS', N'12bl15071721427', 235144, 1, 4, 11, 2, 2, 0, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1428, N'MAR', N'DE', N'VINAS', N'12bl15071721428', 235327, 1, 4, 11, 2, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1429, N'MACARIO', N'PUJADAS', N'BARROS', N'12bl15071721429', 235481, 1, 2, 10, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1430, N'DIMAS', N'LILLO', N'MUNOZ', N'12bl15071721430', 235787, 1, 3, 2, 2, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1431, N'GRACIA', N'GRACIA', N'PUERTA', N'12bl15071721431', 236354, 1, 1, 2, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1432, N'CORAL', N'JAUREGUI', N'DOMINGUEZ', N'12bl15071721432', 235205, 1, 1, 6, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1433, N'OMAR', N'POZA', N'GALLART', N'12bl15071721433', 235913, 1, 1, 11, 2, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1434, N'EUGENIO', N'EUGENIO', N'MORANTE', N'12bl15071721434', 235439, 1, 4, 13, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1435, N'DAMIAN', N'DE', N'CORTES', N'12bl15071721435', 234966, 1, 5, 11, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1436, N'LINO', N'CABANAS', N'IRIARTE', N'12bl15071721436', 235183, 1, 6, 10, 2, 2, 0, CAST(N'2022-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1437, N'JULIO', N'GUARDIA', N'ALVARO', N'12bl15071721437', 235751, 1, 6, 8, 2, 2, 0, CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1438, N'CESAR', N'BARRAGAN', N'CARRO', N'12bl15071721438', 236071, 1, 6, 11, 2, 2, 0, CAST(N'2022-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1439, N'ARCELIA', N'NEIRA', N'COLOM', N'12bl15071721439', 235234, 1, 3, 9, 2, 2, 0, CAST(N'2022-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1440, N'PLINIO', N'MORA', N'ARRANZ', N'12bl15071721440', 235817, 1, 3, 2, 2, 2, 0, CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1441, N'HAROLDO', N'AYUSO', N'ARNAU', N'12bl15071721441', 235960, 1, 3, 11, 2, 2, 0, CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1442, N'MILAGROS', N'CANALS', N'MONTANA', N'12bl15071721442', 235612, 1, 4, 13, 2, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1443, N'AMBAR', N'MIGUEL', N'RIPOLL', N'12bl15071721443', 235763, 1, 5, 15, 2, 2, 0, CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1444, N'SALOMON', N'DEL', N'VERDEJO', N'12bl15071721444', 236417, 1, 3, 4, 2, 2, 0, CAST(N'2021-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1445, N'JESUSA', N'BAEZ', N'TUR', N'12bl15071721445', 235374, 1, 2, 8, 2, 2, 0, CAST(N'2020-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1446, N'CLEMENTE', N'SALAS', N'IRIARTE', N'12bl15071721446', 235754, 1, 2, 4, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1447, N'BERNABE', N'HUERTAS', N'CASANOVA', N'12bl15071721447', 235265, 1, 1, 11, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1448, N'GLAUCO', N'VERGARA', N'CLEMENTE', N'12bl15071721448', 235906, 1, 2, 11, 2, 2, 0, CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1449, N'JULIA', N'MEDINA', N'SEVILLANO', N'12bl15071721449', 235655, 1, 6, 11, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1450, N'MAXIMO', N'DE', N'RODRIGUEZ', N'12bl15071721450', 234996, 1, 6, 4, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1451, N'MARIA', N'MATE', N'GUARDIOLA', N'12bl15071721451', 235760, 1, 3, 7, 2, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1452, N'ABRAHAM', N'AZNAR', N'PINEIRO', N'12bl15071721452', 236223, 1, 2, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1453, N'VICTORIA', N'ENRIQUEZ', N'SANCHEZ', N'12bl15071721453', 236068, 1, 2, 3, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1454, N'LETICIA', N'SOMOZA', N'OTERO', N'12bl15071721454', 236130, 1, 4, 7, 2, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1455, N'FLORINDA', N'LLAMAS', N'SARMIENTO', N'12bl15071721455', 235676, 1, 5, 3, 2, 2, 0, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1456, N'FELICIANO', N'CANALS', N'SALES', N'12bl15071721456', 235162, 1, 6, 4, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1457, N'ABEL', N'ALBA', N'PRADA', N'12bl15071721457', 235589, 1, 1, 13, 2, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1458, N'MAURICIO', N'LUNA', N'POU', N'12bl15071721458', 236127, 1, 3, 11, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1459, N'DELIA', N'JIMENEZ', N'RIUS', N'12bl15071721459', 236094, 1, 1, 7, 2, 2, 0, CAST(N'2021-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1460, N'TRINIDAD', N'VALLS', N'CERRO', N'12bl15071721460', 235067, 1, 5, 6, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1461, N'PIO', N'PAREJO', N'BARTOLOME', N'12bl15071721461', 234991, 1, 2, 9, 2, 2, 0, CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1462, N'PASCUAL', N'NAVARRO', N'FALCON', N'12bl15071721462', 236381, 1, 3, 11, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1463, N'LORENZO', N'CARBONELL', N'GOMILA', N'12bl15071721463', 235743, 1, 5, 13, 2, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1464, N'INIGO', N'SANTIAGO', N'ARNAL', N'12bl15071721464', 236135, 1, 2, 6, 2, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1465, N'ROLANDO', N'CARRANZA', N'SOLER', N'12bl15071721465', 235543, 1, 1, 6, 2, 2, 0, CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1466, N'CORNELIO', N'GALAN', N'FONT', N'12bl15071721466', 235362, 1, 3, 11, 2, 2, 0, CAST(N'2021-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1467, N'ADELINA', N'TORMO', N'ANDREU', N'12bl15071721467', 236400, 1, 5, 13, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1468, N'ANSELMA', N'MENDEZ', N'CLEMENTE', N'12bl15071721468', 235071, 1, 1, 14, 2, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1469, N'PAOLA', N'LORENZO', N'POMBO', N'12bl15071721469', 235736, 1, 4, 12, 2, 2, 0, CAST(N'2020-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1470, N'MIGUEL', N'DEL', N'LEIVA', N'12bl15071721470', 235860, 1, 6, 12, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1471, N'EDELMIRO', N'LLABRES', N'BENAVIDES', N'12bl15071721471', 235930, 1, 3, 3, 2, 2, 0, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1472, N'MAYTE', N'DIEGUEZ', N'GUILLEN', N'12bl15071721472', 235920, 1, 6, 4, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1473, N'ESMERALDA', N'MATEO', N'NARVAEZ', N'12bl15071721473', 235392, 1, 5, 15, 2, 2, 0, CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1474, N'TANIA', N'TANIA', N'CANELLAS', N'12bl15071721474', 236332, 1, 1, 14, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1475, N'LEONARDO', N'DEL', N'VALLEJO', N'12bl15071721475', 236231, 1, 1, 6, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1476, N'ANIBAL', N'CUELLAR', N'SASTRE', N'12bl15071721476', 236418, 1, 1, 2, 2, 2, 0, CAST(N'2020-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1477, N'ALEJANDRO', N'DE', N'CARRENO', N'12bl15071721477', 234987, 1, 5, 12, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1478, N'BUENAVENTURA', N'GUZMAN', N'HERRERA', N'12bl15071721478', 235275, 1, 1, 6, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1479, N'EDGARDO', N'MERCADER', N'CUERVO', N'12bl15071721479', 235887, 1, 1, 5, 2, 2, 0, CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1480, N'AMADA', N'BAEZ', N'ACERO', N'12bl15071721480', 235662, 1, 5, 3, 2, 2, 0, CAST(N'2021-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1481, N'SORAYA', N'MACIAS', N'COLOM', N'12bl15071721481', 235024, 1, 5, 12, 2, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1482, N'MARIBEL', N'INFANTE', N'CARVAJAL', N'12bl15071721482', 235897, 1, 1, 10, 2, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1483, N'GRACIANO', N'VIZCAINO', N'SEGURA', N'12bl15071721483', 235776, 1, 3, 6, 2, 2, 0, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1484, N'MARISELA', N'CAMPOS', N'PLANA', N'12bl15071721484', 236261, 1, 2, 6, 2, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1485, N'ALFONSO', N'CORNEJO', N'ROLDAN', N'12bl15071721485', 236048, 1, 6, 8, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1486, N'ELODIA', N'CASTANEDA', N'POMBO', N'12bl15071721486', 235520, 1, 4, 13, 2, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1487, N'MIGUELA', N'LOBO', N'AYUSO', N'12bl15071721487', 235452, 1, 4, 4, 2, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1488, N'FERMIN', N'MONTANA', N'GOMILA', N'12bl15071721488', 236280, 1, 5, 9, 2, 2, 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1489, N'ABIGAIL', N'EXPOSITO', N'PINA', N'12bl15071721489', 235568, 1, 3, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1490, N'BERTA', N'DE', N'FERRERA', N'12bl15071721490', 235260, 1, 2, 10, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1491, N'BENIGNA', N'MILLA', N'PAEZ', N'12bl15071721491', 236132, 1, 5, 4, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1492, N'LOPE', N'PINTOR', N'JULIA', N'12bl15071721492', 236012, 1, 5, 3, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1493, N'PEPITA', N'RUBIO', N'NEVADO', N'12bl15071721493', 235664, 1, 6, 11, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1494, N'EDUARDO', N'EDUARDO', N'SANTOS', N'12bl15071721494', 235069, 1, 6, 9, 2, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1495, N'ANSELMO', N'PORTA', N'POMBO', N'12bl15071721495', 236420, 1, 1, 9, 2, 2, 0, CAST(N'2023-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1496, N'MARIA', N'ATIENZA', N'PINEIRO', N'12bl15071721496', 235154, 1, 2, 15, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1497, N'TONO', N'ROSSELLO', N'BLAZQUEZ', N'12bl15071721497', 236063, 1, 1, 11, 2, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1498, N'JOSE', N'CARLOS', N'COELLO', N'12bl15071721498', 235632, 1, 2, 3, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1499, N'EMPERATRIZ', N'NAVARRETE', N'YUSTE', N'12bl15071721499', 235170, 1, 3, 14, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1500, N'IMELDA', N'SEVILLANO', N'SANCHEZ', N'12bl15071721500', 235729, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1501, N'ISABEL', N'ROSADO', N'BARROSO', N'12bl15071721501', 236860, 1, 5, 11, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1502, N'FORTUNATO', N'ESTEVEZ', N'BELLIDO', N'12bl15071721502', 236782, 1, 5, 13, 2, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1503, N'JOSE', N'VILLENA', N'ABELLAN', N'12bl15071721503', 236469, 1, 3, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1504, N'AMILCAR', N'BARBERO', N'COMAS', N'12bl15071721504', 236845, 1, 1, 5, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1505, N'HECTOR', N'BALLESTEROS', N'GARRIGA', N'12bl15071721505', 236569, 1, 5, 8, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1506, N'BIENVENIDA', N'DE', N'TOME', N'12bl15071721506', 236481, 1, 3, 4, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1507, N'BARBARA', N'CAMARA', N'PLANA', N'12bl15071721507', 236833, 1, 5, 12, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1508, N'EUFEMIA', N'DEL', N'GALLARDO', N'12bl15071721508', 236631, 1, 3, 12, 2, 2, 0, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1509, N'FERNANDO', N'ANDREU', N'FALCON', N'12bl15071721509', 236671, 1, 3, 5, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1510, N'LUCIANA', N'DE', N'BORRELL', N'12bl15071721510', 236462, 1, 2, 12, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1511, N'SALOME', N'DOMENECH', N'CANALS', N'12bl15071721511', 236623, 1, 2, 2, 2, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1512, N'FEBE', N'FEBE', N'BATALLA', N'12bl15071721512', 236883, 1, 4, 6, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1513, N'ANGEL', N'JULIAN', N'CASAL', N'12bl15071721513', 236627, 1, 1, 10, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1514, N'FLORENTINO', N'LLAMAS', N'IRIARTE', N'12bl15071721514', 236699, 1, 3, 7, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1515, N'QUIQUE', N'OCHOA', N'GRANADOS', N'12bl15071721515', 236839, 1, 4, 4, 2, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1516, N'ROSA', N'BELTRAN', N'MANZANO', N'12bl15071721516', 236920, 1, 6, 3, 2, 2, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1517, N'JOSE', N'CHAPARRO', N'ZAPATA', N'12bl15071721517', 236547, 1, 6, 15, 2, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1518, N'ADAN', N'ADAN', N'PALLARES', N'12bl15071721518', 236477, 1, 5, 2, 2, 2, 0, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1519, N'ROBERTA', N'AROCA', N'CANELLAS', N'12bl15071721519', 236451, 1, 3, 10, 2, 2, 0, CAST(N'2021-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1520, N'JOSE', N'MARI', N'GINER', N'12bl15071721520', 236748, 1, 5, 12, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1521, N'ANDRES', N'MURILLO', N'ALCOLEA', N'12bl15071721521', 236944, 1, 3, 12, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1522, N'TORIBIO', N'TORIBIO', N'SILVA', N'12bl15071721522', 236818, 1, 4, 15, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1523, N'AGAPITO', N'AGAPITO', N'LOBO', N'12bl15071721523', 236497, 1, 5, 7, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1524, N'HECTOR', N'JAUREGUI', N'PINO', N'12bl15071721524', 236904, 1, 5, 13, 2, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1525, N'REGINA', N'LLEDO', N'PEREA', N'12bl15071721525', 236588, 1, 1, 4, 2, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1526, N'CRISTINA', N'CARDENAS', N'ALCARAZ', N'12bl15071721526', 236928, 1, 5, 2, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1527, N'ESTHER', N'SANDOVAL', N'ORTUNO', N'12bl15071721527', 236560, 1, 4, 3, 2, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1528, N'IBAN', N'SALVADOR', N'PUJADAS', N'12bl15071721528', 236864, 1, 1, 3, 2, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1529, N'SUSANA', N'BARRERA', N'PRATS', N'12bl15071721529', 236554, 1, 2, 10, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1530, N'NADIA', N'HOZ', N'CABANAS', N'12bl15071721530', 236775, 1, 4, 12, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1531, N'MANUELITA', N'ARRIBAS', N'VAQUERO', N'12bl15071721531', 236681, 1, 1, 2, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1532, N'ANASTASIO', N'DEL', N'BERNAD', N'12bl15071721532', 236709, 1, 1, 12, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1533, N'NARCISO', N'MATEO', N'CARRENO', N'12bl15071721533', 236690, 1, 3, 13, 2, 2, 0, CAST(N'2021-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1534, N'OCTAVIA', N'CORDERO', N'MATA', N'12bl15071721534', 236583, 1, 4, 6, 2, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1535, N'LEYRE', N'CHECA', N'CANETE', N'12bl15071721535', 236595, 1, 6, 15, 2, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1536, N'AMBAR', N'ALIAGA', N'MENDEZ', N'12bl15071721536', 236540, 1, 2, 14, 2, 2, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1537, N'NICOLAS', N'NICOLAS', N'ALIAGA', N'12bl15071721537', 236851, 1, 3, 10, 2, 2, 0, CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1538, N'JORDAN', N'ESTEVEZ', N'CANET', N'12bl15071721538', 236734, 1, 3, 5, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1539, N'ADELARDO', N'CARPIO', N'GUARDIOLA', N'12bl15071721539', 236811, 1, 1, 8, 2, 2, 0, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1540, N'ANGELINO', N'ARAGONES', N'MARQUEZ', N'12bl15071721540', 236478, 1, 4, 5, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1541, N'GRACIA', N'DE', N'ESPANOL', N'12bl15071721541', 236768, 1, 6, 14, 2, 2, 0, CAST(N'2022-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1542, N'AMELIA', N'FABRA', N'REAL', N'12bl15071721542', 236471, 1, 3, 7, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1543, N'JOSE', N'TRILLO', N'PRADO', N'12bl15071721543', 236719, 1, 1, 9, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1544, N'EUTROPIO', N'IBANEZ', N'BARTOLOME', N'12bl15071721544', 236778, 1, 3, 9, 2, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1545, N'ANABEL', N'PUGA', N'PLANAS', N'12bl15071721545', 236495, 1, 3, 8, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1546, N'LEON', N'LEON', N'TORMO', N'12bl15071721546', 236799, 1, 6, 6, 2, 2, 0, CAST(N'2022-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1547, N'JOSE', N'PENALVER', N'BECERRA', N'12bl15071721547', 236613, 1, 5, 9, 2, 2, 0, CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1548, N'FATIMA', N'ALBERTO', N'SAINZ', N'12bl15071721548', 236878, 1, 4, 12, 2, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1549, N'LEONARDO', N'OLIVE', N'GRANDE', N'12bl15071721549', 236882, 1, 5, 14, 2, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1550, N'ARACELI', N'EXPOSITO', N'CARRILLO', N'12bl15071721550', 236870, 1, 3, 12, 2, 2, 0, CAST(N'2022-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1551, N'EMILIANO', N'OROZCO', N'MINGUEZ', N'12bl15071721551', 236549, 1, 4, 12, 2, 2, 0, CAST(N'2020-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1552, N'HAYDEE', N'SANMARTIN', N'GARGALLO', N'12bl15071721552', 236618, 1, 1, 15, 2, 2, 0, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1553, N'OCTAVIO', N'SOLSONA', N'GUITART', N'12bl15071721553', 236831, 1, 1, 15, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1554, N'VALERO', N'FERRERA', N'MATE', N'12bl15071721554', 236641, 1, 3, 11, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1555, N'ROSENDA', N'TAMAYO', N'POZA', N'12bl15071721555', 236686, 1, 3, 14, 2, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1556, N'ADORACION', N'MADRIGAL', N'VINAS', N'12bl15071721556', 236561, 1, 6, 8, 2, 2, 0, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1557, N'GABRIEL', N'CORNEJO', N'SAAVEDRA', N'12bl15071721557', 236458, 1, 5, 8, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1558, N'CALIXTA', N'ARANA', N'COMAS', N'12bl15071721558', 236927, 1, 4, 7, 2, 2, 0, CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1559, N'MODESTO', N'BALLESTEROS', N'CARMONA', N'12bl15071721559', 236621, 1, 5, 10, 2, 2, 0, CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1560, N'DONATO', N'ALCANTARA', N'HERVAS', N'12bl15071721560', 236760, 1, 1, 7, 2, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1561, N'DIEGO', N'DEL', N'BATALLA', N'12bl15071721561', 236487, 1, 6, 11, 2, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1562, N'MARCELINO', N'MARCELINO', N'URENA', N'12bl15071721562', 236484, 1, 1, 6, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1563, N'ANNA', N'IGLESIAS', N'CERVERA', N'12bl15071721563', 236682, 1, 2, 15, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1564, N'MARIANA', N'MARIANA', N'COBO', N'12bl15071721564', 236774, 1, 1, 4, 2, 2, 0, CAST(N'2022-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1565, N'ZACARIAS', N'SILVA', N'ROSADO', N'12bl15071721565', 236914, 1, 3, 13, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1566, N'NICANOR', N'PRADA', N'BLAZQUEZ', N'12bl15071721566', 236816, 1, 5, 6, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1567, N'FLORENTINA', N'PEREZ', N'REVILLA', N'12bl15071721567', 236503, 1, 2, 2, 2, 2, 0, CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1568, N'PRUDENCIA', N'DEL', N'CASTRO', N'12bl15071721568', 236813, 1, 5, 9, 2, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1569, N'NOE', N'DE', N'SALDANA', N'12bl15071721569', 236738, 1, 6, 8, 2, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1570, N'COSME', N'DE', N'COMPANY', N'12bl15071721570', 236559, 1, 1, 6, 2, 2, 0, CAST(N'2021-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1571, N'CHARO', N'POZUELO', N'BONET', N'12bl15071721571', 236876, 1, 1, 10, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1572, N'MARTIN', N'DE', N'VALENTIN', N'12bl15071721572', 236875, 1, 3, 8, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1573, N'GASPAR', N'FUERTES', N'GOMILA', N'12bl15071721573', 236649, 1, 6, 6, 2, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1574, N'ALEJO', N'QUIROS', N'ALBERDI', N'12bl15071721574', 236886, 1, 6, 9, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1575, N'VIRGINIA', N'BARRIGA', N'GIMENEZ', N'12bl15071721575', 236640, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1576, N'OCTAVIA', N'ZURITA', N'SERRANO', N'12bl15071721576', 236657, 1, 2, 2, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1577, N'MARIO', N'RIPOLL', N'OLMEDO', N'12bl15071721577', 236577, 1, 5, 6, 2, 2, 0, CAST(N'2021-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1578, N'NACIO', N'CABELLO', N'PERAL', N'12bl15071721578', 236662, 1, 4, 3, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1579, N'REYNA', N'DEL', N'JULIAN', N'12bl15071721579', 236545, 1, 1, 9, 2, 2, 0, CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1580, N'NAZARET', N'LEON', N'ESCOBAR', N'12bl15071721580', 236814, 1, 1, 8, 2, 2, 0, CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1581, N'SATURNINO', N'JAUREGUI', N'BARREDA', N'12bl15071721581', 236819, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1582, N'FABIAN', N'GALLARDO', N'CAMPS', N'12bl15071721582', 236726, 1, 5, 8, 2, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1583, N'ELIAS', N'DE', N'PUJOL', N'12bl15071721583', 236771, 1, 4, 15, 2, 2, 0, CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1584, N'MARTINA', N'DEL', N'LOZANO', N'12bl15071721584', 236841, 1, 2, 8, 2, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1585, N'PERLITA', N'LLOBET', N'SARMIENTO', N'12bl15071721585', 236900, 1, 2, 14, 2, 2, 0, CAST(N'2022-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1586, N'MARCIA', N'BARBERA', N'SOLERA', N'12bl15071721586', 236693, 1, 1, 4, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1587, N'ANGEL', N'BARRAGAN', N'PINILLA', N'12bl15071721587', 236836, 1, 6, 6, 2, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1588, N'EVARISTO', N'IBANEZ', N'MAYORAL', N'12bl15071721588', 236795, 1, 6, 9, 2, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1589, N'OSCAR', N'VIDAL', N'CALLEJA', N'12bl15071721589', 236524, 1, 2, 11, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1590, N'XIMENA', N'GARMENDIA', N'ARMAS', N'12bl15071721590', 236773, 1, 6, 12, 2, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1591, N'ERNESTO', N'LERMA', N'SEGUI', N'12bl15071721591', 236480, 1, 4, 11, 2, 2, 0, CAST(N'2023-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1592, N'JULIA', N'CLAVERO', N'BELTRAN', N'12bl15071721592', 236932, 1, 4, 7, 2, 2, 0, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1593, N'ELIGIO', N'ELIGIO', N'PI', N'12bl15071721593', 236755, 1, 3, 5, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1594, N'CINTIA', N'BENAVENTE', N'ANGULO', N'12bl15071721594', 236939, 1, 5, 5, 2, 2, 0, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1595, N'CASEMIRO', N'LUNA', N'SOBRINO', N'12bl15071721595', 236510, 1, 6, 7, 2, 2, 0, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1596, N'BORJA', N'CASES', N'TEJERA', N'12bl15071721596', 236638, 1, 3, 12, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1597, N'BONIFACIO', N'MURCIA', N'RIERA', N'12bl15071721597', 236840, 1, 4, 5, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1598, N'JERONIMO', N'ROBLEDO', N'MACIAS', N'12bl15071721598', 236742, 1, 2, 4, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1599, N'TORIBIO', N'SAAVEDRA', N'ESTRADA', N'12bl15071721599', 236486, 1, 5, 4, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1600, N'MARIA', N'LLOPIS', N'CASTRO', N'12bl15071721600', 236828, 1, 6, 10, 2, 2, 0, CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1601, N'VIVIANA', N'DE', N'CRESPI', N'12bl15071721601', 236521, 1, 4, 5, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1602, N'GERMAN', N'AZNAR', N'SALA', N'12bl15071721602', 236652, 1, 6, 6, 2, 2, 0, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1603, N'RAMIRO', N'MOLES', N'VICENS', N'12bl15071721603', 236946, 1, 1, 5, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1604, N'JOAQUIN', N'OCHOA', N'GIMENEZ', N'12bl15071721604', 236555, 1, 4, 3, 2, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1605, N'SOFIA', N'LILLO', N'QUEROL', N'12bl15071721605', 236512, 1, 3, 14, 2, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1606, N'DAVID', N'VILLALBA', N'ABELLA', N'12bl15071721606', 236455, 1, 6, 12, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1607, N'LEOCADIO', N'MATA', N'NAVARRETE', N'12bl15071721607', 236790, 1, 5, 13, 2, 2, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1608, N'CURRO', N'ARELLANO', N'PALMA', N'12bl15071721608', 236880, 1, 5, 2, 2, 2, 0, CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1609, N'CHARO', N'CHARO', N'PELAYO', N'12bl15071721609', 236488, 1, 4, 2, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1610, N'ODALYS', N'ODALYS', N'CAMPOY', N'12bl15071721610', 236921, 1, 3, 13, 2, 2, 0, CAST(N'2023-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1611, N'VISITACION', N'NOGUERA', N'CRUZ', N'12bl15071721611', 236930, 1, 4, 11, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1612, N'JAVIER', N'CABRERA', N'VALENZUELA', N'12bl15071721612', 236675, 1, 3, 4, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1613, N'CARINA', N'LASA', N'CAMACHO', N'12bl15071721613', 236611, 1, 6, 14, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1614, N'REBECA', N'MARISCAL', N'PEREZ', N'12bl15071721614', 236743, 1, 1, 14, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1615, N'LUIS', N'LUIS', N'TUR', N'12bl15071721615', 236857, 1, 4, 13, 2, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1616, N'FLORINA', N'BAS', N'ESPEJO', N'12bl15071721616', 236704, 1, 5, 9, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1617, N'LARA', N'DEL', N'OCHOA', N'12bl15071721617', 236728, 1, 5, 13, 2, 2, 0, CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1618, N'ISABELA', N'ANDRES', N'BAENA', N'12bl15071721618', 236915, 1, 4, 5, 2, 2, 0, CAST(N'2023-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1619, N'CONSUELA', N'CONSUELA', N'FRANCISCO', N'12bl15071721619', 236917, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1620, N'GUADALUPE', N'MARTI', N'BAENA', N'12bl15071721620', 236464, 1, 6, 4, 2, 2, 0, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1621, N'JOSEFINA', N'MANRIQUE', N'CASTANEDA', N'12bl15071721621', 236732, 1, 2, 3, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1622, N'EDGARDO', N'POMARES', N'LUZ', N'12bl15071721622', 236648, 1, 3, 13, 2, 2, 0, CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1623, N'RAFAELA', N'HERRANZ', N'HURTADO', N'12bl15071721623', 236680, 1, 5, 2, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1624, N'VALENTIN', N'DIEGO', N'ARNAL', N'12bl15071721624', 236892, 1, 2, 13, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1625, N'ARACELI', N'GUTIERREZ', N'PENA', N'12bl15071721625', 236934, 1, 6, 12, 2, 2, 0, CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1626, N'ISMAEL', N'DE', N'RIBA', N'12bl15071721626', 236582, 1, 4, 11, 2, 2, 0, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1627, N'ANGELITA', N'NOGUERA', N'PRAT', N'12bl15071721627', 236889, 1, 2, 4, 2, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1628, N'ADELA', N'DE', N'BLANCH', N'12bl15071721628', 236472, 1, 3, 4, 2, 2, 0, CAST(N'2023-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1629, N'ISAURA', N'CARVAJAL', N'LOSA', N'12bl15071721629', 236562, 1, 5, 13, 2, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1630, N'ADELIA', N'MERINO', N'DUQUE', N'12bl15071721630', 236575, 1, 2, 15, 2, 2, 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1631, N'TEODORO', N'FUERTES', N'HOZ', N'12bl15071721631', 236609, 1, 1, 3, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1632, N'SERAFINA', N'MENDEZ', N'SALA', N'12bl15071721632', 236770, 1, 4, 5, 2, 2, 0, CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1633, N'FERNANDA', N'ZAMORA', N'CORDOBA', N'12bl15071721633', 236695, 1, 6, 13, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1634, N'JULIA', N'DEL', N'LOBO', N'12bl15071721634', 236761, 1, 2, 15, 2, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1635, N'ANTONIO', N'ANTONIO', N'CASTILLA', N'12bl15071721635', 236668, 1, 1, 15, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1636, N'NAZARIO', N'EGEA', N'FABREGAS', N'12bl15071721636', 236801, 1, 3, 14, 2, 2, 0, CAST(N'2020-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1637, N'CONCEPCION', N'LORENZO', N'CAMPS', N'12bl15071721637', 236924, 1, 5, 12, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1638, N'GISELA', N'TENORIO', N'OJEDA', N'12bl15071721638', 236700, 1, 2, 13, 2, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1639, N'ELPIDIO', N'NICOLAU', N'LOBO', N'12bl15071721639', 236703, 1, 1, 13, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1640, N'JOSEP', N'CARBALLO', N'PONCE', N'12bl15071721640', 236573, 1, 4, 7, 2, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1641, N'EUGENIA', N'EUGENIA', N'BATALLA', N'12bl15071721641', 236483, 1, 5, 5, 2, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1642, N'ROSENDA', N'GIRON', N'BATLLE', N'12bl15071721642', 236765, 1, 4, 7, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1643, N'ENCARNACION', N'GAYA', N'NEBOT', N'12bl15071721643', 236854, 1, 3, 10, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1644, N'FELIPE', N'DONOSO', N'ARCE', N'12bl15071721644', 236691, 1, 3, 13, 2, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1645, N'ENCARNACION', N'ABELLA', N'PEIRO', N'12bl15071721645', 236859, 1, 1, 5, 2, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1646, N'AURELIA', N'SALINAS', N'JEREZ', N'12bl15071721646', 236541, 1, 1, 10, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1647, N'ANA', N'PENALVER', N'BLANCA', N'12bl15071721647', 236567, 1, 3, 6, 2, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1648, N'EMILIA', N'DEL', N'QUINTANA', N'12bl15071721648', 236846, 1, 5, 13, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1649, N'FULGENCIO', N'LORENZO', N'TORRENT', N'12bl15071721649', 236727, 1, 5, 11, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1650, N'PABLO', N'BELTRAN', N'JUAN', N'12bl15071721650', 236576, 1, 3, 8, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1651, N'EVARISTO', N'COZAR', N'BUENDIA', N'12bl15071721651', 236817, 1, 3, 8, 2, 2, 0, CAST(N'2020-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1652, N'FITO', N'FITO', N'URENA', N'12bl15071721652', 236898, 1, 5, 3, 2, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1653, N'FELIX', N'TOMAS', N'CASTELLO', N'12bl15071721653', 236750, 1, 1, 6, 2, 2, 0, CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1654, N'MARTIN', N'CABANILLAS', N'VILAR', N'12bl15071721654', 236779, 1, 6, 7, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1655, N'JUANITO', N'JUANITO', N'MORALEDA', N'12bl15071721655', 236725, 1, 4, 11, 2, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1656, N'MARIA', N'CRISTINA', N'OTERO', N'12bl15071721656', 236608, 1, 6, 11, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1657, N'EMILIO', N'GALAN', N'BENITEZ', N'12bl15071721657', 236793, 1, 4, 15, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1658, N'MAYTE', N'MAYTE', N'MASCARO', N'12bl15071721658', 236767, 1, 3, 4, 2, 2, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1659, N'ONOFRE', N'PALACIO', N'JARA', N'12bl15071721659', 236694, 1, 6, 9, 2, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1660, N'TIMOTEO', N'DE', N'NIETO', N'12bl15071721660', 236922, 1, 5, 9, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1661, N'ROLDAN', N'DEL', N'VALLEJO', N'12bl15071721661', 236710, 1, 5, 13, 2, 2, 0, CAST(N'2020-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1662, N'RUBEN', N'ABASCAL', N'VALVERDE', N'12bl15071721662', 236633, 1, 3, 10, 2, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1663, N'ANGELINA', N'CANOVAS', N'SUAREZ', N'12bl15071721663', 236787, 1, 1, 5, 2, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1664, N'BENIGNO', N'CUEVAS', N'SOLIS', N'12bl15071721664', 236867, 1, 4, 2, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1665, N'ERNESTO', N'MARTINEZ', N'ESPEJO', N'12bl15071721665', 236807, 1, 5, 5, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1666, N'BELEN', N'RAMIREZ', N'FRANCO', N'12bl15071721666', 236496, 1, 5, 2, 2, 2, 0, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1667, N'ALICIA', N'MARIN', N'BENITEZ', N'12bl15071721667', 236863, 1, 4, 12, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1668, N'JUAN', N'PALOMARES', N'PORTA', N'12bl15071721668', 236698, 1, 5, 6, 2, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1669, N'JUAN', N'RODA', N'BARBERO', N'12bl15071721669', 236537, 1, 2, 9, 2, 2, 0, CAST(N'2020-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1670, N'AURORA', N'LUJAN', N'CEREZO', N'12bl15071721670', 236937, 1, 5, 9, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1671, N'HORACIO', N'ALCANTARA', N'CHACON', N'12bl15071721671', 236855, 1, 3, 3, 2, 2, 0, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1672, N'MANUELITA', N'OJEDA', N'BARRAL', N'12bl15071721672', 236634, 1, 1, 7, 2, 2, 0, CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1673, N'JUAN', N'NOGUES', N'BONILLA', N'12bl15071721673', 236763, 1, 6, 11, 2, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1674, N'MATILDE', N'MURO', N'RINCON', N'12bl15071721674', 236749, 1, 6, 12, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1675, N'ALICIA', N'TEJADA', N'SANCHO', N'12bl15071721675', 236805, 1, 2, 3, 2, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1676, N'EVANGELINA', N'EVANGELINA', N'BAEZ', N'12bl15071721676', 236552, 1, 5, 10, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1677, N'LUCHO', N'LUCHO', N'ALBERDI', N'12bl15071721677', 236901, 1, 2, 14, 2, 2, 0, CAST(N'2022-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1678, N'ARCELIA', N'DIEGO', N'ARNAU', N'12bl15071721678', 236797, 1, 5, 6, 2, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1679, N'NATIVIDAD', N'DE', N'LAMAS', N'12bl15071721679', 236943, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1680, N'LEOPOLDO', N'SALCEDO', N'REY', N'12bl15071721680', 236730, 1, 1, 8, 2, 2, 0, CAST(N'2021-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1681, N'NICOLAS', N'QUINTANILLA', N'GIMENEZ', N'12bl15071721681', 236776, 1, 5, 15, 2, 2, 0, CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1682, N'MARIANO', N'CARDENAS', N'TORRENTS', N'12bl15071721682', 236896, 1, 4, 8, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1683, N'NICOLAS', N'DE', N'PLANA', N'12bl15071721683', 236940, 1, 4, 2, 2, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1684, N'PASTOR', N'VILLANUEVA', N'CARBONELL', N'12bl15071721684', 236733, 1, 2, 7, 2, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1685, N'IVAN', N'CEREZO', N'VIANA', N'12bl15071721685', 236565, 1, 2, 14, 2, 2, 0, CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1686, N'CAYETANO', N'CARRILLO', N'CARRERAS', N'12bl15071721686', 236509, 1, 5, 2, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1687, N'MARTIRIO', N'MORCILLO', N'LLEDO', N'12bl15071721687', 236676, 1, 6, 11, 2, 2, 0, CAST(N'2022-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1688, N'NICODEMO', N'SANTAMARIA', N'BEJARANO', N'12bl15071721688', 236598, 1, 6, 12, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1689, N'ESTRELLA', N'COLLADO', N'AGUIRRE', N'12bl15071721689', 236585, 1, 5, 15, 2, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1690, N'BENIGNA', N'ALFONSO', N'FUENTES', N'12bl15071721690', 236553, 1, 2, 13, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1691, N'ALVARO', N'MORCILLO', N'AVILA', N'12bl15071721691', 236912, 1, 6, 5, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1692, N'LOPE', N'FIOL', N'ACEVEDO', N'12bl15071721692', 236492, 1, 1, 9, 2, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1693, N'VENCESLAS', N'VENCESLAS', N'CARBONELL', N'12bl15071721693', 236685, 1, 4, 13, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1694, N'LORENZA', N'PAZ', N'NOGUES', N'12bl15071721694', 236535, 1, 2, 8, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1695, N'KIKE', N'DEL', N'RIBES', N'12bl15071721695', 236574, 1, 3, 4, 2, 2, 0, CAST(N'2023-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1696, N'RODRIGO', N'DIEZ', N'RICO', N'12bl15071721696', 236628, 1, 4, 11, 2, 2, 0, CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1697, N'BIBIANA', N'BERTRAN', N'VILAR', N'12bl15071721697', 236809, 1, 2, 15, 2, 2, 0, CAST(N'2022-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1698, N'ANGELA', N'FIGUEROA', N'PINEDA', N'12bl15071721698', 236489, 1, 2, 6, 2, 2, 0, CAST(N'2022-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1699, N'MARIA', N'SECO', N'CANALS', N'12bl15071721699', 236923, 1, 5, 13, 2, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1700, N'REMEDIOS', N'ANGULO', N'PADILLA', N'12bl15071721700', 236796, 1, 2, 15, 2, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1701, N'AMAYA', N'ESTEVEZ', N'JODAR', N'12bl15071721701', 236650, 1, 2, 3, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1702, N'FLOR', N'VERA', N'MOLINS', N'12bl15071721702', 236629, 1, 3, 2, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1703, N'ARSENIO', N'LUJAN', N'PINA', N'12bl15071721703', 236597, 1, 4, 12, 2, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1704, N'LUZ', N'SACRISTAN', N'PALLARES', N'12bl15071721704', 236766, 1, 2, 2, 2, 2, 0, CAST(N'2022-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1705, N'CONSTANZA', N'BARO', N'REQUENA', N'12bl15071721705', 236830, 1, 4, 12, 2, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1706, N'JORDANA', N'POMBO', N'MATEOS', N'12bl15071721706', 236853, 1, 3, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1707, N'NOEMI', N'REBOLLO', N'HERAS', N'12bl15071721707', 236737, 1, 6, 13, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1708, N'HERMENEGILDO', N'HERMENEGILDO', N'ALEGRIA', N'12bl15071721708', 236539, 1, 6, 6, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1709, N'ALBINA', N'MOLINS', N'VILLALOBOS', N'12bl15071721709', 236620, 1, 2, 6, 2, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1710, N'PRUDENCIA', N'GUZMAN', N'TUR', N'12bl15071721710', 236500, 1, 5, 11, 2, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1711, N'MAXIMILIANO', N'ALONSO', N'JORDA', N'12bl15071721711', 236651, 1, 3, 8, 2, 2, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1712, N'GERMAN', N'DE', N'DOMINGO', N'12bl15071721712', 236951, 1, 1, 14, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1713, N'GLORIA', N'MARQUES', N'CASTANEDA', N'12bl15071721713', 236536, 1, 5, 13, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1714, N'AMANCIO', N'ANGEL', N'JAUREGUI', N'12bl15071721714', 236800, 1, 6, 2, 2, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1715, N'RENE', N'DEL', N'BARRANCO', N'12bl15071721715', 236647, 1, 1, 4, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1716, N'MARIA', N'MIRALLES', N'SANCHEZ', N'12bl15071721716', 236511, 1, 6, 9, 2, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1717, N'TAMARA', N'BUSQUETS', N'MARCO', N'12bl15071721717', 236678, 1, 6, 7, 2, 2, 0, CAST(N'2022-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1718, N'INGRID', N'ALCALDE', N'MINGUEZ', N'12bl15071721718', 236465, 1, 1, 8, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1719, N'ISABELA', N'BORREGO', N'ARCO', N'12bl15071721719', 236827, 1, 4, 13, 2, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1720, N'ALEJANDRO', N'FRANCO', N'CABANAS', N'12bl15071721720', 236644, 1, 2, 2, 2, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1721, N'CHUS', N'OLMEDO', N'SANDOVAL', N'12bl15071721721', 236666, 1, 4, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1722, N'MIGUELA', N'GUERRA', N'TORO', N'12bl15071721722', 236823, 1, 5, 8, 2, 2, 0, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1723, N'NACIO', N'DE', N'OLMEDO', N'12bl15071721723', 236599, 1, 5, 8, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1724, N'SOLEDAD', N'BERTRAN', N'ALBA', N'12bl15071721724', 236753, 1, 5, 9, 2, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1725, N'MAURA', N'SALINAS', N'AZNAR', N'12bl15071721725', 236894, 1, 1, 11, 2, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1726, N'TORIBIO', N'LLADO', N'CONDE', N'12bl15071721726', 236529, 1, 6, 9, 2, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1727, N'VALERO', N'GUARDIA', N'CORBACHO', N'12bl15071721727', 236935, 1, 4, 10, 2, 2, 0, CAST(N'2021-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1728, N'MARIA', N'PACHECO', N'MANCEBO', N'12bl15071721728', 236508, 1, 6, 12, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1729, N'ARIADNA', N'DEL', N'PUIG', N'12bl15071721729', 236563, 1, 6, 13, 2, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1730, N'JULIAN', N'JULIAN', N'PINOL', N'12bl15071721730', 236821, 1, 5, 2, 2, 2, 0, CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1731, N'CEFERINO', N'VALBUENA', N'CERVERA', N'12bl15071721731', 236475, 1, 3, 13, 2, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1732, N'ANTONIO', N'HERRERO', N'HUERTA', N'12bl15071721732', 236491, 1, 6, 10, 2, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1733, N'SERGIO', N'FIGUEROLA', N'MARTI', N'12bl15071721733', 236862, 1, 6, 8, 2, 2, 0, CAST(N'2021-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1734, N'CRISTIAN', N'ANGULO', N'CRIADO', N'12bl15071721734', 236619, 1, 2, 12, 2, 2, 0, CAST(N'2020-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1735, N'ANGELITA', N'LOZANO', N'ALFARO', N'12bl15071721735', 236788, 1, 6, 12, 2, 2, 0, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1736, N'ARSENIO', N'CASTELLO', N'VILAR', N'12bl15071721736', 236806, 1, 5, 15, 2, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1737, N'DULCE', N'DULCE', N'PORTA', N'12bl15071721737', 236715, 1, 3, 3, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1738, N'BENIGNA', N'CALDERON', N'SAEZ', N'12bl15071721738', 236824, 1, 1, 9, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1739, N'NIDIA', N'LLUCH', N'JAUME', N'12bl15071721739', 236881, 1, 5, 10, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1740, N'HILDA', N'CASTELLO', N'HERRERA', N'12bl15071721740', 236600, 1, 1, 13, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1741, N'ELIANA', N'MENDOZA', N'COLOMA', N'12bl15071721741', 236622, 1, 3, 14, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1742, N'HECTOR', N'QUIROGA', N'MAZA', N'12bl15071721742', 236656, 1, 4, 5, 2, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1743, N'CRISTINA', N'CRESPI', N'CARRO', N'12bl15071721743', 236832, 1, 2, 7, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1744, N'ANACLETO', N'GABALDON', N'ROPERO', N'12bl15071721744', 236593, 1, 5, 7, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1745, N'NANDO', N'ISERN', N'AZCONA', N'12bl15071721745', 236919, 1, 3, 7, 2, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1746, N'MARCO', N'RIPOLL', N'OLIVERAS', N'12bl15071721746', 236655, 1, 1, 13, 2, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1747, N'REBECA', N'ALBERDI', N'GUARDIOLA', N'12bl15071721747', 236909, 1, 3, 5, 2, 2, 0, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1748, N'RAFA', N'VALENCIANO', N'BECERRA', N'12bl15071721748', 236479, 1, 4, 2, 2, 2, 0, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1749, N'ISMAEL', N'DE', N'MARISCAL', N'12bl15071721749', 236684, 1, 2, 8, 2, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1750, N'ARIEL', N'JODAR', N'AGUILAR', N'12bl15071721750', 236893, 1, 5, 2, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1751, N'RUFINO', N'GUTIERREZ', N'DIEZ', N'12bl15071721751', 236643, 1, 3, 4, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1752, N'CONRADO', N'BORJA', N'PACHECO', N'12bl15071721752', 236929, 1, 1, 3, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1753, N'FLAVIA', N'LEON', N'NOGUEIRA', N'12bl15071721753', 236688, 1, 1, 7, 2, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1754, N'DULCE', N'BORRAS', N'ACOSTA', N'12bl15071721754', 236910, 1, 2, 8, 2, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1755, N'ALMA', N'BAENA', N'ROMERO', N'12bl15071721755', 236476, 1, 3, 13, 2, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1756, N'RAMONA', N'ANTON', N'BERNAD', N'12bl15071721756', 236606, 1, 2, 3, 2, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1757, N'CHUCHO', N'CHUCHO', N'LLEDO', N'12bl15071721757', 236635, 1, 5, 10, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1758, N'YESSICA', N'VILLALOBOS', N'FERRERA', N'12bl15071721758', 236590, 1, 6, 15, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1759, N'HERBERTO', N'LUJAN', N'PEREIRA', N'12bl15071721759', 236936, 1, 3, 12, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1760, N'LORETO', N'LLOPIS', N'ARREGUI', N'12bl15071721760', 236789, 1, 1, 13, 2, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1761, N'EDMUNDO', N'FUERTES', N'JORDAN', N'12bl15071721761', 236808, 1, 4, 13, 2, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1762, N'GEMA', N'BORRELL', N'GORDILLO', N'12bl15071721762', 236463, 1, 2, 8, 2, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1763, N'OSCAR', N'DE', N'VIANA', N'12bl15071721763', 236518, 1, 2, 11, 2, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1764, N'MOHAMED', N'TOME', N'CARBALLO', N'12bl15071721764', 236911, 1, 5, 11, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1765, N'RUFINA', N'PALMA', N'VALLS', N'12bl15071721765', 236570, 1, 6, 3, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1766, N'AMBROSIO', N'DEL', N'PINTO', N'12bl15071721766', 236907, 1, 3, 15, 2, 2, 0, CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1767, N'AMALIA', N'DAZA', N'RECIO', N'12bl15071721767', 236528, 1, 4, 4, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1768, N'CLAUDIO', N'ZABALETA', N'BAEZ', N'12bl15071721768', 236916, 1, 5, 6, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1769, N'CESAR', N'DEL', N'SALINAS', N'12bl15071721769', 236557, 1, 4, 2, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1770, N'MAR', N'CORTINA', N'PERELLO', N'12bl15071721770', 236815, 1, 6, 9, 2, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1771, N'JUAN', N'PINA', N'LLANOS', N'12bl15071721771', 236877, 1, 6, 9, 2, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1772, N'FELICIDAD', N'VALLES', N'FRANCISCO', N'12bl15071721772', 236735, 1, 3, 6, 2, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1773, N'GILBERTO', N'TORRIJOS', N'SOLSONA', N'12bl15071721773', 236746, 1, 1, 2, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1774, N'ELOISA', N'PABLO', N'ALCOLEA', N'12bl15071721774', 236674, 1, 5, 13, 2, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1775, N'ARIEL', N'CRESPO', N'SEDANO', N'12bl15071721775', 236707, 1, 4, 6, 2, 2, 0, CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1776, N'MOHAMED', N'ARCO', N'RODRIGUEZ', N'12bl15071721776', 236466, 1, 6, 13, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1777, N'MACARENA', N'FORTUNY', N'QUEROL', N'12bl15071721777', 236702, 1, 6, 4, 2, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1778, N'ALBANO', N'MARCO', N'SEGOVIA', N'12bl15071721778', 236706, 1, 6, 13, 2, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1779, N'CALIXTA', N'BOSCH', N'PALOMARES', N'12bl15071721779', 236820, 1, 6, 2, 2, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1780, N'ARANZAZU', N'ARRIETA', N'CASANOVAS', N'12bl15071721780', 236822, 1, 6, 2, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1781, N'CARMINA', N'LANDA', N'POZO', N'12bl15071721781', 236670, 1, 4, 15, 2, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1782, N'QUIQUE', N'DEL', N'RODRIGUEZ', N'12bl15071721782', 236603, 1, 6, 13, 2, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1783, N'INOCENCIO', N'IBANEZ', N'RIOS', N'12bl15071721783', 236498, 1, 4, 2, 2, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1784, N'CLOE', N'PINILLA', N'PONCE', N'12bl15071721784', 236602, 1, 6, 15, 2, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1785, N'NARCISA', N'TEJERA', N'QUEROL', N'12bl15071721785', 236473, 1, 5, 7, 2, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1786, N'IGNACIO', N'DEL', N'ZORRILLA', N'12bl15071721786', 236772, 1, 1, 7, 2, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1787, N'EMILIANA', N'ALAMO', N'SOBRINO', N'12bl15071721787', 236713, 1, 3, 6, 2, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1788, N'ULISES', N'GARCIA', N'OLMO', N'12bl15071721788', 236452, 1, 6, 12, 2, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1789, N'PATRICIO', N'PALOMO', N'ROPERO', N'12bl15071721789', 236532, 1, 4, 12, 2, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1790, N'VICTORINO', N'PINOL', N'ROSALES', N'12bl15071721790', 236708, 1, 1, 4, 2, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1791, N'SEVERO', N'DE', N'GONZALEZ', N'12bl15071721791', 236513, 1, 4, 14, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1792, N'ODALYS', N'GONZALEZ', N'TIRADO', N'12bl15071721792', 236891, 1, 3, 6, 2, 2, 0, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1793, N'LUCIA', N'LUCIA', N'COROMINAS', N'12bl15071721793', 236908, 1, 2, 9, 2, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1794, N'IGNACIA', N'CARRENO', N'CEPEDA', N'12bl15071721794', 236899, 1, 2, 3, 2, 2, 0, CAST(N'2020-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1795, N'NARCISO', N'URIBE', N'MALO', N'12bl15071721795', 236659, 1, 6, 13, 2, 2, 0, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1796, N'JESUSA', N'ESCRIVA', N'PLAZA', N'12bl15071721796', 236949, 1, 3, 3, 2, 2, 0, CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1797, N'FELICIA', N'SOLANA', N'BENITEZ', N'12bl15071721797', 236798, 1, 5, 9, 2, 2, 0, CAST(N'2022-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1798, N'ALMA', N'RIBA', N'CASTANEDA', N'12bl15071721798', 236740, 1, 4, 10, 2, 2, 0, CAST(N'2022-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1799, N'GUSTAVO', N'DEL', N'LLADO', N'12bl15071721799', 236526, 1, 6, 2, 2, 2, 0, CAST(N'2021-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1800, N'CORAL', N'DEL', N'ARCE', N'12bl15071721800', 236906, 1, 5, 10, 2, 2, 0, CAST(N'2021-06-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1801, N'ALBERT', N'BENITO', N'ESPANA', N'12bl15071721801', 236605, 1, 2, 10, 2, 2, 0, CAST(N'2022-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1802, N'SELENA', N'RIBERA', N'PINA', N'12bl15071721802', 236872, 1, 1, 3, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1803, N'DORA', N'GARAY', N'GARZON', N'12bl15071721803', 236454, 1, 2, 2, 2, 2, 0, CAST(N'2020-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1804, N'VICENTA', N'SOMOZA', N'ALMEIDA', N'12bl15071721804', 236689, 1, 5, 10, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1805, N'GUSTAVO', N'ARAMBURU', N'SANTIAGO', N'12bl15071721805', 236803, 1, 6, 13, 2, 2, 0, CAST(N'2023-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1806, N'MAXIMILIANO', N'CEREZO', N'TORO', N'12bl15071721806', 236596, 1, 5, 10, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1807, N'MIGUEL', N'POZUELO', N'DUENAS', N'12bl15071721807', 236804, 1, 4, 12, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1808, N'RAMIRO', N'POMARES', N'GILABERT', N'12bl15071721808', 236624, 1, 6, 6, 2, 2, 0, CAST(N'2020-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1809, N'ALFREDO', N'DE', N'SOMOZA', N'12bl15071721809', 236457, 1, 1, 7, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1810, N'URSULA', N'MALDONADO', N'LUJAN', N'12bl15071721810', 236520, 1, 1, 12, 2, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1811, N'NORBERTO', N'BILBAO', N'PORTILLO', N'12bl15071721811', 236586, 1, 5, 2, 2, 2, 0, CAST(N'2023-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1812, N'GERVASIO', N'GERVASIO', N'URRUTIA', N'12bl15071721812', 236722, 1, 4, 4, 2, 2, 0, CAST(N'2021-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1813, N'EUTIMIO', N'GARCIA', N'TIRADO', N'12bl15071721813', 236522, 1, 2, 3, 2, 2, 0, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1814, N'FLORA', N'LOSADA', N'ALBERTO', N'12bl15071721814', 236783, 1, 4, 3, 2, 2, 0, CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1815, N'LORENZA', N'FERRERA', N'PELAEZ', N'12bl15071721815', 236764, 1, 6, 2, 2, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1816, N'BARBARA', N'BARBARA', N'BLANCO', N'12bl15071721816', 236546, 1, 1, 10, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1817, N'MARIA', N'FERRER', N'IZAGUIRRE', N'12bl15071721817', 236568, 1, 4, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1818, N'MARIA', N'PERALTA', N'ARANA', N'12bl15071721818', 236848, 1, 3, 2, 2, 2, 0, CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1819, N'MARIA', N'ALMAGRO', N'AYLLON', N'12bl15071721819', 236456, 1, 3, 14, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1820, N'REGINA', N'BARO', N'RIVAS', N'12bl15071721820', 236591, 1, 3, 14, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1821, N'MOISES', N'ALSINA', N'MAYO', N'12bl15071721821', 236551, 1, 5, 14, 2, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1822, N'ANDREA', N'GISBERT', N'QUESADA', N'12bl15071721822', 236712, 1, 5, 12, 2, 2, 0, CAST(N'2020-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1823, N'MACARIO', N'ESPANOL', N'PINTO', N'12bl15071721823', 236617, 1, 6, 10, 2, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1824, N'INOCENCIO', N'NINO', N'LLORENTE', N'12bl15071721824', 236607, 1, 3, 11, 2, 2, 0, CAST(N'2022-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1825, N'LUISINA', N'DEL', N'GALINDO', N'12bl15071721825', 236871, 1, 5, 4, 2, 2, 0, CAST(N'2023-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1826, N'MORENO', N'DE', N'PEREZ', N'12bl15071721826', 236664, 1, 6, 6, 2, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1827, N'PASCUAL', N'TEJERA', N'GALINDO', N'12bl15071721827', 236918, 1, 2, 10, 2, 2, 0, CAST(N'2021-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1828, N'EMELINA', N'ARIZA', N'PERA', N'12bl15071721828', 236838, 1, 1, 8, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1829, N'JORDAN', N'JORDAN', N'VARA', N'12bl15071721829', 236888, 1, 2, 13, 2, 2, 0, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1830, N'BRUNILDA', N'BORJA', N'ASENSIO', N'12bl15071721830', 236701, 1, 1, 10, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1831, N'GUADALUPE', N'GARRIDO', N'GUTIERREZ', N'12bl15071721831', 236869, 1, 5, 11, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1832, N'SARA', N'CALLEJA', N'MARIN', N'12bl15071721832', 236759, 1, 3, 5, 2, 2, 0, CAST(N'2023-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1833, N'ROQUE', N'RICART', N'SALMERON', N'12bl15071721833', 236625, 1, 1, 2, 2, 2, 0, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1834, N'AURELIO', N'AGUILERA', N'ROSALES', N'12bl15071721834', 236887, 1, 4, 15, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1835, N'NACHO', N'RIVAS', N'MILLA', N'12bl15071721835', 236523, 1, 2, 8, 2, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1836, N'TITO', N'BARROSO', N'CASAL', N'12bl15071721836', 236581, 1, 1, 13, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1837, N'VANESA', N'VANESA', N'PRIEGO', N'12bl15071721837', 236490, 1, 6, 2, 2, 2, 0, CAST(N'2020-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1838, N'ELOY', N'ELOY', N'SOLER', N'12bl15071721838', 236558, 1, 4, 10, 2, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1839, N'OTILIA', N'PIQUER', N'SUREDA', N'12bl15071721839', 236945, 1, 3, 4, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1840, N'SALOMON', N'COBOS', N'CAZORLA', N'12bl15071721840', 236741, 1, 1, 8, 2, 2, 0, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1841, N'PAOLA', N'DEL', N'CUELLAR', N'12bl15071721841', 236948, 1, 3, 9, 2, 2, 0, CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1842, N'COSME', N'ALCARAZ', N'ANDRADE', N'12bl15071721842', 236566, 1, 3, 15, 2, 2, 0, CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1843, N'MANUELITA', N'MANUELITA', N'SOLIS', N'12bl15071721843', 236507, 1, 6, 5, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1844, N'QUIQUE', N'ZURITA', N'LEON', N'12bl15071721844', 236757, 1, 5, 10, 2, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1845, N'MARIA', N'VERDUGO', N'ESPADA', N'12bl15071721845', 236847, 1, 4, 13, 2, 2, 0, CAST(N'2022-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1846, N'AMERICO', N'JAEN', N'LEAL', N'12bl15071721846', 236780, 1, 4, 7, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1847, N'MIREIA', N'ESTEVEZ', N'BAUTISTA', N'12bl15071721847', 236950, 1, 2, 9, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1848, N'PRUDENCIO', N'PAGES', N'SECO', N'12bl15071721848', 236777, 1, 6, 10, 2, 2, 0, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1849, N'NOELIA', N'DEL', N'ORTIZ', N'12bl15071721849', 236861, 1, 6, 15, 2, 2, 0, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1850, N'GREGORIO', N'GUZMAN', N'BERMUDEZ', N'12bl15071721850', 236530, 1, 2, 15, 2, 2, 0, CAST(N'2020-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1851, N'DOMITILA', N'CORTINA', N'ABELLAN', N'12bl15071721851', 236762, 1, 2, 3, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1852, N'SALOMON', N'PAZ', N'BEJARANO', N'12bl15071721852', 236584, 1, 5, 2, 2, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1853, N'MARISOL', N'MARISOL', N'ANTON', N'12bl15071721853', 236858, 1, 6, 3, 2, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1854, N'ALEJANDRA', N'CAL', N'PLA', N'12bl15071721854', 236614, 1, 6, 13, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1855, N'JOSE', N'MULET', N'MAESTRE', N'12bl15071721855', 236679, 1, 4, 7, 2, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1856, N'PETRONA', N'PANIAGUA', N'CHAPARRO', N'12bl15071721856', 236564, 1, 6, 7, 2, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1857, N'DULCE', N'YANEZ', N'VALDERRAMA', N'12bl15071721857', 236667, 1, 2, 4, 2, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1858, N'JOSUE', N'PEIRO', N'ENRIQUEZ', N'12bl15071721858', 236592, 1, 1, 3, 2, 2, 0, CAST(N'2022-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1859, N'CARMEN', N'SAENZ', N'ABAD', N'12bl15071721859', 236926, 1, 2, 6, 2, 2, 0, CAST(N'2023-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1860, N'DAFNE', N'RODENAS', N'LEDESMA', N'12bl15071721860', 236501, 1, 2, 2, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1861, N'JERONIMO', N'ROURA', N'ROLDAN', N'12bl15071721861', 236525, 1, 2, 15, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1862, N'MACARENA', N'OJEDA', N'CARRETERO', N'12bl15071721862', 236895, 1, 1, 6, 2, 2, 0, CAST(N'2021-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1863, N'JUAN', N'JUAN', N'GUERRA', N'12bl15071721863', 236468, 1, 6, 3, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1864, N'ELISABET', N'DE', N'BARRENA', N'12bl15071721864', 236873, 1, 1, 12, 2, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1865, N'MARCIAL', N'CARRENO', N'RAMIS', N'12bl15071721865', 236720, 1, 4, 11, 2, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1866, N'RENE', N'SERRANO', N'MENA', N'12bl15071721866', 236493, 1, 3, 10, 2, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1867, N'AURA', N'REDONDO', N'ROZAS', N'12bl15071721867', 236630, 1, 1, 2, 2, 2, 0, CAST(N'2021-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1868, N'NIEVES', N'TENORIO', N'LAGUNA', N'12bl15071721868', 236756, 1, 5, 15, 2, 2, 0, CAST(N'2020-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1869, N'ALMUDENA', N'BAENA', N'SAINZ', N'12bl15071721869', 236751, 1, 6, 12, 2, 2, 0, CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1870, N'NESTOR', N'DEL', N'NAVARRETE', N'12bl15071721870', 236843, 1, 2, 11, 2, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1871, N'IRMA', N'CAZORLA', N'GUTIERREZ', N'12bl15071721871', 236639, 1, 2, 12, 2, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1872, N'FLORINA', N'FLORINA', N'BELMONTE', N'12bl15071721872', 236533, 1, 5, 13, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1873, N'ROLDAN', N'MONTERO', N'CALVO', N'12bl15071721873', 236589, 1, 3, 5, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1874, N'BERNARDITA', N'MEDINA', N'VALLS', N'12bl15071721874', 236663, 1, 4, 5, 2, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1875, N'MONTSERRAT', N'FERRANDO', N'MENENDEZ', N'12bl15071721875', 236687, 1, 6, 11, 2, 2, 0, CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1876, N'ROBERTO', N'DEL', N'ROSELLO', N'12bl15071721876', 236550, 1, 1, 13, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1877, N'IRIS', N'HERRANZ', N'BORRELL', N'12bl15071721877', 236731, 1, 1, 7, 2, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1878, N'SANTOS', N'ABAD', N'NICOLAU', N'12bl15071721878', 236835, 1, 2, 6, 2, 2, 0, CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1879, N'GRACIELA', N'DEL', N'CARRERAS', N'12bl15071721879', 236885, 1, 1, 6, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1880, N'MARICRUZ', N'MEDINA', N'ZARAGOZA', N'12bl15071721880', 236646, 1, 2, 6, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1881, N'JOSE', N'VILLANUEVA', N'SANTANA', N'12bl15071721881', 236842, 1, 1, 2, 2, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1882, N'ABEL', N'CASTANEDA', N'SOTO', N'12bl15071721882', 236517, 1, 3, 2, 2, 2, 0, CAST(N'2023-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1883, N'BLAS', N'ROURA', N'MUNOZ', N'12bl15071721883', 236677, 1, 4, 4, 2, 2, 0, CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1884, N'LUIS', N'CAMACHO', N'SANTOS', N'12bl15071721884', 236716, 1, 2, 6, 2, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1885, N'PRISCILA', N'AZCONA', N'PUGA', N'12bl15071721885', 236515, 1, 4, 9, 2, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1886, N'DONATO', N'ANAYA', N'CUESTA', N'12bl15071721886', 236856, 1, 1, 13, 2, 2, 0, CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1887, N'ELOISA', N'FERRER', N'HERRERA', N'12bl15071721887', 236665, 1, 2, 4, 2, 2, 0, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1888, N'IGNACIA', N'LORENZO', N'HERNANDEZ', N'12bl15071721888', 236683, 1, 2, 8, 2, 2, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1889, N'DULCE', N'FIGUERAS', N'ROS', N'12bl15071721889', 236754, 1, 6, 3, 2, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1890, N'MANOLO', N'QUINTERO', N'RECIO', N'12bl15071721890', 236470, 1, 6, 11, 2, 2, 0, CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1891, N'DULCE', N'SUAREZ', N'BARBERA', N'12bl15071721891', 236802, 1, 3, 13, 2, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1892, N'ESMERALDA', N'ROCAMORA', N'TAPIA', N'12bl15071721892', 236601, 1, 1, 11, 2, 2, 0, CAST(N'2022-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1893, N'TRISTAN', N'DEL', N'PIZARRO', N'12bl15071721893', 236868, 1, 4, 14, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1894, N'CORNELIO', N'HIERRO', N'VILLAVERDE', N'12bl15071721894', 236474, 1, 2, 15, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1895, N'FLORENTINA', N'ZAMORANO', N'COROMINAS', N'12bl15071721895', 236514, 1, 4, 4, 2, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1896, N'MARIA', N'TABOADA', N'BERENGUER', N'12bl15071721896', 236499, 1, 3, 7, 2, 2, 0, CAST(N'2021-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1897, N'GERONIMO', N'DE', N'VELAZQUEZ', N'12bl15071721897', 236632, 1, 1, 3, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1898, N'RUY', N'CARBONELL', N'BLANCH', N'12bl15071721898', 236723, 1, 6, 6, 2, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1899, N'ANGELITA', N'DEL', N'SANMARTIN', N'12bl15071721899', 236506, 1, 6, 14, 2, 2, 0, CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1900, N'SUSANITA', N'GRACIA', N'ZABALA', N'12bl15071721900', 236494, 1, 2, 8, 2, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1901, N'ALCIDES', N'PORRAS', N'GUZMAN', N'12bl15071721901', 236769, 1, 5, 6, 2, 2, 0, CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1902, N'BONIFACIO', N'LANDA', N'NEBOT', N'12bl15071721902', 236572, 1, 1, 12, 2, 2, 0, CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1903, N'INES', N'FUENTE', N'OLIVERA', N'12bl15071721903', 236781, 1, 4, 4, 2, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1904, N'AMARO', N'BAUTISTA', N'NAVARRO', N'12bl15071721904', 236718, 1, 1, 4, 2, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1905, N'SUSANITA', N'VALENCIANO', N'PALACIOS', N'12bl15071721905', 236890, 1, 5, 8, 2, 2, 0, CAST(N'2021-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1906, N'YESSICA', N'DONAIRE', N'SOTO', N'12bl15071721906', 236942, 1, 1, 7, 2, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1907, N'DEBORA', N'ARTEAGA', N'CALVET', N'12bl15071721907', 236626, 1, 2, 15, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1908, N'ESTEFANIA', N'ESTEFANIA', N'MANSO', N'12bl15071721908', 236826, 1, 2, 12, 2, 2, 0, CAST(N'2022-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1909, N'AZUCENA', N'ESCAMILLA', N'MADRIGAL', N'12bl15071721909', 236812, 1, 3, 6, 2, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1910, N'VITO', N'IZQUIERDO', N'MUR', N'12bl15071721910', 236579, 1, 6, 14, 2, 2, 0, CAST(N'2022-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1911, N'JULIAN', N'PALMER', N'BUSTAMANTE', N'12bl15071721911', 236792, 1, 1, 7, 2, 2, 0, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1912, N'MACARIA', N'MARMOL', N'NOGUEIRA', N'12bl15071721912', 236578, 1, 4, 13, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1913, N'CALIXTA', N'BARRIO', N'BUENDIA', N'12bl15071721913', 236460, 1, 4, 3, 2, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1914, N'GEORGINA', N'MERINO', N'ROYO', N'12bl15071721914', 236542, 1, 6, 3, 2, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1915, N'LUCIA', N'AGUILA', N'VALENZUELA', N'12bl15071721915', 236459, 1, 5, 14, 2, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1916, N'SABAS', N'PAZOS', N'GARZON', N'12bl15071721916', 236548, 1, 2, 3, 2, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1917, N'MARIANELA', N'MASCARO', N'COCA', N'12bl15071721917', 236834, 1, 1, 5, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1918, N'TONO', N'TAMARIT', N'COBO', N'12bl15071721918', 236786, 1, 4, 3, 2, 2, 0, CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1919, N'RAIMUNDO', N'ABRIL', N'VALDES', N'12bl15071721919', 236879, 1, 1, 8, 2, 2, 0, CAST(N'2022-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1920, N'SATURNINO', N'AGUSTIN', N'RAMON', N'12bl15071721920', 236837, 1, 4, 9, 2, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1921, N'NORBERTO', N'CARBO', N'PEREZ', N'12bl15071721921', 236736, 1, 2, 12, 2, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1922, N'PALMIRA', N'NINO', N'PATINO', N'12bl15071721922', 236705, 1, 3, 6, 2, 2, 0, CAST(N'2022-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1923, N'FATIMA', N'TIRADO', N'VALLEJO', N'12bl15071721923', 236897, 1, 4, 4, 2, 2, 0, CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1924, N'BAUDELIO', N'CANO', N'GRANDE', N'12bl15071721924', 236717, 1, 3, 4, 2, 2, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1925, N'FRANCISCO', N'SALA', N'NORIEGA', N'12bl15071721925', 236616, 1, 6, 2, 2, 2, 0, CAST(N'2021-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1926, N'VALERIA', N'ANDRES', N'CANIZARES', N'12bl15071721926', 236744, 1, 4, 12, 2, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1927, N'CIRO', N'VILA', N'CAMINO', N'12bl15071721927', 236745, 1, 5, 14, 2, 2, 0, CAST(N'2022-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1928, N'EMMA', N'MANJON', N'JEREZ', N'12bl15071721928', 236829, 1, 1, 12, 2, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1929, N'AMADA', N'SOLE', N'SOMOZA', N'12bl15071721929', 236905, 1, 5, 5, 2, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1930, N'SOSIMO', N'MUNOZ', N'ROMAN', N'12bl15071721930', 236654, 1, 2, 13, 2, 2, 0, CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1931, N'FLORINDA', N'ROURA', N'BLAZQUEZ', N'12bl15071721931', 236902, 1, 2, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1932, N'BUENAVENTURA', N'DEL', N'ARIAS', N'12bl15071721932', 236534, 1, 2, 14, 2, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1933, N'SANDALIO', N'FERRANDEZ', N'GOMEZ', N'12bl15071721933', 236752, 1, 5, 5, 2, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1934, N'CONRADO', N'DIEZ', N'ROLDAN', N'12bl15071721934', 236692, 1, 2, 8, 2, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1935, N'ENCARNACION', N'ALCANTARA', N'ALBEROLA', N'12bl15071721935', 236636, 1, 6, 11, 2, 2, 0, CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1936, N'NATALIO', N'MONTOYA', N'AMOROS', N'12bl15071721936', 236642, 1, 5, 2, 2, 2, 0, CAST(N'2021-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1937, N'PAULINO', N'ECHEVARRIA', N'MURCIA', N'12bl15071721937', 236850, 1, 4, 8, 2, 2, 0, CAST(N'2021-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1938, N'MARISTELA', N'TEJEDOR', N'HURTADO', N'12bl15071721938', 236852, 1, 3, 8, 2, 2, 0, CAST(N'2022-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1939, N'ARIEL', N'SAURA', N'PELLICER', N'12bl15071721939', 236527, 1, 6, 2, 2, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1940, N'LUIS', N'ESPEJO', N'PIQUER', N'12bl15071721940', 236453, 1, 2, 5, 2, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1941, N'ESTER', N'PEREA', N'SALCEDO', N'12bl15071721941', 236544, 1, 6, 6, 2, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1942, N'AFRICA', N'PLA', N'TAMAYO', N'12bl15071721942', 236672, 1, 5, 4, 2, 2, 0, CAST(N'2022-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1943, N'DAMIAN', N'CAMPO', N'GUAL', N'12bl15071721943', 236673, 1, 2, 6, 2, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1944, N'ISAAC', N'ALCALA', N'CAMPS', N'12bl15071721944', 236711, 1, 1, 8, 2, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1945, N'BALTASAR', N'CAZORLA', N'CORTES', N'12bl15071721945', 236482, 1, 3, 14, 2, 2, 0, CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1946, N'BERNABE', N'ANTUNEZ', N'BARRAGAN', N'12bl15071721946', 236571, 1, 1, 3, 2, 2, 0, CAST(N'2022-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1947, N'HERMENEGILDO', N'MALO', N'ALMAGRO', N'12bl15071721947', 236661, 1, 2, 5, 2, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1948, N'NYDIA', N'NYDIA', N'GALLARDO', N'12bl15071721948', 236825, 1, 4, 4, 2, 2, 0, CAST(N'2023-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1949, N'CHUY', N'VARGAS', N'LOSA', N'12bl15071721949', 236794, 1, 6, 5, 2, 2, 0, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1950, N'PRUDENCIO', N'ARJONA', N'TORRALBA', N'12bl15071721950', 236645, 1, 1, 7, 2, 2, 0, CAST(N'2022-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1951, N'AITANA', N'MURO', N'BENAVENT', N'12bl15071721951', 236791, 1, 4, 8, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1952, N'AZUCENA', N'ARTIGAS', N'CUADRADO', N'12bl15071721952', 236844, 1, 3, 6, 2, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1953, N'MIRIAM', N'DEL', N'DAVILA', N'12bl15071721953', 236903, 1, 4, 3, 2, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1954, N'CAYETANA', N'CAYETANA', N'SOMOZA', N'12bl15071721954', 236721, 1, 1, 7, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1955, N'CLOTILDE', N'DEL', N'HIDALGO', N'12bl15071721955', 236604, 1, 4, 11, 2, 2, 0, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1956, N'ELISEO', N'GUAL', N'PERELLO', N'12bl15071721956', 236653, 1, 3, 11, 2, 2, 0, CAST(N'2020-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1957, N'ALBINA', N'DE', N'CARMONA', N'12bl15071721957', 236658, 1, 2, 4, 2, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1958, N'ALMUDENA', N'DIAZ', N'POMARES', N'12bl15071721958', 236925, 1, 6, 2, 2, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1959, N'CARIDAD', N'ESPARZA', N'NEBOT', N'12bl15071721959', 236610, 1, 1, 11, 2, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1960, N'AGAPITO', N'BELTRAN', N'CASTANEDA', N'12bl15071721960', 236938, 1, 6, 4, 2, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1961, N'ESTELA', N'FERRANDEZ', N'BENITEZ', N'12bl15071721961', 236587, 1, 3, 14, 2, 2, 0, CAST(N'2022-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1962, N'PLINIO', N'HOYOS', N'PAREJO', N'12bl15071721962', 236913, 1, 5, 10, 2, 2, 0, CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1963, N'BELEN', N'ZARAGOZA', N'SOSA', N'12bl15071721963', 236729, 1, 1, 3, 2, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1964, N'CLOE', N'SANCHO', N'RIBES', N'12bl15071721964', 236538, 1, 1, 8, 2, 2, 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1965, N'CARLA', N'FERRANDEZ', N'SALGADO', N'12bl15071721965', 236485, 1, 5, 11, 2, 2, 0, CAST(N'2022-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1966, N'MIRTA', N'MIRTA', N'LASA', N'12bl15071721966', 236866, 1, 1, 11, 2, 2, 0, CAST(N'2023-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1967, N'FAUSTINO', N'RIVERO', N'VIANA', N'12bl15071721967', 236849, 1, 2, 7, 2, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1968, N'ANDRES', N'CORTES', N'MARCO', N'12bl15071721968', 236580, 1, 4, 3, 2, 2, 0, CAST(N'2022-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1969, N'APOLONIA', N'BARCELO', N'TUR', N'12bl15071721969', 236947, 1, 1, 3, 2, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1970, N'CLAUDIA', N'FERRER', N'URRUTIA', N'12bl15071721970', 236747, 1, 1, 10, 2, 2, 0, CAST(N'2022-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1971, N'TONO', N'TOMAS', N'RAMOS', N'12bl15071721971', 236543, 1, 3, 11, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1972, N'MARCIA', N'ANAYA', N'BILBAO', N'12bl15071721972', 236637, 1, 5, 11, 2, 2, 0, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1973, N'CARMINA', N'AZORIN', N'BORRAS', N'12bl15071721973', 236784, 1, 2, 3, 2, 2, 0, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1974, N'MOHAMED', N'SOBRINO', N'SECO', N'12bl15071721974', 236810, 1, 2, 4, 2, 2, 0, CAST(N'2022-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1975, N'ANDRES', N'COROMINAS', N'TORRALBA', N'12bl15071721975', 236516, 1, 6, 9, 2, 2, 0, CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1976, N'MELISA', N'PELAEZ', N'TORRE', N'12bl15071721976', 236531, 1, 5, 7, 2, 2, 0, CAST(N'2022-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1977, N'ELOISA', N'TRILLO', N'LORENZO', N'12bl15071721977', 236461, 1, 6, 13, 2, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1978, N'GRACIANA', N'VILAR', N'SEVILLA', N'12bl15071721978', 236739, 1, 4, 8, 2, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1979, N'LEIRE', N'BARCELO', N'SALINAS', N'12bl15071721979', 236724, 1, 5, 4, 2, 2, 0, CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1980, N'MARICRUZ', N'ACEDO', N'CORTES', N'12bl15071721980', 236612, 1, 3, 10, 2, 2, 0, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1981, N'HAROLDO', N'CID', N'MADRIGAL', N'12bl15071721981', 236669, 1, 1, 7, 2, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1982, N'MARCIAL', N'MARTINEZ', N'ROMAN', N'12bl15071721982', 236933, 1, 6, 11, 2, 2, 0, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1983, N'ADRIANA', N'SANTIAGO', N'MUGICA', N'12bl15071721983', 236697, 1, 5, 9, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1984, N'ALBA', N'MORALES', N'JORDAN', N'12bl15071721984', 236941, 1, 1, 10, 2, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1985, N'INOCENCIO', N'OLLER', N'MORELL', N'12bl15071721985', 236504, 1, 3, 6, 2, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1986, N'ELIANA', N'FLORES', N'GARAY', N'12bl15071721986', 236615, 1, 1, 3, 2, 2, 0, CAST(N'2022-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1987, N'JORDANA', N'GIBERT', N'MARQUEZ', N'12bl15071721987', 236758, 1, 6, 5, 2, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1988, N'ROGELIO', N'ROGELIO', N'PELAEZ', N'12bl15071721988', 236696, 1, 3, 11, 2, 2, 0, CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1989, N'DAMIAN', N'PEDROSA', N'POZO', N'12bl15071721989', 236865, 1, 4, 4, 2, 2, 0, CAST(N'2021-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1990, N'ELIGIA', N'DE', N'LARA', N'12bl15071721990', 236519, 1, 6, 13, 2, 2, 0, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1991, N'PALMIRA', N'PALMIRA', N'GONZALEZ', N'12bl15071721991', 236594, 1, 1, 12, 2, 2, 0, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1992, N'ARSENIO', N'VALERA', N'NOGUEIRA', N'12bl15071721992', 236467, 1, 2, 11, 2, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1993, N'ODALYS', N'MAYO', N'SOMOZA', N'12bl15071721993', 236556, 1, 4, 12, 2, 2, 0, CAST(N'2022-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1994, N'CIRO', N'CANETE', N'FERRERA', N'12bl15071721994', 236874, 1, 4, 10, 2, 2, 0, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1995, N'QUIQUE', N'QUIQUE', N'ABAD', N'12bl15071721995', 236502, 1, 5, 13, 2, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1996, N'AMPARO', N'VILA', N'ARANDA', N'12bl15071721996', 236884, 1, 6, 12, 2, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1997, N'EVA', N'NICOLAU', N'FERRANDIZ', N'12bl15071721997', 236714, 1, 6, 13, 2, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1998, N'SEVE', N'ALCALDE', N'HUGUET', N'12bl15071721998', 236931, 1, 4, 9, 2, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (1999, N'EMA', N'JIMENEZ', N'ESPANA', N'12bl15071721999', 236785, 1, 2, 2, 2, 2, 0, CAST(N'2021-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2000, N'IGNACIO', N'DOMENECH', N'VIGIL', N'12bl15071722000', 236660, 1, 1, 2, 2, 2, 0, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2001, N'CRUZ', N'ELORZA', N'GALAN', N'13bl15072382001', 152661, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2002, N'MELISA', N'GALLEGO', N'BENET', N'13bl15072382002', 152587, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2003, N'LEOCADIO', N'PONT', N'CUETO', N'13bl15072382003', 152622, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2004, N'JOAN', N'BENITEZ', N'VERGARA', N'13bl15072382004', 152624, 5, 1, 1, 1, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2005, N'CESAR', N'POMBO', N'LLEDÓ', N'13bl15072382005', 152628, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2006, N'CEBRIÁN', N'ARTEAGA', N'VIDAL', N'13bl15072382006', 152536, 5, 1, 1, 1, 2, 0, CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2007, N'FLAVIO', N'GIMÉNEZ', N'PIÑOL', N'13bl15072382007', 152700, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2008, N'NOA', N'CUÉLLAR', N'TORMO', N'13bl15072382008', 152592, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2009, N'ELIGIA', N'MÁRQUEZ', N'MANSO', N'13bl15072382009', 152610, 5, 1, 1, 1, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2010, N'GUADALUPE', N'DE', N'RICO', N'13bl15072382010', 152581, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2011, N'HAROLDO', N'MENDIZÁBAL', N'SANMARTÍN', N'13bl15072382011', 152664, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2012, N'BERNABÉ', N'FELIU', N'PANIAGUA', N'13bl15072382012', 152551, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2013, N'JULIETA', N'QUEVEDO', N'PARRA', N'13bl15072382013', 152521, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2014, N'FLOR', N'CUENCA', N'ALVAREZ', N'13bl15072382014', 152556, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2015, N'LILIA', N'ROZAS', N'FERRERA', N'13bl15072382015', 152667, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2016, N'DARÍO', N'BORRÁS', N'FIGUEROA', N'13bl15072382016', 152543, 5, 1, 1, 1, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2017, N'ISIDORA', N'COBOS', N'PEDRO', N'13bl15072382017', 152684, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2018, N'REINA', N'GOMEZ', N'BLASCO', N'13bl15072382018', 152649, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2019, N'PALMIRA', N'ÁLVAREZ', N'CARRIÓN', N'13bl15072382019', 152583, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2020, N'ROSAURA', N'PARRA', N'PERELLÓ', N'13bl15072382020', 152666, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2021, N'DORA', N'DORA', N'GODOY', N'13bl15072382021', 152548, 5, 1, 1, 1, 2, 0, CAST(N'2022-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2022, N'ARTURO', N'ARTURO', N'PRIETO', N'13bl15072382022', 152676, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2023, N'LUÍS', N'VALENCIA', N'LAGUNA', N'13bl15072382023', 152561, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2024, N'PAULINO', N'ROLDAN', N'CAL', N'13bl15072382024', 152505, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2025, N'JOAQUÍN', N'CABELLO', N'HURTADO', N'13bl15072382025', 152563, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2026, N'CURRO', N'NARVÁEZ', N'IRIARTE', N'13bl15072382026', 152538, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2027, N'LIDIA', N'ALEGRE', N'PINEDO', N'13bl15072382027', 152603, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2028, N'BELÉN', N'SALVADOR', N'MONTALBÁN', N'13bl15072382028', 152602, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2029, N'ZAIDA', N'GALIANO', N'IÑIGUEZ', N'13bl15072382029', 152629, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2030, N'GASPAR', N'DEL', N'RODRIGUEZ', N'13bl15072382030', 152633, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2031, N'ERIC', N'DE', N'FABREGAT', N'13bl15072382031', 152518, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2032, N'EUGENIA', N'GALLEGO', N'ZAMORANO', N'13bl15072382032', 152546, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2033, N'GERVASIO', N'DÁVILA', N'MÉNDEZ', N'13bl15072382033', 152531, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2034, N'YÉSICA', N'MARISCAL', N'MONTSERRAT', N'13bl15072382034', 152668, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2035, N'MELCHOR', N'ARANDA', N'VICENS', N'13bl15072382035', 152656, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2036, N'URBANO', N'SANCHEZ', N'TERUEL', N'13bl15072382036', 152659, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2037, N'MANOLO', N'DEL', N'ROLDÁN', N'13bl15072382037', 152514, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2038, N'GRACIA', N'DEL', N'RUBIO', N'13bl15072382038', 152503, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2039, N'DIMAS', N'CUENCA', N'MORENO', N'13bl15072382039', 152608, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2040, N'MACARIO', N'SOMOZA', N'VIDAL', N'13bl15072382040', 152532, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2041, N'CONCHA', N'NUÑEZ', N'SANTAMARÍA', N'13bl15072382041', 152502, 5, 1, 1, 1, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2042, N'JERÓNIMO', N'JERÓNIMO', N'CABRERA', N'13bl15072382042', 152591, 5, 1, 1, 1, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2043, N'NICOLÁS', N'ESPAÑOL', N'ARIÑO', N'13bl15072382043', 152682, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2044, N'ROLDÁN', N'CARLOS', N'BARRAL', N'13bl15072382044', 152607, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2045, N'FELIPE', N'ROZAS', N'ALVAREZ', N'13bl15072382045', 152683, 5, 1, 1, 1, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2046, N'JOAQUÍN', N'ZABALA', N'PONT', N'13bl15072382046', 152564, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2047, N'MARÍA', N'COMPANY', N'BLANCA', N'13bl15072382047', 152645, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2048, N'RAIMUNDO', N'ABELLÁN', N'NIÑO', N'13bl15072382048', 152578, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2049, N'CONCHA', N'ELORZA', N'AYALA', N'13bl15072382049', 152651, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2050, N'MICAELA', N'TOLEDO', N'CARRIÓN', N'13bl15072382050', 152699, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2051, N'JUAN', N'LUIS', N'PEDRAZA', N'13bl15072382051', 152574, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2052, N'NILDA', N'GOMEZ', N'ROBLES', N'13bl15072382052', 152523, 5, 1, 1, 1, 2, 0, CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2053, N'PALOMA', N'LEAL', N'BOIX', N'13bl15072382053', 152568, 5, 1, 1, 1, 2, 0, CAST(N'2022-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2054, N'MARÍA', N'DEL', N'PORCEL', N'13bl15072382054', 152577, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2055, N'JUAN', N'LUIS', N'ÁLVARO', N'13bl15072382055', 152693, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2056, N'BAUTISTA', N'NAVARRO', N'BELTRAN', N'13bl15072382056', 152630, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2057, N'ISIDORA', N'DE', N'ALONSO', N'13bl15072382057', 152567, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2058, N'PÁNFILO', N'CHECA', N'PALOMO', N'13bl15072382058', 152526, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2059, N'ZACARÍAS', N'LUCAS', N'CORTÉS', N'13bl15072382059', 152580, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2060, N'DELIA', N'FARRÉ', N'PEREZ', N'13bl15072382060', 152537, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2061, N'MANU', N'MENENDEZ', N'SOLANO', N'13bl15072382061', 152524, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2062, N'ESTRELLA', N'ESPAÑOL', N'RODRÍGUEZ', N'13bl15072382062', 152650, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2063, N'MANU', N'HOZ', N'MONTALBÁN', N'13bl15072382063', 152586, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2064, N'ISIDORA', N'CASANOVAS', N'MONTSERRAT', N'13bl15072382064', 152611, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2065, N'AUGUSTO', N'COMPANY', N'PONT', N'13bl15072382065', 152625, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2066, N'ANGELINO', N'MATEO', N'CANTERO', N'13bl15072382066', 152606, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2067, N'MOISÉS', N'MIRALLES', N'ROMAN', N'13bl15072382067', 152575, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2068, N'ZORAIDA', N'MARCOS', N'CLEMENTE', N'13bl15072382068', 152519, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2069, N'ZAIDA', N'CASTELLANOS', N'PALOMO', N'13bl15072382069', 152559, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2070, N'FLORENTINO', N'CHAVES', N'IZQUIERDO', N'13bl15072382070', 152544, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2071, N'MAURA', N'GUILLEN', N'JOVER', N'13bl15072382071', 152542, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2072, N'AROA', N'SANTANA', N'SANTIAGO', N'13bl15072382072', 152545, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2073, N'RUFINO', N'MATEOS', N'MARTIN', N'13bl15072382073', 152528, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2074, N'GERÓNIMO', N'PLANA', N'BASTIDA', N'13bl15072382074', 152530, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2075, N'YAGO', N'ALBERDI', N'BERNAT', N'13bl15072382075', 152522, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2076, N'NURIA', N'SEDANO', N'CAMPOY', N'13bl15072382076', 152623, 5, 1, 1, 1, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2077, N'EUTIMIO', N'ALARCÓN', N'LUJÁN', N'13bl15072382077', 152501, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2078, N'MARISOL', N'JAÉN', N'POU', N'13bl15072382078', 152527, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2079, N'FRANCISCO', N'PI', N'JAÉN', N'13bl15072382079', 152510, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2080, N'ROLANDO', N'ARMENGOL', N'CARRO', N'13bl15072382080', 152570, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2081, N'TADEO', N'DE', N'LASTRA', N'13bl15072382081', 152590, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2082, N'BEGOÑA', N'FALCÓ', N'ALCALDE', N'13bl15072382082', 152540, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2083, N'FITO', N'VALLE', N'MENA', N'13bl15072382083', 152688, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2084, N'MARGARITA', N'CANTÓN', N'ROMA', N'13bl15072382084', 152605, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2085, N'DOMITILA', N'LARRAÑAGA', N'TERUEL', N'13bl15072382085', 152569, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2086, N'CÁNDIDO', N'MORÁN', N'LINARES', N'13bl15072382086', 152513, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2087, N'NOEMÍ', N'CODINA', N'POMBO', N'13bl15072382087', 152653, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2088, N'GABRIELA', N'BAUZÀ', N'MARÍ', N'13bl15072382088', 152599, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2089, N'EDUARDO', N'FERRERA', N'NARVÁEZ', N'13bl15072382089', 152516, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2090, N'MARCIAL', N'PEDRERO', N'MONTALBÁN', N'13bl15072382090', 152515, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2091, N'EVA', N'MARÍA', N'RUANO', N'13bl15072382091', 152509, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2092, N'LEÓN', N'LEÓN', N'MAZA', N'13bl15072382092', 152685, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2093, N'ADELARDO', N'MENDEZ', N'SEVILLA', N'13bl15072382093', 152647, 5, 1, 1, 1, 2, 0, CAST(N'2020-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2094, N'HERNANDO', N'NORIEGA', N'MONTERO', N'13bl15072382094', 152557, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2095, N'FELICIA', N'LOSA', N'BLANCA', N'13bl15072382095', 152512, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2096, N'PRISCILA', N'SABATER', N'FIGUEROA', N'13bl15072382096', 152520, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2097, N'ROQUE', N'DE', N'YUSTE', N'13bl15072382097', 152654, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2098, N'CASANDRA', N'JULIÁ', N'BUSTAMANTE', N'13bl15072382098', 152572, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2099, N'JOSÉ', N'DÁVILA', N'BARRENA', N'13bl15072382099', 152638, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2100, N'CELESTINO', N'DE', N'GOMIS', N'13bl15072382100', 152687, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2101, N'EVELIA', N'ASENJO', N'PINEDA', N'13bl15072382101', 152579, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2102, N'JUANITA', N'SERNA', N'CUEVAS', N'13bl15072382102', 152690, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2103, N'RODRIGO', N'VICENTE', N'LARREA', N'13bl15072382103', 152573, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2104, N'CLARISA', N'CLARISA', N'CARRIÓN', N'13bl15072382104', 152529, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2105, N'NAZARIO', N'ZAMORANO', N'OLMO', N'13bl15072382105', 152593, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2106, N'NIEVES', N'NIEVES', N'BORRELL', N'13bl15072382106', 152562, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2107, N'JOSE', N'ANGEL', N'DALMAU', N'13bl15072382107', 152639, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2108, N'LIGIA', N'VALENCIANO', N'REQUENA', N'13bl15072382108', 152669, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2109, N'CARMEN', N'DEL', N'ESPADA', N'13bl15072382109', 152660, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2110, N'IBÁN', N'APARICIO', N'ECHEVERRÍA', N'13bl15072382110', 152541, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2111, N'ADRIÁN', N'URRUTIA', N'CARREÑO', N'13bl15072382111', 152601, 5, 1, 1, 1, 2, 0, CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2112, N'ANDRÉS', N'FERRÁNDEZ', N'HERRANZ', N'13bl15072382112', 152525, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2113, N'MARIANA', N'PAREJO', N'BAYÓN', N'13bl15072382113', 152616, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2114, N'LUCÍA', N'MATE', N'PERELLÓ', N'13bl15072382114', 152635, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2115, N'AMÉRICA', N'AMÉRICA', N'SERRA', N'13bl15072382115', 152615, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2116, N'MARIO', N'REGUERA', N'ARAGONÉS', N'13bl15072382116', 152565, 5, 1, 1, 1, 2, 0, CAST(N'2022-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2117, N'BAUDELIO', N'BOIX', N'GOMEZ', N'13bl15072382117', 152588, 5, 1, 1, 1, 2, 0, CAST(N'2020-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2118, N'CEFERINO', N'CRESPI', N'POZUELO', N'13bl15072382118', 152598, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2119, N'NATIVIDAD', N'PAREJA', N'ARROYO', N'13bl15072382119', 152696, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2120, N'MOISÉS', N'MOISÉS', N'OSORIO', N'13bl15072382120', 152678, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2121, N'JULIÁN', N'ESCRIVÁ', N'GALVÁN', N'13bl15072382121', 152600, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2122, N'VICTORINO', N'CASAS', N'CORREA', N'13bl15072382122', 152646, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2123, N'RAFAELA', N'PINO', N'DÁVILA', N'13bl15072382123', 152620, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2124, N'APOLONIA', N'VARGAS', N'MIR', N'13bl15072382124', 152636, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2125, N'TERESA', N'TERESA', N'BEJARANO', N'13bl15072382125', 152553, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2126, N'CUSTODIA', N'CUSTODIA', N'PINILLA', N'13bl15072382126', 152689, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2127, N'BERNARDITA', N'BERNARDITA', N'RIBES', N'13bl15072382127', 152686, 5, 1, 1, 1, 2, 0, CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2128, N'AROA', N'GOMIS', N'FIGUERAS', N'13bl15072382128', 152576, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2129, N'JERÓNIMO', N'MELÉNDEZ', N'MARÍN', N'13bl15072382129', 152644, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2130, N'EDELMIRO', N'EDELMIRO', N'BLASCO', N'13bl15072382130', 152582, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2131, N'JENNY', N'ROVIRA', N'BORREGO', N'13bl15072382131', 152694, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2132, N'PACÍFICA', N'COSTA', N'BLANCH', N'13bl15072382132', 152691, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2133, N'ABIGAÍL', N'BARRIGA', N'DOMÍNGUEZ', N'13bl15072382133', 152663, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2134, N'TEOBALDO', N'GIRÓN', N'PIQUER', N'13bl15072382134', 152506, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2135, N'MATILDE', N'VIZCAÍNO', N'ROURA', N'13bl15072382135', 152547, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2136, N'SORAYA', N'QUEVEDO', N'ALLER', N'13bl15072382136', 152613, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2137, N'ERNESTO', N'MORELL', N'TIRADO', N'13bl15072382137', 152508, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2138, N'CÉSAR', N'CÉSAR', N'MONTERO', N'13bl15072382138', 152627, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2139, N'SAMU', N'SAMU', N'MALO', N'13bl15072382139', 152652, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2140, N'JESSICA', N'GRAS', N'CERRO', N'13bl15072382140', 152612, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2141, N'MAURICIO', N'MAURICIO', N'NÚÑEZ', N'13bl15072382141', 152692, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2142, N'FIDELA', N'FIDELA', N'MENDEZ', N'13bl15072382142', 152618, 5, 1, 1, 1, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2143, N'VICTORIA', N'GONZÁLEZ', N'RIBERA', N'13bl15072382143', 152549, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2144, N'TRINIDAD', N'PRIEGO', N'BORRELL', N'13bl15072382144', 152555, 5, 1, 1, 1, 2, 0, CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2145, N'LINA', N'SOTELO', N'ANDRÉS', N'13bl15072382145', 152640, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2146, N'AMOR', N'LUCAS', N'ALSINA', N'13bl15072382146', 152658, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2147, N'SAMANTA', N'VILLALOBOS', N'ALMANSA', N'13bl15072382147', 152662, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2148, N'LUZ', N'TUR', N'FABRA', N'13bl15072382148', 152671, 5, 1, 1, 1, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2149, N'CONSTANZA', N'ROSA', N'MURO', N'13bl15072382149', 152604, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2150, N'ALBA', N'ALBA', N'JIMENEZ', N'13bl15072382150', 152552, 5, 1, 1, 1, 2, 0, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2151, N'AARÓN', N'CORDERO', N'LOSA', N'13bl15072382151', 152566, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2152, N'NEREA', N'SORIANO', N'RAMÍREZ', N'13bl15072382152', 152655, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2153, N'NANDO', N'MEDINA', N'ARNAL', N'13bl15072382153', 152560, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2154, N'ANA', N'APARICIO', N'LLOPIS', N'13bl15072382154', 152673, 5, 1, 1, 1, 2, 0, CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2155, N'VICTOR', N'DEL', N'PANIAGUA', N'13bl15072382155', 152631, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2156, N'GUSTAVO', N'SOLERA', N'CALDERON', N'13bl15072382156', 152594, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2157, N'ISIDORO', N'BELLO', N'ROSA', N'13bl15072382157', 152589, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2158, N'SUSANITA', N'FARRÉ', N'BUSQUETS', N'13bl15072382158', 152614, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2159, N'ROXANA', N'MATAS', N'BELTRAN', N'13bl15072382159', 152609, 5, 1, 1, 1, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2160, N'EVA', N'AYUSO', N'LOZANO', N'13bl15072382160', 152670, 5, 1, 1, 1, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2161, N'LISANDRO', N'LOSA', N'BELTRAN', N'13bl15072382161', 152680, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2162, N'FABRICIO', N'LOSA', N'VICENTE', N'13bl15072382162', 152698, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2163, N'NÉSTOR', N'FRÍAS', N'TORRIJOS', N'13bl15072382163', 152632, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2164, N'FELISA', N'DE', N'MORERA', N'13bl15072382164', 152507, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2165, N'JUAN', N'LLORET', N'ASENSIO', N'13bl15072382165', 152697, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2166, N'MACARENA', N'CARBAJO', N'SEGARRA', N'13bl15072382166', 152617, 5, 1, 1, 1, 2, 0, CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2167, N'MANU', N'PINTO', N'RIVAS', N'13bl15072382167', 152626, 5, 1, 1, 1, 2, 0, CAST(N'2021-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2168, N'DONATO', N'JARA', N'ALEMÁN', N'13bl15072382168', 152619, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2169, N'LOIDA', N'TORRES', N'PRATS', N'13bl15072382169', 152675, 5, 1, 1, 1, 2, 0, CAST(N'2023-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2170, N'ROSA', N'COCA', N'SANTOS', N'13bl15072382170', 152585, 5, 1, 1, 1, 2, 0, CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2171, N'CELIA', N'TEJERA', N'NUÑEZ', N'13bl15072382171', 152634, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2172, N'GENOVEVA', N'HEREDIA', N'LASA', N'13bl15072382172', 152657, 5, 1, 1, 1, 2, 0, CAST(N'2021-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2173, N'HERMINIO', N'PALACIO', N'QUIRÓS', N'13bl15072382173', 152641, 5, 1, 1, 1, 2, 0, CAST(N'2023-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2174, N'MAXIMILIANO', N'CARBALLO', N'MÚGICA', N'13bl15072382174', 152677, 5, 1, 1, 1, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2175, N'VINICIO', N'OSUNA', N'RUEDA', N'13bl15072382175', 152517, 5, 1, 1, 1, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2176, N'FIDEL', N'BLANCA', N'BAYÓN', N'13bl15072382176', 152637, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2177, N'CHARO', N'JAÉN', N'PERERA', N'13bl15072382177', 152665, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2178, N'LUNA', N'GELABERT', N'TIRADO', N'13bl15072382178', 152550, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2179, N'LUCIANO', N'CORRAL', N'AGUADO', N'13bl15072382179', 152672, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2180, N'ASCENSIÓN', N'CALZADA', N'RIPOLL', N'13bl15072382180', 152681, 5, 1, 1, 1, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2181, N'HAROLDO', N'PI', N'VELÁZQUEZ', N'13bl15072382181', 152554, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2182, N'ÁUREA', N'CARRANZA', N'CASTILLA', N'13bl15072382182', 152539, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2183, N'ANSELMO', N'TOMÁS', N'MARTÍ', N'13bl15072382183', 152621, 5, 1, 1, 1, 2, 0, CAST(N'2022-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2184, N'FLORINA', N'FLORINA', N'JARA', N'13bl15072382184', 152584, 5, 1, 1, 1, 2, 0, CAST(N'2022-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2185, N'LILIA', N'CABALLERO', N'URRUTIA', N'13bl15072382185', 152679, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2186, N'SANTIAGO', N'SANTIAGO', N'RAMOS', N'13bl15072382186', 152511, 5, 1, 1, 1, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2187, N'EDU', N'FERRÁN', N'CASTILLO', N'13bl15072382187', 152643, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2188, N'PETRONA', N'RIQUELME', N'GIL', N'13bl15072382188', 152504, 5, 1, 1, 1, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2189, N'CARMELITA', N'GODOY', N'ALFARO', N'13bl15072382189', 152534, 5, 1, 1, 1, 2, 0, CAST(N'2022-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2190, N'LEANDRO', N'LEANDRO', N'BLANCO', N'13bl15072382190', 152648, 5, 1, 1, 1, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2191, N'CALIXTO', N'SAAVEDRA', N'BLASCO', N'13bl15072382191', 152695, 5, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2192, N'JORDÁN', N'SOLANO', N'BARÓ', N'13bl15072382192', 152642, 5, 1, 1, 1, 2, 0, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2193, N'JERÓNIMO', N'DE', N'NIÑO', N'13bl15072382193', 152595, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2194, N'ROSA', N'DEL', N'RAMÓN', N'13bl15072382194', 152571, 5, 1, 1, 1, 2, 0, CAST(N'2022-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2195, N'GISELA', N'AGUIRRE', N'GUILLÉN', N'13bl15072382195', 152558, 5, 1, 1, 1, 2, 0, CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2196, N'RAMÓN', N'RAMÓN', N'VILALTA', N'13bl15072382196', 152596, 5, 1, 1, 1, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2197, N'JOSE', N'PASCUAL', N'FIGUEROA', N'13bl15072382197', 152674, 5, 1, 1, 1, 2, 0, CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2198, N'MAYTE', N'RICART', N'ANTÓN', N'13bl15072382198', 152533, 5, 1, 1, 1, 2, 0, CAST(N'2022-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2199, N'ARIEL', N'ARIEL', N'JULIÁN', N'13bl15072382199', 152535, 5, 1, 1, 1, 2, 0, CAST(N'2020-01-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2200, N'GUILLERMO', N'ROMAN', N'AMAT', N'13bl15072382200', 152597, 5, 1, 1, 1, 2, 0, CAST(N'2021-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2201, N'CLOTILDE', N'ADRIANA', N'LLANO', N'13bl15072382201', 152818, 2, 1, 1, 1, 2, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2202, N'ÁNGELES', N'FUENTES', N'MOLINA', N'13bl15072382202', 152776, 2, 1, 1, 1, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2203, N'EMELINA', N'EXPÓSITO', N'ROZAS', N'13bl15072382203', 152791, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2204, N'BARTOLOMÉ', N'DE', N'MACÍAS', N'13bl15072382204', 152756, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2205, N'JOSE', N'PEREZ', N'JUAN', N'13bl15072382205', 152878, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2206, N'MANUELITA', N'GOICOECHEA', N'PUIG', N'13bl15072382206', 152716, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2207, N'ZAIRA', N'NAVARRO', N'ORTIZ', N'13bl15072382207', 152873, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2208, N'ISAURA', N'CASADO', N'BERNAD', N'13bl15072382208', 152833, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2209, N'MELANIA', N'MIGUEL', N'MIGUEL', N'13bl15072382209', 152748, 2, 1, 1, 1, 2, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2210, N'CHUCHO', N'DE', N'GALLART', N'13bl15072382210', 152806, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2211, N'CIRIACO', N'ISERN', N'BORRÁS', N'13bl15072382211', 152898, 2, 1, 1, 1, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2212, N'FRANCISCO', N'CUADRADO', N'BERENGUER', N'13bl15072382212', 152764, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2213, N'JOSE', N'CLEMENTE', N'TRILLO', N'13bl15072382213', 152704, 2, 1, 1, 1, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2214, N'MARCOS', N'ÁGUILA', N'NAVARRO', N'13bl15072382214', 152705, 2, 1, 1, 1, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2215, N'ADELAIDA', N'ARREGUI', N'PORTILLO', N'13bl15072382215', 152747, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2216, N'REYNA', N'QUERO', N'CISNEROS', N'13bl15072382216', 152728, 2, 1, 1, 1, 2, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2217, N'CUSTODIO', N'DÍAZ', N'QUEROL', N'13bl15072382217', 152801, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2218, N'FELICIANO', N'MONTALBÁN', N'ROZAS', N'13bl15072382218', 152779, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2219, N'MIGUEL', N'NAVAS', N'COMAS', N'13bl15072382219', 152845, 2, 1, 1, 1, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2220, N'JENNY', N'DE', N'ABAD', N'13bl15072382220', 152738, 2, 1, 1, 1, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2221, N'JORDÁN', N'LARREA', N'VIDAL', N'13bl15072382221', 152711, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2222, N'MICAELA', N'CONTRERAS', N'AGUIRRE', N'13bl15072382222', 152739, 2, 1, 1, 1, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2223, N'ANUNCIACIÓN', N'PORCEL', N'FIGUEROA', N'13bl15072382223', 152773, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2224, N'MIRIAM', N'JAÉN', N'POZUELO', N'13bl15072382224', 152710, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2225, N'BALDUINO', N'ALCÁZAR', N'SANTOS', N'13bl15072382225', 152723, 2, 1, 1, 1, 2, 0, CAST(N'2021-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2226, N'AMADOR', N'CARREÑO', N'MORCILLO', N'13bl15072382226', 152789, 2, 1, 1, 1, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2227, N'NURIA', N'GALVÁN', N'EXPÓSITO', N'13bl15072382227', 152815, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2228, N'RAÚL', N'ACOSTA', N'TORRES', N'13bl15072382228', 152757, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2229, N'SARA', N'PALOMAR', N'VERDUGO', N'13bl15072382229', 152790, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2230, N'NYDIA', N'ROYO', N'PINEDA', N'13bl15072382230', 152718, 2, 1, 1, 1, 2, 0, CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2231, N'LINO', N'MENÉNDEZ', N'COLOMA', N'13bl15072382231', 152737, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2232, N'NOÉ', N'BONET', N'DIEGO', N'13bl15072382232', 152782, 2, 1, 1, 1, 2, 0, CAST(N'2022-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2233, N'ISMAEL', N'TORRES', N'BAUZÀ', N'13bl15072382233', 152888, 2, 1, 1, 1, 2, 0, CAST(N'2022-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2234, N'TEO', N'BURGOS', N'LOPEZ', N'13bl15072382234', 152882, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2235, N'JOSÉ', N'MARÍA', N'ROZAS', N'13bl15072382235', 152736, 2, 1, 1, 1, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2236, N'FÁTIMA', N'MOLES', N'CÁNOVAS', N'13bl15072382236', 152763, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2237, N'AMANDA', N'GILABERT', N'ÁNGEL', N'13bl15072382237', 152796, 2, 1, 1, 1, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2238, N'MÓNICA', N'LUZ', N'DIAZ', N'13bl15072382238', 152813, 2, 1, 1, 1, 2, 0, CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2239, N'BERNABÉ', N'GOMIS', N'JEREZ', N'13bl15072382239', 152797, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2240, N'RAMIRO', N'DURAN', N'TEJERA', N'13bl15072382240', 152848, 2, 1, 1, 1, 2, 0, CAST(N'2023-05-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2241, N'TEODORO', N'ARREGUI', N'RINCÓN', N'13bl15072382241', 152749, 2, 1, 1, 1, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2242, N'NARCISO', N'AMORÓS', N'COCA', N'13bl15072382242', 152758, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2243, N'ROSAURA', N'CEREZO', N'CEREZO', N'13bl15072382243', 152802, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2244, N'VIRGILIO', N'VALENCIA', N'ÁVILA', N'13bl15072382244', 152889, 2, 1, 1, 1, 2, 0, CAST(N'2022-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2245, N'AURELIO', N'OLIVARES', N'IBORRA', N'13bl15072382245', 152836, 2, 1, 1, 1, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2246, N'ÁNGELES', N'DE', N'COBO', N'13bl15072382246', 152781, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2247, N'ANASTASIO', N'ANTÚNEZ', N'AGUILERA', N'13bl15072382247', 152795, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2248, N'LEYRE', N'ESCUDERO', N'ORTIZ', N'13bl15072382248', 152832, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2249, N'VALENTINA', N'TRILLO', N'SORIANO', N'13bl15072382249', 152713, 2, 1, 1, 1, 2, 0, CAST(N'2021-06-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2250, N'REYES', N'CÓZAR', N'MENA', N'13bl15072382250', 152811, 2, 1, 1, 1, 2, 0, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2251, N'AMARILIS', N'ABASCAL', N'AGUDO', N'13bl15072382251', 152720, 2, 1, 1, 1, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2252, N'REGINA', N'MORALES', N'SOLANA', N'13bl15072382252', 152742, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2253, N'EDELMIRA', N'FRANCISCO', N'BENAVIDES', N'13bl15072382253', 152783, 2, 1, 1, 1, 2, 0, CAST(N'2022-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2254, N'SANCHO', N'GERVASIO', N'PONCE', N'13bl15072382254', 152771, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2255, N'ANSELMA', N'MARTIN', N'CARRANZA', N'13bl15072382255', 152831, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2256, N'OSVALDO', N'LARRAÑAGA', N'PARDO', N'13bl15072382256', 152824, 2, 1, 1, 1, 2, 0, CAST(N'2022-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2257, N'AZENETH', N'VILLALBA', N'ARREGUI', N'13bl15072382257', 152792, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2258, N'ANÍBAL', N'PRIEGO', N'RIPOLL', N'13bl15072382258', 152843, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2259, N'DIANA', N'ALBEROLA', N'ARNAL', N'13bl15072382259', 152715, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2260, N'ANSELMO', N'FÁBREGAS', N'CONDE', N'13bl15072382260', 152726, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2261, N'MÓNICA', N'SALAZARPALACIOS', N'SALAZARPALACIOS', N'13bl15072382261', 152740, 2, 1, 1, 1, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2262, N'DALILA', N'ROIG', N'RAMIREZ', N'13bl15072382262', 152788, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2263, N'SALVADOR', N'ALLER', N'FERRERO', N'13bl15072382263', 152821, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2264, N'DOMINGO', N'JIMÉNEZ', N'ESTEBAN', N'13bl15072382264', 152735, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2265, N'ANGELINO', N'LEIVA', N'BORREGO', N'13bl15072382265', 152706, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2266, N'RAMONA', N'RAYA', N'LLAMAS', N'13bl15072382266', 152810, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2267, N'ÁUREA', N'RAMÍREZ', N'HERVÁS', N'13bl15072382267', 152703, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2268, N'SALVADOR', N'ROCA', N'VILLALBA', N'13bl15072382268', 152799, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2269, N'IGNACIO', N'CASTRILLO', N'CLEMENTE', N'13bl15072382269', 152823, 2, 1, 1, 1, 2, 0, CAST(N'2022-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2270, N'JUAN', N'JOSÉ', N'BOADA', N'13bl15072382270', 152751, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2271, N'JONATAN', N'ARRIBAS', N'SANCHO', N'13bl15072382271', 152808, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2272, N'WILFREDO', N'PABLO', N'MURILLO', N'13bl15072382272', 152745, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2273, N'MONTSERRAT', N'VALENCIANO', N'POMBO', N'13bl15072382273', 152830, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2274, N'CRESCENCIA', N'CERDÁ', N'MARRANA', N'13bl15072382274', 152874, 2, 1, 1, 1, 2, 0, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2275, N'ESTEBAN', N'FARRÉ', N'COFE', N'13bl15072382275', 152837, 2, 1, 1, 1, 2, 0, CAST(N'2022-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2276, N'PALOMA', N'ESTEBAN', N'ALVAREZ', N'13bl15072382276', 152890, 2, 1, 1, 1, 2, 0, CAST(N'2023-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2277, N'JULIO', N'CÉSAR', N'ROPERO', N'13bl15072382277', 152778, 2, 1, 1, 1, 2, 0, CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2278, N'AURELIANO', N'DUARTE', N'CABEZAS', N'13bl15072382278', 152770, 2, 1, 1, 1, 2, 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2279, N'SEBASTIÁN', N'CRESPI', N'MAGAÑA', N'13bl15072382279', 152772, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2280, N'VERA', N'CERVANTES', N'CASTILLO', N'13bl15072382280', 152814, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2281, N'EUFEMIA', N'DÍEZ', N'LEON', N'13bl15072382281', 152798, 2, 1, 1, 1, 2, 0, CAST(N'2021-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2282, N'CARLOS', N'VILLENA', N'FALCÓ', N'13bl15072382282', 152835, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2283, N'HERBERTO', N'INIESTA', N'AZNAR', N'13bl15072382283', 152732, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2284, N'LEÓN', N'ESCRIBANO', N'NÚÑEZ', N'13bl15072382284', 152842, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2285, N'ANA', N'VIÑAS', N'GARAY', N'13bl15072382285', 152877, 2, 1, 1, 1, 2, 0, CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2286, N'SALOMÓN', N'GALAN', N'PONCE', N'13bl15072382286', 152714, 2, 1, 1, 1, 2, 0, CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2287, N'ISABELA', N'CABANILLAS', N'VILLALOBOS', N'13bl15072382287', 152839, 2, 1, 1, 1, 2, 0, CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2288, N'MIGUEL', N'VIANA', N'MOLES', N'13bl15072382288', 152880, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2289, N'CARLITO', N'OLIVA', N'TAPIA', N'13bl15072382289', 152893, 2, 1, 1, 1, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2290, N'CHEMA', N'CUETO', N'PEREIRA', N'13bl15072382290', 152800, 2, 1, 1, 1, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2291, N'DORITA', N'MARÍA', N'ÁLVARO', N'13bl15072382291', 152774, 2, 1, 1, 1, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2292, N'GERÓNIMO', N'PINO', N'PRIETO', N'13bl15072382292', 152876, 2, 1, 1, 1, 2, 0, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2293, N'LEOPOLDO', N'SERNA', N'RIOS', N'13bl15072382293', 152853, 2, 1, 1, 1, 2, 0, CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2294, N'MARCIO', N'SOLÉ', N'GOICOECHEA', N'13bl15072382294', 152857, 2, 1, 1, 1, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2295, N'DIANA', N'IBARRA', N'CÉSPEDES', N'13bl15072382295', 152863, 2, 1, 1, 1, 2, 0, CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2296, N'AMÉRICA', N'ANGLADA', N'GALLEGO', N'13bl15072382296', 152746, 2, 1, 1, 1, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2297, N'RODRIGO', N'MULET', N'ARELLANO', N'13bl15072382297', 152752, 2, 1, 1, 1, 2, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2298, N'CASEMIRO', N'DEL', N'TERRÓN', N'13bl15072382298', 152846, 2, 1, 1, 1, 2, 0, CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2299, N'HILDA', N'DEL', N'VILALTA', N'13bl15072382299', 152729, 2, 1, 1, 1, 2, 0, CAST(N'2020-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2300, N'CHE', N'ESCUDERO', N'MERINO', N'13bl15072382300', 152852, 2, 1, 1, 1, 2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2301, N'CIRO', N'TEJERO', N'TEJERO', N'13bl15072382301', 152767, 7, 1, 1, 1, 2, 0, CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2302, N'NADIA', N'SIMÓ', N'ARELLANO', N'13bl15072382302', 152860, 7, 1, 1, 1, 2, 0, CAST(N'2022-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2303, N'BERTO', N'RIUS', N'MATEO', N'13bl15072382303', 152744, 7, 1, 1, 1, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2304, N'PATRICIO', N'GRANDE', N'CARNERO', N'13bl15072382304', 152865, 7, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2305, N'HAROLDO', N'GIMENO', N'MACÍAS', N'13bl15072382305', 152841, 7, 1, 1, 1, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2306, N'VICENTA', N'ARIAS', N'MÚGICA', N'13bl15072382306', 152727, 7, 1, 1, 1, 2, 0, CAST(N'2022-04-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2307, N'ISABEL', N'DIEZ', N'COLOM', N'13bl15072382307', 152701, 7, 1, 1, 1, 2, 0, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2308, N'EDMUNDO', N'AMAYA', N'SILVA', N'13bl15072382308', 152722, 7, 1, 1, 1, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2309, N'AMANDA', N'FERNANDEZ', N'SOLANO', N'13bl15072382309', 152897, 7, 1, 1, 1, 2, 0, CAST(N'2020-03-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2310, N'INMACULADA', N'CÁNOVAS', N'SANTIAGO', N'13bl15072382310', 152805, 7, 1, 1, 1, 2, 0, CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2311, N'TRINIDAD', N'CALVO', N'BARRIO', N'13bl15072382311', 152809, 7, 1, 1, 1, 2, 0, CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2312, N'DANI', N'SALAZAR', N'CORONADO', N'13bl15072382312', 152887, 7, 1, 1, 1, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2313, N'DAN', N'VALBUENA', N'CUEVAS', N'13bl15072382313', 152822, 7, 1, 1, 1, 2, 0, CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2314, N'SANDRA', N'SOLÉ', N'JAUME', N'13bl15072382314', 152858, 7, 1, 1, 1, 2, 0, CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2315, N'ELISEO', N'GINER', N'ORTIZ', N'13bl15072382315', 152886, 7, 1, 1, 1, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2316, N'NAZARET', N'GRANDE', N'BAQUERO', N'13bl15072382316', 152794, 7, 1, 1, 1, 2, 0, CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2317, N'ADELA', N'CASTRO', N'PACHECO', N'13bl15072382317', 152864, 7, 1, 1, 1, 2, 0, CAST(N'2020-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2318, N'CALISTO', N'MIRALLES', N'CORTÉS', N'13bl15072382318', 152707, 7, 1, 1, 1, 2, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2319, N'NATIVIDAD', N'CORDERO', N'ESCUDERO', N'13bl15072382319', 152834, 7, 1, 1, 1, 2, 0, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2320, N'NICOLASA', N'ROMERO', N'BARCO', N'13bl15072382320', 152743, 7, 1, 1, 1, 2, 0, CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2321, N'VICTORIANO', N'GILOBATO', N'GILOBATO', N'13bl15072382321', 152899, 7, 1, 1, 1, 2, 0, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2322, N'CAMILA', N'FONT', N'CLAVERO', N'13bl15072382322', 152850, 7, 1, 1, 1, 2, 0, CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2323, N'LORETO', N'ARTIGAS', N'GÁLVEZ', N'13bl15072382323', 152709, 7, 1, 1, 1, 2, 0, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2324, N'TERESA', N'MORATA', N'ALCARAZ', N'13bl15072382324', 152847, 7, 1, 1, 1, 2, 0, CAST(N'2022-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2325, N'LEOPOLDO', N'HURTADO', N'ASENSIO', N'13bl15072382325', 152816, 7, 1, 1, 1, 2, 0, CAST(N'2022-04-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2326, N'PÍO', N'PERERA', N'ALEGRIA', N'13bl15072382326', 152760, 7, 1, 1, 1, 2, 0, CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2327, N'LUPE', N'ACEVEDO', N'TOMAS', N'13bl15072382327', 152896, 7, 1, 1, 1, 2, 0, CAST(N'2021-02-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2328, N'LOPE', N'MÁRQUEZ', N'MADRIGAL', N'13bl15072382328', 152828, 7, 1, 1, 1, 2, 0, CAST(N'2021-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2329, N'EMMA', N'BOTELLA', N'RAMOS', N'13bl15072382329', 152817, 7, 1, 1, 1, 2, 0, CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2330, N'ALONDRA', N'SANTIAGO', N'REDONDO', N'13bl15072382330', 152867, 7, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2331, N'HAROLDO', N'RODRIGUEZ', N'ESTEBAN', N'13bl15072382331', 152812, 7, 1, 1, 1, 2, 0, CAST(N'2022-05-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2332, N'ARMIDA', N'RIBA', N'PUJADAS', N'13bl15072382332', 152862, 7, 1, 1, 1, 2, 0, CAST(N'2023-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2333, N'ALBERTO', N'CANET', N'ISERN', N'13bl15072382333', 152881, 7, 1, 1, 1, 2, 0, CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2334, N'ANABEL', N'LINARES', N'LINARES', N'13bl15072382334', 152730, 7, 1, 1, 1, 2, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2335, N'LEOCADIO', N'CADENAS', N'CADENAS', N'13bl15072382335', 152875, 7, 1, 1, 1, 2, 0, CAST(N'2022-06-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2336, N'IGNACIA', N'SEVILLANO', N'TOMAS', N'13bl15072382336', 152765, 7, 1, 1, 1, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2337, N'DIANA', N'SERNA', N'LLOBET', N'13bl15072382337', 152895, 7, 1, 1, 1, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2338, N'JUAN', N'DE', N'GUIJARRO', N'13bl15072382338', 152840, 7, 1, 1, 1, 2, 0, CAST(N'2022-06-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2339, N'SALOMÉ', N'CAZORLA', N'PIÑEIRO', N'13bl15072382339', 152784, 7, 1, 1, 1, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2340, N'VICTORINO', N'DEL', N'EXPÓSITO', N'13bl15072382340', 152827, 7, 1, 1, 1, 2, 0, CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2341, N'JACOBO', N'BERNAD', N'RICO', N'13bl15072382341', 152826, 7, 1, 1, 1, 2, 0, CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2342, N'CONSUELO', N'DELGADO', N'LERMA', N'13bl15072382342', 152861, 7, 1, 1, 1, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2343, N'JUAN', N'DEL', N'PARRA', N'13bl15072382343', 152775, 7, 1, 1, 1, 2, 0, CAST(N'2023-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2344, N'BERNABÉ', N'BERENGUER', N'PINTO', N'13bl15072382344', 152900, 7, 1, 1, 1, 2, 0, CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2345, N'EMPERATRIZ', N'SILVA', N'MORENO', N'13bl15072382345', 152750, 7, 1, 1, 1, 2, 0, CAST(N'2022-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2346, N'ANDRÉS', N'PERALES', N'ROCHA', N'13bl15072382346', 152754, 7, 1, 1, 1, 2, 0, CAST(N'2022-01-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2347, N'ÁUREA', N'BERNAL', N'COBO', N'13bl15072382347', 152849, 7, 1, 1, 1, 2, 0, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2348, N'MARGARITA', N'ALCÁZAR', N'MÚGICA', N'13bl15072382348', 152891, 7, 1, 1, 1, 2, 0, CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2349, N'ANA', N'RAYA', N'SORIANO', N'13bl15072382349', 152872, 7, 1, 1, 1, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2350, N'OMAR', N'MARCO', N'FERRERO', N'13bl15072382350', 152786, 7, 1, 1, 1, 2, 0, CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2351, N'CARIDAD', N'BUSQUETS', N'ZORRILLA', N'13bl15072382351', 152777, 6, 1, 1, 1, 2, 0, CAST(N'2022-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2352, N'EZEQUIEL', N'SALGADO', N'CARBONELL', N'13bl15072382352', 152859, 6, 1, 1, 1, 2, 0, CAST(N'2022-05-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2353, N'EVITA', N'VÉLEZ', N'REDONDO', N'13bl15072382353', 152768, 6, 1, 1, 1, 2, 0, CAST(N'2022-06-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2354, N'HERIBERTO', N'OLIVERAS', N'FIGUEROLA', N'13bl15072382354', 152734, 6, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2355, N'RENATO', N'PERERA', N'GONZÁLEZ', N'13bl15072382355', 152721, 6, 1, 1, 1, 2, 0, CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2356, N'GUADALUPE', N'VEGA', N'MARTÍNEZ', N'13bl15072382356', 152753, 6, 1, 1, 1, 2, 0, CAST(N'2021-05-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2357, N'ÁLVARO', N'HARO', N'SANCHO', N'13bl15072382357', 152820, 6, 1, 1, 1, 2, 0, CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2358, N'SANDRA', N'MARTÍ', N'VILANOVA', N'13bl15072382358', 152741, 6, 1, 1, 1, 2, 0, CAST(N'2022-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2359, N'EMILIANA', N'ANGLADA', N'GALLEGO', N'13bl15072382359', 152759, 6, 1, 1, 1, 2, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2360, N'CRUZ', N'HOZ', N'ARREGUI', N'13bl15072382360', 152854, 6, 1, 1, 1, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2361, N'ROSALINDA', N'CUESTA', N'REYES', N'13bl15072382361', 152719, 6, 1, 1, 1, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2362, N'CLETO', N'CARRERAS', N'SANZ', N'13bl15072382362', 152780, 6, 1, 1, 1, 2, 0, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2363, N'EMILIANO', N'LUMBRERAS', N'GRACIA', N'13bl15072382363', 152825, 6, 1, 1, 1, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2364, N'CHARO', N'ROURA', N'ESPINOSA', N'13bl15072382364', 152885, 6, 1, 1, 1, 2, 0, CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2365, N'DAMIÁN', N'GOMIS', N'FONT', N'13bl15072382365', 152766, 6, 1, 1, 1, 2, 0, CAST(N'2022-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2366, N'BIBIANA', N'MONTSERRAT', N'FUERTES', N'13bl15072382366', 152807, 6, 1, 1, 1, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2367, N'ARTEMIO', N'VICENS', N'TERRÓN', N'13bl15072382367', 152855, 6, 1, 1, 1, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2368, N'RAFAELA', N'CASTAÑEDA', N'GUILLÉN', N'13bl15072382368', 152894, 6, 1, 1, 1, 2, 0, CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2369, N'BENITA', N'CUEVAS', N'ARIÑO', N'13bl15072382369', 152724, 6, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2370, N'BRUNO', N'NAVARRETE', N'VIÑA', N'13bl15072382370', 152702, 6, 1, 1, 1, 2, 0, CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2371, N'GLAUCO', N'SIERRA', N'ALBERTO', N'13bl15072382371', 152866, 6, 1, 1, 1, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2372, N'APOLONIA', N'PAZ', N'YUSTE', N'13bl15072382372', 152870, 6, 1, 1, 1, 2, 0, CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2373, N'AURORA', N'RAMÓN', N'CAMPOY', N'13bl15072382373', 152884, 6, 1, 1, 1, 2, 0, CAST(N'2022-01-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2374, N'SEVERINO', N'GUILLÉN', N'POMBO', N'13bl15072382374', 152762, 6, 1, 1, 1, 2, 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2375, N'BASILIO', N'GUIJARRO', N'COBO', N'13bl15072382375', 152769, 6, 1, 1, 1, 2, 0, CAST(N'2021-04-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2376, N'LUCIO', N'VIGIL', N'SILVA', N'13bl15072382376', 152883, 6, 1, 1, 1, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2377, N'PRIMITIVO', N'ARAGONÉS', N'ACUÑA', N'13bl15072382377', 152819, 6, 1, 1, 1, 2, 0, CAST(N'2022-05-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2378, N'DOMINGO', N'TAPIA', N'CAMACHO', N'13bl15072382378', 152829, 6, 1, 1, 1, 2, 0, CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2379, N'ITZIAR', N'VALLEJO', N'ESTEVEZ', N'13bl15072382379', 152712, 6, 1, 1, 1, 2, 0, CAST(N'2022-06-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2380, N'KIKE', N'CARVAJAL', N'COMAS', N'13bl15072382380', 152761, 6, 1, 1, 1, 2, 0, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2381, N'ESTRELLA', N'NORIEGA', N'CARRERA', N'13bl15072382381', 152793, 6, 1, 1, 1, 2, 0, CAST(N'2021-06-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2382, N'JAFET', N'NOGUERA', N'POSADA', N'13bl15072382382', 152731, 6, 1, 1, 1, 2, 0, CAST(N'2020-03-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2383, N'ISIDORO', N'CATALÁ', N'ELORZA', N'13bl15072382383', 152892, 6, 1, 1, 1, 2, 0, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2384, N'FERMÍN', N'PAREJA', N'ROCAMORA', N'13bl15072382384', 152879, 6, 1, 1, 1, 2, 0, CAST(N'2023-03-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2385, N'JORDANA', N'SEGOVIA', N'HEREDIA', N'13bl15072382385', 152733, 6, 1, 1, 1, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2386, N'ANÍBAL', N'PAZ', N'RODRIGO', N'13bl15072382386', 152871, 6, 1, 1, 1, 2, 0, CAST(N'2022-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2387, N'RAQUEL', N'REINA', N'CASTELLS', N'13bl15072382387', 152803, 6, 1, 1, 1, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2388, N'SOL', N'SORIANO', N'MATE', N'13bl15072382388', 152725, 6, 1, 1, 1, 2, 0, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2389, N'MOISÉS', N'DEL', N'LASA', N'13bl15072382389', 152755, 6, 1, 1, 1, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2390, N'FRANCISCA', N'MAYO', N'HOZ', N'13bl15072382390', 152787, 6, 1, 1, 1, 2, 0, CAST(N'2022-02-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2391, N'CARLOTA', N'GALÁN', N'TÉLLEZ', N'13bl15072382391', 152708, 6, 1, 1, 1, 2, 0, CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2392, N'CELESTINO', N'DE', N'MASCARÓ', N'13bl15072382392', 152868, 6, 1, 1, 1, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2393, N'BENIGNO', N'RODRIGO', N'MADRIGAL', N'13bl15072382393', 152717, 6, 1, 1, 1, 2, 0, CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2394, N'MARÍA', N'ROCHA', N'ESTEBAN', N'13bl15072382394', 152804, 6, 1, 1, 1, 2, 0, CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2395, N'ALMUDENA', N'DEL', N'MADRID', N'13bl15072382395', 152838, 6, 1, 1, 1, 2, 0, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2396, N'CARINA', N'TRUJILLO', N'MARÍN', N'13bl15072382396', 152844, 6, 1, 1, 1, 2, 0, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2397, N'MOHAMED', N'LILLO', N'SEBASTIÁN', N'13bl15072382397', 152785, 6, 1, 1, 1, 2, 0, CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2398, N'LIGIA', N'URIARTE', N'SOLER', N'13bl15072382398', 152869, 6, 1, 1, 1, 2, 0, CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2399, N'VINICIO', N'ACEDO', N'IBAÑEZ', N'13bl15072382399', 152851, 6, 1, 1, 1, 2, 0, CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2400, N'ERIC', N'BOSCH', N'PEREZ', N'13bl15072382400', 152856, 6, 1, 1, 1, 2, 0, CAST(N'2022-04-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2401, N'GUIOMAR', N'ALMAGRO', N'RODRIGUEZ', N'13bl15072382401', 236952, 8, 1, 1, 1, 2, 0, CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2402, N'GENOVEVA', N'VILLALOBOS', N'FABREGAT', N'13bl15072382402', 236953, 8, 1, 1, 1, 2, 0, CAST(N'2022-01-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2403, N'ANGELITA', N'LOPEZ', N'ZAMORANO', N'13bl15072382403', 236954, 8, 1, 1, 1, 2, 0, CAST(N'2022-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2404, N'ELI', N'LLAMAS', N'MÉNDEZ', N'13bl15072382404', 236955, 8, 1, 1, 1, 2, 0, CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2405, N'GRACIANA', N'GARMENDIA', N'MONTSERRAT', N'13bl15072382405', 236956, 8, 1, 1, 1, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2406, N'JOSÉ', N'GALLART', N'VICENS', N'13bl15072382406', 236957, 8, 1, 1, 1, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2407, N'ELVIRA', N'LLABRÉS', N'TERUEL', N'13bl15072382407', 236958, 8, 1, 1, 1, 2, 0, CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2408, N'EVANGELINA', N'GUILLEN', N'ROLDÁN', N'13bl15072382408', 236959, 8, 1, 1, 1, 2, 0, CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2409, N'LOURDES', N'AGULLO', N'RUBIO', N'13bl15072382409', 236960, 8, 1, 1, 1, 2, 0, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2410, N'JOSE', N'AGUIRRE', N'MORENO', N'13bl15072382410', 236961, 8, 1, 1, 1, 2, 0, CAST(N'2022-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2411, N'JUAN', N'ARAUJO', N'VIDAL', N'13bl15072382411', 236962, 8, 1, 1, 1, 2, 0, CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2412, N'PACO', N'PIÑOL', N'SANTAMARÍA', N'13bl15072382412', 236963, 8, 1, 1, 1, 2, 0, CAST(N'2022-05-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2413, N'MELANIA', N'IBARRA', N'CABRERA', N'13bl15072382413', 236964, 8, 1, 1, 1, 2, 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2414, N'PEPE', N'PINEDO', N'ARIÑO', N'13bl15072382414', 236965, 8, 1, 1, 1, 2, 0, CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2415, N'DANIEL', N'ADÁN', N'BARRAL', N'13bl15072382415', 236966, 8, 1, 1, 1, 2, 0, CAST(N'2022-01-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2416, N'ALMUDENA', N'GILABERT', N'ALVAREZ', N'13bl15072382416', 236967, 8, 1, 1, 1, 2, 0, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2417, N'FABRICIO', N'ANAYA', N'PONT', N'13bl15072382417', 236968, 8, 1, 1, 1, 2, 0, CAST(N'2022-03-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2418, N'ELBA', N'SILVA', N'BLANCA', N'13bl15072382418', 236969, 8, 1, 1, 1, 2, 0, CAST(N'2022-05-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2419, N'IKER', N'SORIANO', N'NIÑO', N'13bl15072382419', 236970, 8, 1, 1, 1, 2, 0, CAST(N'2022-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2420, N'DAN', N'CAMACHO', N'AYALA', N'13bl15072382420', 236971, 8, 1, 1, 1, 2, 0, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2421, N'NAZARET', N'GRAS', N'CARRIÓN', N'13bl15072382421', 236972, 3, 1, 1, 1, 2, 0, CAST(N'2022-05-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2422, N'ISABELA', N'LLEDÓ', N'PEDRAZA', N'13bl15072382422', 236973, 3, 1, 1, 1, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2423, N'RENATO', N'PEREIRA', N'ROBLES', N'13bl15072382423', 236974, 3, 1, 1, 1, 2, 0, CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2424, N'DALILA', N'ARROYO', N'BOIX', N'13bl15072382424', 236975, 3, 1, 1, 1, 2, 0, CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2425, N'ALEJANDRA', N'ATIENZA', N'PORCEL', N'13bl15072382425', 236976, 3, 1, 1, 1, 2, 0, CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2426, N'URBANO', N'CAMPILLO', N'ÁLVARO', N'13bl15072382426', 236977, 3, 1, 1, 1, 2, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2427, N'AMBROSIO', N'MÚÑIZ', N'BELTRAN', N'13bl15072382427', 236978, 3, 1, 1, 1, 2, 0, CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2428, N'ESTHER', N'MOYA', N'ALONSO', N'13bl15072382428', 236979, 3, 1, 1, 1, 2, 0, CAST(N'2022-05-28T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2429, N'EMMA', N'MARTORELL', N'PALOMO', N'13bl15072382429', 236980, 3, 1, 1, 1, 2, 0, CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2430, N'ALFREDO', N'PELÁEZ', N'CORTÉS', N'13bl15072382430', 236981, 3, 1, 1, 1, 2, 0, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2431, N'VALERIO', N'OLIVER', N'PEREZ', N'13bl15072382431', 236982, 3, 1, 1, 1, 2, 0, CAST(N'2023-04-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2432, N'CORNELIO', N'OJEDA', N'SOLANO', N'13bl15072382432', 236983, 3, 1, 1, 1, 2, 0, CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2433, N'TEODORO', N'CODINA', N'RODRÍGUEZ', N'13bl15072382433', 236984, 3, 1, 1, 1, 2, 0, CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2434, N'VICENTA', N'BERNAD', N'MONTALBÁN', N'13bl15072382434', 236985, 3, 1, 1, 1, 2, 0, CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2435, N'AZENETH', N'VALENCIANO', N'MONTSERRAT', N'13bl15072382435', 236986, 3, 1, 1, 1, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2436, N'AURA', N'LEON', N'PONT', N'13bl15072382436', 236987, 3, 1, 1, 1, 2, 0, CAST(N'2023-01-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2437, N'SALOMÓN', N'MENA', N'CANTERO', N'13bl15072382437', 236988, 3, 1, 1, 1, 2, 0, CAST(N'2023-04-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2438, N'LEIRE', N'GALVEZ', N'ROMAN', N'13bl15072382438', 236989, 3, 1, 1, 1, 2, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2439, N'GRACIANO', N'RODRIGUEZ', N'CLEMENTE', N'13bl15072382439', 236990, 3, 1, 1, 1, 2, 0, CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[usuario] ([idusuario], [nombre], [apellidop], [apellidom], [matricula], [pin], [rol], [estatus], [carreras], [centros], [pinestatus], [contraseña], [fechainicio]) VALUES (2440, N'ADOLFO', N'TENORIO', N'PALOMO', N'13bl15072382440', 236991, 3, 1, 1, 1, 2, 0, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_centros_centros] FOREIGN KEY([idcentros])
REFERENCES [dbo].[centros] ([idcentros])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_centros_centros]
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_col] FOREIGN KEY([col])
REFERENCES [dbo].[col] ([idcol])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_col]
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_cp] FOREIGN KEY([cp])
REFERENCES [dbo].[codigop] ([idcp])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_cp]
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_domicilio] FOREIGN KEY([domicilio])
REFERENCES [dbo].[domicilio] ([iddomicilio])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_domicilio]
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_estado] FOREIGN KEY([estado])
REFERENCES [dbo].[estados] ([idestados])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_estado]
GO
ALTER TABLE [dbo].[centros]  WITH CHECK ADD  CONSTRAINT [FK_municipio] FOREIGN KEY([municipio])
REFERENCES [dbo].[municipio] ([idmunicipio])
GO
ALTER TABLE [dbo].[centros] CHECK CONSTRAINT [FK_municipio]
GO
ALTER TABLE [dbo].[controlacceso]  WITH CHECK ADD  CONSTRAINT [FK_usuario] FOREIGN KEY([usuario])
REFERENCES [dbo].[usuario] ([idusuario])
GO
ALTER TABLE [dbo].[controlacceso] CHECK CONSTRAINT [FK_usuario]
GO
ALTER TABLE [dbo].[pinestatus]  WITH CHECK ADD  CONSTRAINT [FK_pinstatus] FOREIGN KEY([estatus])
REFERENCES [dbo].[controlacceso] ([idcontrolacceso])
GO
ALTER TABLE [dbo].[pinestatus] CHECK CONSTRAINT [FK_pinstatus]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_estatus] FOREIGN KEY([estatus])
REFERENCES [dbo].[estatus] ([idestatus])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_estatus]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_roles] FOREIGN KEY([rol])
REFERENCES [dbo].[roles] ([idroles])
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_roles]
GO
USE [master]
GO
ALTER DATABASE [c_eco_adm] SET  READ_WRITE 
GO
