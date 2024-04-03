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

-- CATEGORIAS
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Pasteles');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Cupcakes');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Galletas');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Pan dulce');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Tartas');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Chocolates');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Dulces artesanales');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Postres sin gluten');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Postres veganos');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Bebidas');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Helados');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Muffins');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Donas');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Bollería');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Macarons');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Panqués');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Éclairs');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Croissants');
INSERT INTO Categorias (Nombre_Categoria) VALUES ('Pasteles personalizados');

-- PRODUCTOS
-- Pasteles
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Pastel de chocolate', 'Suave pastel de chocolate con cobertura de ganache de chocolate', 15.99, 1);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Pastel de vainilla', 'Clásico pastel de vainilla con crema de mantequilla', 14.99, 1);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Pastel de zanahoria', 'Pastel húmedo de zanahoria con glaseado de queso crema', 16.99, 1);

-- Cupcakes
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Cupcake de red velvet', 'Cupcake de terciopelo rojo con crema de queso', 3.50, 2);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Cupcake de limón', 'Cupcake de limón con glaseado de limón y ralladura', 3.00, 2);

-- Galletas
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Galletas de chocolate chip', 'Crujientes galletas con trozos de chocolate', 5.99, 3);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Galletas de avena', 'Galletas de avena saludables con pasas', 6.50, 3);

-- Pan dulce
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Conchas', 'Pan dulce tradicional mexicano con cobertura de azúcar', 2.50, 4);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Croissant de almendra', 'Croissant relleno de crema de almendra', 4.50, 4);

-- Tartas
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Tarta de frutas', 'Tarta fresca con una selección de frutas de temporada', 18.99, 5);
INSERT INTO Productos (Nombre, Descripcion, Precio, ID_Categoria) VALUES ('Tarta de queso', 'Cremosa tarta de queso con base de galleta', 20.00, 5);


-- INGREDIENTES
-- Harinas y bases
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Harina de trigo', 'Gluten');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Harina de almendra', 'Frutos secos');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Harina de avena', 'Gluten');

-- Azúcares y endulzantes
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Azúcar blanca', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Azúcar morena', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Miel', '');

-- Grasas
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Mantequilla', 'Lactosa');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Aceite de coco', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Manteca vegetal', '');

-- Lácteos
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Leche', 'Lactosa');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Crema de leche', 'Lactosa');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Queso crema', 'Lactosa');

-- Chocolate y cacao
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Chocolate negro', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Cacao en polvo', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Chips de chocolate', '');

-- Frutas y vegetales
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Fresas', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Plátano', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Zanahoria', '');

-- Nueces y semillas
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Nueces', 'Frutos secos');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Almendras', 'Frutos secos');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Semillas de girasol', '');

-- Especias y saborizantes
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Vainilla', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Canela', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Extracto de almendra', 'Frutos secos');

-- Otros
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Levadura', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Bicarbonato de sodio', '');
INSERT INTO Ingredientes (Nombre_Ingrediente, Alergenos) VALUES ('Sal', '');

-- PRODUCTOS_INGREDIENTES
-- Pastel de chocolate (ID_Producto 1)
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (1, 1); -- Harina de trigo
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (1, 4); -- Azúcar blanca
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (1, 7); -- Mantequilla
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (1, 10); -- Leche
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (1, 13); -- Chocolate negro

-- Cupcake de red velvet (ID_Producto 4)
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (4, 1); -- Harina de trigo
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (4, 4); -- Azúcar blanca
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (4, 7); -- Mantequilla
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (4, 10); -- Leche
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (4, 22); -- Vainilla

-- Galletas de chocolate chip (ID_Producto 6)
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (6, 1); -- Harina de trigo
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (6, 4); -- Azúcar blanca
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (6, 7); -- Mantequilla
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (6, 15); -- Chips de chocolate

-- Conchas (ID_Producto 8)
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (8, 1); -- Harina de trigo
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (8, 4); -- Azúcar blanca
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (8, 7); -- Mantequilla
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (8, 25); -- Levadura

-- Tarta de frutas (ID_Producto 10)
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (10, 1); -- Harina de trigo
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (10, 4); -- Azúcar blanca
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (10, 7); -- Mantequilla
INSERT INTO Productos_Ingredientes (ID_Producto, ID_Ingrediente) VALUES (10, 16); -- Fresas

-- PROMOCIONES
-- Promoción de lanzamiento para el Pastel de chocolate
INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto)
VALUES ('Lanzamiento Chocolate', '20% de descuento en nuestro nuevo Pastel de Chocolate', 20.00, '2024-04-01', '2024-04-15', 'Válido solo para el primer pastel por cliente.', 1);

-- Descuento de temporada para Cupcakes
INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto)
VALUES ('Primavera de Cupcakes', 'Compra 4 cupcakes y obtén un 25% de descuento.', 25.00, '2024-05-01', '2024-05-31', 'Aplica para cualquier sabor de cupcake.', 4);

-- Promoción para Galletas de chocolate chip
INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto)
VALUES ('Hora de la Galleta', '15% de descuento en galletas de chocolate chip después de las 5pm.', 15.00, '2024-04-01', '2024-06-30', 'Promoción válida de 5pm a 8pm todos los días.', 7);

-- Oferta especial en Pan dulce
INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto)
VALUES ('Mañanas con Pan Dulce', 'Compra cualquier pan dulce y tu segunda pieza tiene un 50% de descuento.', 50.00, '2024-04-10', '2024-04-24', 'Descuento aplicable a la pieza de menor precio.', 9);

-- Promoción para Tarta de frutas
INSERT INTO Promociones (Nombre_Promocion, Descripcion, Descuento, Fecha_Inicio, Fecha_Fin, Condiciones, ID_Producto)
VALUES ('Fin de Semana de Tartas', 'Disfruta un 10% de descuento en nuestras tartas de frutas los fines de semana.', 10.00, '2024-05-01', '2024-07-31', 'Válido solo los sábados y domingos.', 11);
