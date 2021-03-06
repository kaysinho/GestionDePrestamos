USE [master]
GO
/****** Object:  Database [dbGestionDePrestamos]    Script Date: 18/04/2018 10:42:45 ******/
CREATE DATABASE [dbGestionDePrestamos]
 GO

USE [dbGestionDePrestamos]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 18/04/2018 10:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Documento] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[FechaRegistro] [date] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SolicitudyAprobacion]    Script Date: 18/04/2018 10:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SolicitudyAprobacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[FechaIngresoEmpresa] [date] NOT NULL,
	[SalarioMensual] [int] NOT NULL,
	[NombreEmpresa] [varchar](100) NOT NULL,
	[NitEmpresa] [varchar](20) NOT NULL,
	[CreditoAprobado] [int] NOT NULL,
 CONSTRAINT [PK_SolicitudyAprobacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SolicitudyAprobacion]  WITH CHECK ADD  CONSTRAINT [FK_SolicitudyAprobacion_SolicitudyAprobacion] FOREIGN KEY([Id])
REFERENCES [dbo].[SolicitudyAprobacion] ([Id])
GO
ALTER TABLE [dbo].[SolicitudyAprobacion] CHECK CONSTRAINT [FK_SolicitudyAprobacion_SolicitudyAprobacion]
GO
USE [master]
GO
ALTER DATABASE [dbGestionDePrestamos] SET  READ_WRITE 
GO
