Create database DBQUEJAS;
Use DBQUEJAS;
-- Creación de la tabla Cliente
CREATE TABLE Cliente (
  ID_Cliente INT PRIMARY KEY not null,
  Nombre VARCHAR(50)not null,
  Apellido VARCHAR(50)not null,
  Direccion VARCHAR(100)not null,
  Numero_Contacto VARCHAR(100) not null,
  Correo_Electronico VARCHAR(100) not null
);

-- Creación de la tabla Categoria
CREATE TABLE Categoria (
  ID_Categoria INT PRIMARY KEY not null,
  Nombre VARCHAR(50)not null
);

-- Creación de la tabla Departamento
CREATE TABLE Departamento (
  ID_Departamento INT PRIMARY KEY not null,
  Nombre VARCHAR(50)not null
);

-- Creación de la tabla Empleado
CREATE TABLE Empleado (
  ID_Empleado INT PRIMARY KEY not null,
  ID_Departamento_FK INT not null,
  Nombre VARCHAR(50)not null,
  Apellido VARCHAR(50)not null,
  Cargo VARCHAR(50)not null,
  CONSTRAINT idDepartamentoFK FOREIGN KEY (ID_Departamento_FK) REFERENCES Departamento(ID_Departamento)
);
-- Creación de la tabla Asignación
CREATE TABLE Asignacion (
  ID_Asignacion INT PRIMARY KEY not null,
  ID_Empleado_FK INT not null,
  Fecha_Asignacion DATE not null,
  CONSTRAINT idEmpleadoFK FOREIGN KEY (ID_Empleado_FK) REFERENCES Empleado(ID_Empleado)
);
-- Creación de la tabla Queja
CREATE TABLE Queja (
  ID_Queja INT PRIMARY KEY not null,
  Fecha_Recepcion DATE not null,
  Descripcion VARCHAR(200)not null,
  Estado BOOLEAN not null,
  ID_Cliente_FK INT not null,
  ID_Categoria_FK INT not null,
  ID_Asignacion_FK INT not null,
  CONSTRAINT idClienteFK FOREIGN KEY (ID_Cliente_FK) REFERENCES Cliente(ID_Cliente),
  CONSTRAINT idCategoriaFK FOREIGN KEY (ID_Categoria_FK) REFERENCES Categoria(ID_Categoria),
  CONSTRAINT idAsignacionFK FOREIGN KEY (ID_Asignacion_FK) REFERENCES Asignacion(ID_Asignacion)
);


