CREATE TABLE Categorias (
    ID_Categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Categoria VARCHAR(255)
);

CREATE TABLE Productos (
    ID_Producto INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre VARCHAR(255),
    Descripcion TEXT,
    Precio DECIMAL(10,2),
    ID_Categoria INT,
    FOREIGN KEY(ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

CREATE TABLE Ingredientes (
    ID_Ingrediente INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Ingrediente VARCHAR(255),
    Alergenos VARCHAR(255)
);

CREATE TABLE Productos_Ingredientes (
    ID_Producto INT,
    ID_Ingrediente INT,
    PRIMARY KEY(ID_Producto, ID_Ingrediente),
    FOREIGN KEY(ID_Producto) REFERENCES Productos(ID_Producto),
    FOREIGN KEY(ID_Ingrediente) REFERENCES Ingredientes(ID_Ingrediente)
);

CREATE TABLE Promociones (
    ID_Promocion INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_Promocion VARCHAR(255),
    Descripcion TEXT,
    Descuento DECIMAL(10,2),
    Fecha_Inicio DATE,
    Fecha_Fin DATE,
    Condiciones TEXT,
    ID_Producto INT,
    FOREIGN KEY(ID_Producto) REFERENCES Productos(ID_Producto)
);

INSERT INTO Categorias (Nombre_Categoria) VALUES
('Tortas'),
('Pasteles'),
('Galletas'),
('Pan Dulce');

INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES
('Torta de Chocolate', 'Deliciosa torta de chocolate con relleno de fresa', 250.00, 1),
('Pastel de Zanahoria', 'Pastel esponjoso de zanahoria con cobertura de queso crema', 200.00, 2),
('Galletas de Avena', 'Galletas saludables de avena con trozos de chocolate', 150.00, 3),
('Concha de Vainilla', 'Pan dulce tradicional con cobertura de vainilla', 50.00, 4);

INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES
('Chocolate', 'Ninguno'),
('Harina', 'Gluten'),
('Leche', 'Lactosa'),
('Avena', 'Gluten');

INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES
(1, 1), -- Torta de Chocolate tiene Chocolate
(1, 2), -- Torta de Chocolate tiene Harina
(2, 2), -- Pastel de Zanahoria tiene Harina
(3, 4); -- Galletas de Avena tienen Avena

INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto) VALUES
('Descuento de Verano', '20% de descuento en todas las tortas', 20.00, '2024-01-01', '2024-01-31', 'Aplicable solo a productos de la categoría Tortas', 1),
('Promoción Día del Niño', 'Compra una docena de galletas y lleva el doble', 50.00, '2024-08-15', '2024-08-16', 'Válido solo en compras mayores a $300', 3);
