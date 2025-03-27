-- Creación de la tabla de Centros
CREATE TABLE Catalogo_Centros (
    ID_Centro INT PRIMARY KEY,
    Nombre_Centro NVARCHAR(100) NOT NULL,
    Ciudad NVARCHAR(100) NOT NULL
);

-- Creación de la tabla de Puestos
CREATE TABLE Catalogo_Puestos (
    ID_Puesto INT PRIMARY KEY IDENTITY(1,1),
    Nombre_Puesto NVARCHAR(100) NOT NULL,
    Descripcion_Puesto NVARCHAR(255) NULL
);

-- Creación de la tabla de Empleados
CREATE TABLE Empleado (
    ID_Empleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Apellido_Paterno NVARCHAR(100) NOT NULL,
    Apellido_Materno NVARCHAR(100) NULL,
    Fecha_Nacimiento DATE NOT NULL,
    RFC NVARCHAR(13) UNIQUE NOT NULL,
    Centro_Trabajo INT NOT NULL,
    ID_Puesto INT NOT NULL,
    Directivo BIT NOT NULL DEFAULT 0,
    FOREIGN KEY (Centro_Trabajo) REFERENCES Catalogo_Centros(ID_Centro),
    FOREIGN KEY (ID_Puesto) REFERENCES Catalogo_Puestos(ID_Puesto)
);

-- Creación de la tabla de Directivos
CREATE TABLE Directivo (
    ID_Empleado INT PRIMARY KEY,
    Centro_Supervisado INT NOT NULL,
    Prestacion_Combustible BIT NOT NULL DEFAULT 0,
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (Centro_Supervisado) REFERENCES Catalogo_Centros(ID_Centro)
);
