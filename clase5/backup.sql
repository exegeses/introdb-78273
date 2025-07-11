-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb78273
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (8,'Accesorios'),(14,'Almacenamiento'),(16,'Audio'),(15,'Cámaras'),(12,'Componentes de PC'),(6,'Domótica'),(5,'Electrodomésticos'),(11,'Gaming'),(13,'Hogar Inteligente'),(1,'Laptops'),(9,'Periféricos'),(10,'Redes'),(2,'Smartphones'),(7,'Software'),(4,'Tablets'),(3,'Televisores');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (9,'Acer'),(11,'Amazon'),(4,'Apple'),(8,'Asus'),(13,'Bosch'),(10,'Google'),(7,'HP'),(6,'Lenovo'),(2,'LG'),(14,'Logitech'),(5,'Microsoft'),(12,'Philips'),(1,'Samsung'),(3,'Sony'),(15,'TP-Link'),(16,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apellido` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` int NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520147,'2005-09-30'),(3,'Martínez','Vanesa',35741951,'2006-06-21'),(4,'Page','Jimmy',18543219,'1944-01-09'),(5,'Plant','Robert',18543220,'1948-08-20'),(6,'Bonham','Bonzo',18543221,'1948-05-31'),(7,'Jones','John',18543222,'1946-01-03'),(8,'Álvarez','Fernando',32912457,'2007-11-02');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` smallint unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `producto` (`producto`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Laptop Lenovo IdeaPad 3',749.99,6,1,'Notebook de uso general con procesador AMD Ryzen 5','imagen01.png',1),(2,'Smartphone Xiaomi Redmi Note 12',299.99,16,2,'Smartphone Android con excelente relación calidad-precio','imagen02.png',1),(3,'Televisor LG 55\" OLED',1399.00,2,3,'Televisor 4K con tecnología OLED y sistema WebOS','imagen03.png',1),(4,'iPad 10ª generación',499.99,4,4,'Tablet con chip A14 y pantalla Liquid Retina','imagen04.png',1),(5,'Heladera Samsung No Frost',999.99,1,5,'Electrodoméstico con congelador inferior y eficiencia energética A+','imagen05.png',1),(6,'Kit domótica Philips Hue',199.00,12,6,'Luces LED inteligentes controladas por app y voz','imagen06.png',1),(7,'Microsoft Office 365 Personal',79.99,5,7,'Licencia anual para uso individual, incluye Word, Excel y más','imagen07.png',1),(8,'Mouse Logitech MX Master 3',109.00,14,8,'Mouse inalámbrico ergonómico de alta precisión','imagen08.png',1),(9,'Teclado mecánico Asus ROG Strix',129.00,8,9,'Teclado gamer retroiluminado con switches rojos','imagen09.png',1),(10,'Router TP-Link AX1500',89.99,15,10,'Router Wi-Fi 6 ideal para hogares conectados','imagen10.png',1),(11,'Consola Sony PlayStation 5',599.00,3,11,'Consola de videojuegos de última generación','imagen11.png',1),(12,'Procesador AMD Ryzen 7 5800X',329.99,1,12,'CPU de alto rendimiento para gamers y creadores','imagen12.png',1),(13,'Enchufe inteligente TP-Link Tapo',29.99,15,13,'Controla cualquier dispositivo desde tu smartphone','imagen13.png',1),(14,'Disco SSD Samsung 1TB',119.00,1,14,'Almacenamiento veloz NVMe para laptops y PCs','imagen14.png',1),(15,'Cámara Logitech StreamCam',149.00,14,15,'Cámara ideal para streaming en 1080p a 60 fps','imagen15.png',1),(16,'Auriculares Sony WH-1000XM5',399.00,3,16,'Auriculares inalámbricos con cancelación de ruido premium','imagen16.png',1),(17,'Laptop HP Pavilion 15',829.00,7,1,'Laptop con pantalla Full HD y procesador Intel i5','imagen17.png',1),(18,'Smartphone Samsung Galaxy S23',899.99,1,2,'Alta gama con cámara triple y pantalla Dynamic AMOLED','imagen18.png',1),(19,'Smart TV Sony Bravia 65\"',1799.00,3,3,'Televisor con Google TV integrado y 4K UHD','imagen19.png',1),(20,'Tablet Amazon Fire HD 10',149.99,11,4,'Tablet económica ideal para entretenimiento','imagen20.png',1),(21,'Lavarropas Bosch Serie 6',849.99,13,5,'Ciclo rápido y motor silencioso con eficiencia energética','imagen21.png',1),(22,'Sensor de movimiento Xiaomi Mi',24.99,16,6,'Sensor inteligente para activación de luces y alarmas','imagen22.png',1),(23,'Windows 11 Home',129.00,5,7,'Sistema operativo moderno y optimizado','imagen23.png',1),(24,'Parlante Bluetooth JBL Flip 6',119.00,3,8,'Sonido potente y resistente al agua','imagen24.png',1),(25,'Auriculares Gaming Asus TUF',89.99,8,9,'Auriculares con micrófono y sonido envolvente','imagen25.png',1),(26,'Extensor de red TP-Link RE450',59.99,15,10,'Amplía la cobertura Wi-Fi en tu hogar','imagen26.png',1),(27,'Joystick Microsoft Xbox Series X',69.00,5,11,'Control inalámbrico compatible con consolas y PC','imagen27.png',1),(28,'Motherboard Asus B550M',149.00,8,12,'Placa base compatible con Ryzen y RAM DDR4','imagen28.png',1),(29,'Cámara de seguridad Xiaomi Mi 360',54.99,16,13,'Visión nocturna, grabación en la nube y control desde app','imagen29.png',1),(30,'Disco externo Seagate 2TB',89.99,1,14,'Almacenamiento portátil USB 3.0','imagen30.png',1),(31,'Cámara Canon EOS M50',699.00,3,15,'Cámara mirrorless ideal para fotografía y video 4K','imagen31.png',1),(32,'Barra de sonido LG SN5Y',229.00,2,16,'Audio envolvente con subwoofer inalámbrico','imagen32.png',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(100) NOT NULL,
  `cuit` bigint NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `razonSocial` (`razonSocial`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuidora El Sol S.A.',30711234567,'011-4567-8901','contacto@elsol.com.ar','Av. Corrientes 1234, CABA'),(2,'Comercial Andina SRL',30712345678,'011-7890-1234','ventas@andina.com.ar','Calle Falsa 123, CABA'),(3,'TechnoProveedores S.A.',30713456789,'011-2345-6789','info@technopro.com.ar','Mitre 1010, Rosario'),(4,'Alimentos Del Sur S.A.',30714567890,'0341-456-7891','contacto@delsur.com.ar','Av. Pellegrini 2020, Rosario'),(5,'Ferretería La Tuerca SRL',30715678901,'0221-123-4567','ventas@latuerca.com.ar','Calle 7 N°450, La Plata'),(6,'Electro Hogar S.A.',30716789012,'011-3456-7890','info@electrohogar.com.ar','Av. Rivadavia 3000, CABA'),(7,'Grupo Norte Proveedores',30717890123,'0261-555-1234','contacto@gruponorte.com.ar','San Martín 150, Mendoza'),(8,'Distribuidora Cuyo S.R.L.',30718901234,'0261-444-5678','ventas@cuyo.com.ar','Las Heras 550, Mendoza'),(9,'Mundo Limpieza S.A.',30719012345,'0351-321-6549','info@mundolimpieza.com.ar','Bv. San Juan 900, Córdoba'),(10,'Servicios del Litoral SRL',30710123456,'0341-789-1230','servicios@litoral.com.ar','Oroño 500, Rosario'),(11,'Papelería Delta S.A.',30720234567,'011-9999-8888','delta@papeleria.com.ar','Lima 1200, CABA'),(12,'Proveeduría Escolar SRL',30721345678,'0223-456-1234','contacto@proveescolar.com.ar','Colón 600, Mar del Plata'),(13,'Industria Gráfica S.A.',30722456789,'011-3333-2222','ventas@indgrafica.com.ar','Perón 123, CABA'),(14,'Laboratorios BioSur S.A.',30723567890,'0381-222-1111','info@biosur.com.ar','Av. Belgrano 300, Tucumán'),(15,'Proveedores del Oeste SRL',30724678901,'011-2121-3434','oeste@proveedores.com.ar','Av. Gaona 2300, Morón'),(16,'Distribuciones NEA SRL',30725789012,'0376-321-4567','nea@distribuciones.com.ar','Av. Uruguay 234, Posadas'),(17,'Comercial Patagonia S.A.',30726890123,'0294-567-8901','ventas@patagonia.com.ar','Mitre 789, Bariloche'),(18,'Ferretería Central SRL',30727901234,'011-3333-4444','central@ferreteria.com.ar','Av. San Martín 456, CABA'),(19,'Alimentos Bonaerenses S.A.',30728012345,'0221-765-4321','info@albonaerense.com.ar','Diagonal 80 N°1200, La Plata'),(20,'Importadora Río de la Plata S.A.',30729123456,'011-9876-5432','importadora@rioplata.com.ar','Av. Libertador 4000, CABA');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-11 12:07:34
