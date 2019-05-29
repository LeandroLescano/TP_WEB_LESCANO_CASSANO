GO
use master
go
CREATE DATABASE TP_WEB
GO
USE TP_WEB
Go
CREATE TABLE Productos(
    Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL CHECK (LEN(Titulo) > 0),
    Descripcion VARCHAR(250) NOT NULL CHECK (LEN(Descripcion) > 0),
    URLImagen VARCHAR(1000) NOT NULL CHECK (LEN(URLImagen) > 0)
);

CREATE TABLE Clientes(
    Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    DNI INT UNIQUE NOT NULL CHECK (DNI > 0),
    Nombre VARCHAR(50) NOT NULL CHECK (LEN(Nombre) > 0),
    Apellido VARCHAR(50) NOT NULL CHECK (LEN(Apellido) > 0),
    Email VARCHAR(100) NOT NULL CHECK (LEN(Email) > 0),
    Direccion VARCHAR(50) NOT NULL CHECK (LEN(Direccion) > 0),
    Ciudad VARCHAR(50) NOT NULL CHECK (LEN(Ciudad) > 0),
    CodigoPostal VARCHAR(8) NOT NULL CHECK (LEN(CodigoPostal) > 0),
    FechaRegistro DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE Vouchers(
    Id BIGINT NOT NULL IDENTITY (1, 1) PRIMARY KEY,
    CodigoVoucher VARCHAR(32) UNIQUE DEFAULT CONVERT(VARCHAR(32), HashBytes('MD5', CONVERT(varchar, SYSDATETIME(), 121)), 2) CHECK (LEN(CodigoVoucher) = 32),
    Estado BIT NOT NULL DEFAULT 0 CHECK (Estado IN (1, 0)),
    IdCliente BIGINT DEFAULT NULL FOREIGN KEY REFERENCES Clientes(Id),
    IdProducto BIGINT DEFAULT NULL FOREIGN KEY REFERENCES Productos(Id),
    FechaRegistro DATETIME NULL DEFAULT NULL
);
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([Id], [Titulo], [Descripcion], [URLImagen]) VALUES (1, N'TV 55'''' Samsung', N'Televisor Samsung', N'https://http2.mlstatic.com/tv-led-samsung-55-smart-k5500-full-hd-quadcore-netflix-D_NQ_NP_893846-MLA26427341449_112017-F.jpg')
GO
INSERT [dbo].[Productos] ([Id], [Titulo], [Descripcion], [URLImagen]) VALUES (2, N'Aire Acondicionado Samsung', N'Aire Acondicionado Inverter', N'http://www.compraderas.com.bo/wp-content/uploads/2016/11/samsung_aire_acondicionado_split_18000_btu.jpg')
GO
INSERT [dbo].[Productos] ([Id], [Titulo], [Descripcion], [URLImagen]) VALUES (3, N'Xiaomi Redmi Note 7 (Blue)', N'Celular Xiaomi Redmi Note 7 64Gb 25mp', N'https://images-na.ssl-images-amazon.com/images/I/61LiKwLWbqL._SX466_.jpg')
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
CREATE PROCEDURE agregarCliente(
    @DNI INT,
    @Nombre VARCHAR(50),
    @Apellido VARCHAR(50),
    @Email VARCHAR(100),
    @Direccion VARCHAR(50),
    @Ciudad VARCHAR(50),
    @CodigoPostal VARCHAR(8),
    @Fecha DATETIME
)
AS
BEGIN
	INSERT INTO Clientes (DNI, Nombre, Apellido, Email, Direccion, Ciudad, CodigoPostal, FechaRegistro) VALUES (@DNI, @Nombre, @Apellido, @Email, @Direccion, @Ciudad, @CodigoPostal, @Fecha)
	SELECT SCOPE_IDENTITY(); 
END
GO
CREATE PROCEDURE agregarVoucher(
	@Codigo VARCHAR(32),
	@Cliente BIGINT,
	@Producto BIGINT,
	@Fecha DATETIME
)
AS
BEGIN
	UPDATE Vouchers SET IdCliente=@Cliente, IdProducto=@Producto, FechaRegistro=@Fecha, Estado=1 where CodigoVoucher = @Codigo
END

DECLARE @cnt INT = 0;
WHILE @cnt < 100
BEGIN
   INSERT INTO TP_WEB.dbo.Vouchers (CodigoVoucher) VALUES (DEFAULT);
   SET @cnt = @cnt + 1;
   WAITFOR DELAY '00:00:00.002'
END;