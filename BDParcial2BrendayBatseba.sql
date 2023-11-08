Create database BDParcial2BrendayBatseba;
Use  BDParcial2BrendayBatseba;

CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    DepartamentoID INT,
    MunicipioID INT
);

-- Crear la tabla Departamento
CREATE TABLE Departamento (
    DepartamentoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50)
);

-- Crear la tabla Municipio
CREATE TABLE Municipio (
    MunicipioID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50),
    DepartamentoID INT
);

INSERT INTO Departamento (Nombre) VALUES ('Chalatenango');
INSERT INTO Departamento (Nombre) VALUES ('Sonsonate');
INSERT INTO Departamento (Nombre) VALUES ('San Salvador');
INSERT INTO Departamento (Nombre) VALUES ('San Miguel');

-- Insertar 3 municipios por cada departamento
-- Municipios de Chalatenango
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Chalatenango', 1);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Agua Caliente', 1);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Comalapa', 1);

-- Municipios de Sonsonate
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Sonsonate', 2);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Juayua', 2);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Acajutla', 2);

-- Municipios de San Salvador
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('San Marcos', 3);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Apopa', 3);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('San Salvador', 3);

-- Municipios de San Miguel
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Moncagua', 4);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Chinameca', 4);
INSERT INTO Municipio (Nombre, DepartamentoID) VALUES ('Lolotique', 4);

-- Insertar al menos 2 clientes en la tabla Cliente
INSERT INTO Cliente (Nombre, Apellido, DepartamentoID, MunicipioID) VALUES ('Dominga', 'Perez', 1, 1);
INSERT INTO Cliente (Nombre, Apellido, DepartamentoID, MunicipioID) VALUES ('Samuel', 'Hernandez', 2, 5);

Select * from Cliente;
