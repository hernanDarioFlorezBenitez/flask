-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2023 a las 07:04:22
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ryr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$600000$RZ0ZwawPcXbWMp36AYNWNW$LnNlDW2oq9n0j2m07kTcX4bwwCGRutqIjFKv1HhxSpY=', '2023-06-22 05:02:24.545147', 1, 'dario', '', '', 'h.dario.91pio@hotmail.com', 1, 1, '2023-06-22 05:01:41.556327');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `ID_barrio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `barrio`
--

INSERT INTO `barrio` (`ID_barrio`, `nombre`) VALUES
(1, 'fundación'),
(2, 'aracataca'),
(3, 'reten'),
(4, 'riohacha'),
(5, 'quibdo'),
(6, 'la inmaculada'),
(7, 'carrilera estrella'),
(8, 'pueblo biejo'),
(9, 'pan de azucar'),
(10, 'maria auxiliadora'),
(11, 'primavera'),
(12, 'urapanes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_cargo` int(11) NOT NULL,
  `cargo` varchar(100) NOT NULL COMMENT 'cargo asignado dentro de la compañía'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`ID_cargo`, `cargo`) VALUES
(1, 'técnico '),
(2, 'ayudante técnico '),
(3, 'supervisor técnico '),
(4, 'ingeneiro técnico '),
(5, 'auxiliar oficina'),
(6, 'administrador '),
(7, 'gerente '),
(8, 'cliente pymes '),
(9, 'cliente natural ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `documento identidad` int(50) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `celular 1` varchar(15) NOT NULL,
  `celular 2` varchar(15) NOT NULL,
  `direccion` varchar(100) NOT NULL COMMENT 'direccion de la residencia del usuaio',
  `correo` varchar(150) NOT NULL,
  `foto` varchar(200) DEFAULT NULL COMMENT 'foto de la residencia del usuario en caso de no tener direccion',
  `fecha ingreso` date NOT NULL COMMENT 'fecha en que se registro el usuairo',
  `fecha retiro` date DEFAULT NULL COMMENT 'fecha en que se realizo el retiro dl usuario',
  `ID_zona` int(11) DEFAULT NULL,
  `ID_barrio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_cliente`, `documento identidad`, `nombres`, `apellidos`, `celular 1`, `celular 2`, `direccion`, `correo`, `foto`, `fecha ingreso`, `fecha retiro`, `ID_zona`, `ID_barrio`) VALUES
