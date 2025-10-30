
--Create Database datawarehouse_2025_G03
--USE datawarehouse_2025_G03

CREATE TABLE [dbo].[Dim_Cliente_G03](
	[skCliente] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[nombreCompleto] [varchar](255) NOT NULL,
	[fechaNacimiento] [date] NULL,
	[codiPostal] [varchar](255) NOT NULL,
	[tipoCliente] [varchar](255) NOT NULL
) ON [PRIMARY]



CREATE TABLE [dbo].[Dim_Empleado_G03](
	[skEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[nombreCompleto] [varchar](255) NOT NULL,
	[cateria] [varchar](255) NOT NULL,
	[fechaContratacion] [date] NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
	[nivelEducativo] [varchar](255) NOT NULL,
	[genero] [char](255) NOT NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[Dim_Geografia_G03](
	[codiPostal] [varchar](255) NOT NULL,
	[ciudad] [varchar](255) NOT NULL,
	[estado] [varchar](255) NOT NULL,
	[region] [varchar](255) NOT NULL
) ON [PRIMARY]



CREATE TABLE [dbo].[Dim_Producto_G03](
	[skProducto] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[detalle] [varchar](255) NOT NULL,
	[package] [varchar](255) NOT NULL,
	[volumenLitros] [decimal](8, 2) NOT NULL,
	[cateria] [varchar](255) NOT NULL,
	[esDietetica] [bit] NOT NULL,
	[esLibreCafeina] [bit] NOT NULL,
	[presentacion] [varchar](255) NOT NULL
) ON [PRIMARY]







/****** Object:  Table [dbo].[Dim_RanEtario_G03]    Script Date: 14/6/2025 15:44:56 ******/






CREATE TABLE [dbo].[Dim_RanEtario_G03](
	[id] [int] NOT NULL,
	[edadInicial] [int] NOT NULL,
	[edadFinal] [int] NOT NULL,
	[ranEtario] [varchar](255) NOT NULL
) ON [PRIMARY]



CREATE TABLE [dbo].[Dim_Tiempo_G03](
	[fecha] [date] NOT NULL,
	[dia] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[anio] [int] NOT NULL,
	[diaSemana] [int] NOT NULL,
	[nombreDiaSemana] [varchar](255) NOT NULL,
	[nombreMes] [varchar](255) NOT NULL,
	[trimestre] [int] NOT NULL,
	[semestre] [int] NOT NULL,
	[semana] [int] NOT NULL,
	[diaAnio] [int] NOT NULL,
	[esFeriado] [bit] NOT NULL,
	[nombreFeriado] [varchar](255) NULL
) ON [PRIMARY]



CREATE TABLE [dbo].[Fact_Stock_G03](
	[skStock] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [int] NOT NULL,
	[fecha] [datetime] NULL,
	[variacion] [int] NOT NULL
) ON [PRIMARY]



CREATE TABLE [dbo].[Fact_Ventas_G03](
	[skVentas] [int] IDENTITY(1,1) NOT NULL,
	[codSistOrigen] [varchar](50) NULL,
	[idFacturaOrigen] [int] NULL,
	[fecha] [date] NULL,
	[hora] [time] NULL,
	[idCliente] [int] NULL,
	[idEmpleado] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[codigoPostal] [varchar](50) NULL,
	[litrosTotales] [decimal](12, 2) NULL,
	[idRama] [int] NULL,
	[precioLista] [decimal](12, 2) NULL,
	[porcentajeDescuento] [decimal](5, 2) NULL,
	[importeDescuento] [decimal](12, 2) NULL,
	[importeNetoProducto] [decimal](12, 2) NULL,
	[edadCliente] [int] NULL,
	[edadEmpleado] [int] NULL,
	[antiguedadEmpleado] [int] NULL
) 


