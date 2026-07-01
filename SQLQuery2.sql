CREATE TABLE Riesgos
(
    IdRiesgo INT IDENTITY(1,1) PRIMARY KEY,

    Codigo NVARCHAR(20) NOT NULL,

    DescripcionEvento NVARCHAR(300) NOT NULL,

    Causa NVARCHAR(300),

    Efecto NVARCHAR(300),

    RiesgoAsociado NVARCHAR(100),

    FactorRiesgo NVARCHAR(100),

    Probabilidad INT NOT NULL,

    Impacto INT NOT NULL,

    ValorTotal AS (Probabilidad * Impacto),

    NivelRiesgoInherente NVARCHAR(20),

    IdActivo INT NOT NULL,

    FOREIGN KEY (IdActivo)
        REFERENCES Activos(IdActivo)
);