(1, 1035425945, 'clemencio', 'pedrosa garcia', '3022811177', '7899641254', 'calle 134sur kr 49a 50', 'clemencio.pedrosa78g@gmail.com', NULL, '2023-05-03', NULL, 1, 1),
(2, 10354255, 'cleopatra', ' garcia damasco', '30888811177', '7899461254', 'calle 150 sur kr 49a 50', 'cle078g@gmail.com', NULL, '2023-05-03', NULL, 3, 6),
(3, 1035425577, 'patrisia', ' gomez serna', '302456811177', '30249461254', 'calle 112 sur kr 54a 50', 'gomezse@gmail.com', NULL, '2023-05-03', NULL, NULL, NULL),
(4, 4354255, 'ana sofia', ' otalvaro florez', '30246811177', '4449461254', 'calle 160 sur kr 51- 5 int 201', 'anita78@gmail.com', NULL, '2023-05-03', NULL, NULL, NULL),
(5, 998456, 'cleotilde', ' garcia tapias', '30118811177', '302461254', 'kr40 calle 37a 50', 'tildeg@gmail.com', NULL, '2023-05-03', NULL, NULL, NULL),
(6, 2147483647, 'leonardo', ' garcia dicaprio', '321941177', '78992223', 'avenida 80 sur kr 12a 60', 'cle078g@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(7, 454255, 'rogelio', 'patecua', '28423367', '7899461254', 'calle 9 sur kr 49a 12', 'roger@gmail.com', NULL, '2023-03-03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-22 03:45:14.539880'),
(2, 'auth', '0001_initial', '2023-06-22 03:45:28.272895'),
(3, 'admin', '0001_initial', '2023-06-22 03:45:30.922165'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-22 03:45:31.024703'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-22 03:45:31.088486'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-22 03:45:31.846544'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-22 03:45:32.786185'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-22 03:45:32.939828'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-22 03:45:33.004268'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-22 03:45:34.120248'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-22 03:45:34.290043'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-22 03:45:34.366190'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-22 03:45:34.638005'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-22 03:45:34.933069'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-22 03:45:35.130036'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-22 03:45:35.195064'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-22 03:45:35.416601'),
(18, 'sessions', '0001_initial', '2023-06-22 03:45:36.236494');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_empleado` int(11) NOT NULL,
  `cedula` int(50) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `celular 1` varchar(15) NOT NULL,
  `celular 2` varchar(15) DEFAULT NULL,
  `direccion` varchar(150) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `foto` varchar(254) DEFAULT NULL,
  `fecha ingreso` date NOT NULL COMMENT 'fecha en que se contrato ',
  `fecha retiro` date DEFAULT NULL COMMENT 'fecha en que se retira de la empresa',
  `ID_cargo` int(11) DEFAULT NULL,
  `ID_horario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_empleado`, `cedula`, `nombres`, `apellidos`, `celular 1`, `celular 2`, `direccion`, `correo`, `foto`, `fecha ingreso`, `fecha retiro`, `ID_cargo`, `ID_horario`) VALUES
(1, 1035425946, 'hernan dario', 'florez benitez', '3022811177', '7899641254', 'calle 105 carrera 12sur25', 'h.dario.91pio@gmail.com', NULL, '2023-05-22', NULL, 2, 1),
(3, 1234567, 'ricardo', 'Jiménez gomez', '301654789', NULL, 'transversal 56 carrera 12-15', 'ricardo18@gmail.com', NULL, '2023-05-01', NULL, NULL, NULL),
(4, 14534567, 'jorge', 'hernadez gomez', '300654789', NULL, 'calle 56 carrera 15 38', 'hernanzdez8@gmail.com', NULL, '2023-05-01', NULL, NULL, NULL),
(6, 101234567, 'andrea', 'contreras gomez', '306654789', NULL, 'carrera 12 # 47a-3', 'gomez@gmail.com', NULL, '2023-05-01', NULL, NULL, NULL),
(7, 102548963, 'oscar', 'Camacho gomez', '2022811177', '7899641254', 'calle 97 carrera 12-15', 'oscar@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(8, 102548963, 'oscar mario', 'Camrgo gomez', '2022811177', '7899641254', 'calle 97 carrera 12-15', 'camargo@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(9, 102548963, 'oscar mario', 'Camrgo gomez', '2022811177', '7899641254', 'calle 97 carrera 12-15', 'camargo@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(10, 102548963, 'oscar mario', 'Camrgo gomez', '2022811177', '7899641254', 'calle 97 carrera 12-15', 'camargo@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(11, 102548963, 'oscar mario', 'Camrgo gomez', '2022811177', '7899641254', 'calle 97 carrera 12-15', 'camargo@gmail.com', NULL, '2023-05-02', NULL, NULL, NULL),
(12, 789456123, 'diana marcela ', 'chica rojas', '3014569874', '456987123', 'calle 65 # 23-42 int105', 'h.diana@hotmail.com', 'WhatsApp Image 2023-03-27 at 10.16.04 PM.jpeg', '0000-00-00', NULL, NULL, NULL),
(13, 789456123, 'diana marcela ', 'chica rojas', '3014569874', '456987123', 'calle 65 # 23-42 int105', 'h.diana@hotmail.com', '2023214653WhatsApp Image 2023-03-27 at 10.16.04 PM.jpeg', '0000-00-00', NULL, NULL, NULL),
(14, 43605288, 'martha', 'agudelo ramos', '3014569874', '3217789665', 'calle 65 # 23-42 int106', 'martha@hotmail.com', '2023214836WhatsApp Image 2023-03-27 at 10.15.52 PM.jpeg', '0000-00-00', NULL, NULL, NULL),
(15, 43605288, 'martha', 'agudelo ramos', '3014569874', '3217789665', 'calle 65 # 23-42 int106', 'martha@hotmail.com', '2023215457WhatsApp Image 2023-03-27 at 10.15.52 PM.jpeg', '0000-00-00', NULL, NULL, NULL),
(16, 43605288, 'martha', 'agudelo ramos', '3014569874', '3217789665', 'calle 65 # 23-42 int106', 'martha@hotmail.com', '2023215532WhatsApp Image 2023-03-27 at 10.15.52 PM.jpeg', '0000-00-00', NULL, NULL, NULL),
(17, 1035425946, 'monica', 'agudelo ramos', '3014569874', '', 'calle 65 # 23-42 int105', 'h.diana@hotmail.com', '2023190928IMG_20210605_113332.jpg', '0000-00-00', NULL, NULL, NULL),
(18, 1035425946, 'monica', 'agudelo ramos', '3014569874', '', 'calle 65 # 23-42 int105', 'h.diana@hotmail.com', '2023191005IMG_20210605_113332.jpg', '0000-00-00', NULL, NULL, NULL),
(19, 1035425946, 'monica', 'agudelo ramos', '3014569874', '', 'calle 65 # 23-42 int105', 'h.diana@hotmail.com', '2023191101IMG_20210605_113332.jpg', '0000-00-00', NULL, NULL, NULL),
(20, 1035425946, 'martha adiela', 'agudelo ramos', '3014569874', '3217789665', 'calle 65 # 23-42 int105', 'arjona-ricardo18@gmail.com', '2023191251Mapa conceptual.jpeg', '0000-00-00', NULL, NULL, NULL),
(21, 1035425946, 'martha adiela', 'agudelo ramos', '3014569874', '3217789665', 'calle 65 # 23-42 int105', 'arjona-ricardo18@gmail.com', '2023191443Mapa conceptual.jpeg', '0000-00-00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID_horario` int(11) NOT NULL,
  `horario am` varchar(20) NOT NULL,
  `horario pm` varchar(20) NOT NULL,
  `horario descanso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID_horario`, `horario am`, `horario pm`, `horario descanso`) VALUES
