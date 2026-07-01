CREATE DATABASE CyberRiskMatrix;
GO

SELECT DB_NAME() AS BaseActual;

USE CyberRiskMatrix;
GO

USE CyberRiskMatrix;
GO

CREATE TABLE Activos (
    IdActivo INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Tipo NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(255),
    Confidencialidad INT NOT NULL,
    Integridad INT NOT NULL,
    Disponibilidad INT NOT NULL,
    ValorActivo AS (Confidencialidad + Integridad + Disponibilidad)
);
GO

INSERT INTO Activos 
(Nombre, Tipo, Descripcion, Confidencialidad, Integridad, Disponibilidad)
VALUES
('Base de datos de clientes', 'Base de datos', 'Información personal de clientes', 4, 4, 3);

SELECT * FROM Activos;