(1, '7:30 am', '4:00 pm', '12:00 am'),
(2, '9:00 am', '6:00 pm', '1:00 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `ID_servicio` int(11) NOT NULL,
  `tipo servicio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`ID_servicio`, `tipo servicio`) VALUES
(1, 'instalación'),
(2, 'reparación'),
(3, 'extencion'),
(5, 'auditoria'),
(6, 'suspencion'),
(7, 'cancelacion del seri'),
(8, 'reclamos'),
(9, 'otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud pedido`
--

CREATE TABLE `solicitud pedido` (
  `ID_pedido` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `ID_servicio` int(11) NOT NULL,
  `ID_barrio` int(11) NOT NULL,
  `ID_zona` int(11) NOT NULL,
  `ID_empelado` int(11) NOT NULL,
  `opservaciones` text NOT NULL,
  `nombre solicitante` varchar(100) NOT NULL,
  `dirección del pedido` varchar(200) NOT NULL,
  `fecha ejecucion` date NOT NULL,
  `fecha finalizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `ID_zona` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`ID_zona`, `municipio`) VALUES
(1, 'caldas'),
(2, 'sabaneta'),
(3, 'la estrella'),
(4, 'magdalena'),
(5, 'la guajira'),
(6, 'choco');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`ID_barrio`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_cargo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`),
  ADD KEY `ID_zona` (`ID_zona`),
  ADD KEY `ID_barrio` (`ID_barrio`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_empleado`),
  ADD KEY `ID_cargo` (`ID_cargo`),
  ADD KEY `ID_horario` (`ID_horario`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID_horario`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`ID_servicio`);

--
-- Indices de la tabla `solicitud pedido`
--
ALTER TABLE `solicitud pedido`
  ADD PRIMARY KEY (`ID_pedido`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`ID_zona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `ID_barrio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `ID_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `ID_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `solicitud pedido`
--
ALTER TABLE `solicitud pedido`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `zona`
--
ALTER TABLE `zona`
  MODIFY `ID_zona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `solicitud pedido`
--
ALTER TABLE `solicitud pedido`
  ADD CONSTRAINT `barrio-pedido` FOREIGN KEY (`ID_barrio`) REFERENCES `barrio` (`ID_barrio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente-pedido` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleado-pedido` FOREIGN KEY (`ID_empelado`) REFERENCES `empleado` (`ID_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicio-pedido` FOREIGN KEY (`ID_servicio`) REFERENCES `servicio` (`ID_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `zona-pedido` FOREIGN KEY (`ID_zona`) REFERENCES `zona` (`ID_zona`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
