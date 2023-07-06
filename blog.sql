-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2023 a las 23:09:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2023_07_05_101726_noticias', 1),
(15, '2014_10_12_000000_create_users_table', 2),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(17, '2019_08_19_000000_create_failed_jobs_table', 2),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `name`, `category`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Descubre 3 nuevas herramientas de edición de fotos con inteligencia artificial gratuitas online', 'Herramientas AI', 'En la era digital actual, no es necesario ser un experto en Photoshop para mejorar la calidad de tus fotografías. Gracias a los avances en la inteligencia artificial (IA), cualquiera con conocimientos básicos sobre filtros de fotos puede manipular sus imágenes, mejorar la iluminación de fondo, realizar ajustes y personalizarlas a su gusto.\r\n\r\nExisten herramientas gratuitas de edición de fotos con IA en línea que facilitan el realce de las imágenes sin necesidad de entrar en demasiados detalles técnicos. Muchos de estos editores de fotos incorporan filtros que puedes utilizar para mejorar tus fotos con un solo clic.\r\n\r\nHoy te presentamos nueve de los mejores editores de fotos con IA en línea y gratuitos que puedes empezar a usar hoy mismo.\r\n\r\nAutoenhance.ai\r\nEditor de imágenes con inteligencia artificial gratis autoEnhance.ai.\r\nEditor de imágenes con inteligencia artificial gratis autoEnhance.ai.\r\nSi no quieres pasar por el tedioso proceso de manipular cada aspecto de tus imágenes, debes considerar Autoenhance. Esta herramienta proporciona tres funciones principales:\r\n\r\nReemplazo de cielo Corrección de perspectiva Reiluminación de imágenes Además, Autoenhance ofrece una API que puedes integrar en tus propias aplicaciones. Aunque es completamente gratis para un máximo de 15 imágenes, también existen opciones de pago por uso o diferentes paquetes a elegir.\r\n\r\nUsar Autoenhance es sencillo: sube una imagen y la IA la editará automáticamente por ti. Las imágenes editadas están disponibles para descargar al instante. Si buscas una herramienta que agilice tu flujo de trabajo en edición de fotos, esta es una excelente opción.\r\n\r\nCanva\r\nEditor de imágenes con inteligencia artificial gratis Canva.\r\nEditor de imágenes con inteligencia artificial gratis Canva.\r\nCanva te permite hacer ediciones complejas de manera sencilla gracias a su editor de fotos con IA. Controla el aspecto de tus imágenes, elimina distracciones o añade algo. Edita la imagen completa o sólo una parte de ella. Ya sea una imagen para las redes sociales o un álbum de fotos para tu familia, edita al instante con el editor de fotos con IA de Canva.\r\n\r\nLa IA reduce el tiempo y esfuerzo requeridos para las tareas de edición de fotos manualmente intensivas. El software de edición de fotos con IA permite corregir y mejorar las imágenes e incluso crear nuevas sin herramientas complicadas. Al utilizar IA para editar tus fotos, puedes obtener resultados profesionales que normalmente requieren horas en tan sólo unos pocos clics.\r\n\r\nYouCam\r\nEditor de imágenes con inteligencia artificial gratis YouCam Enhance.\r\nEditor de imágenes con inteligencia artificial gratis YouCam Enhance.\r\nEnhance YouCam Enhance es otra herramienta popular y efectiva para retoques fotográficos sencillos. Aunque cuenta con una aplicación dedicada para dispositivos iOS, los usuarios de Android deberán utilizar la aplicación web.\r\n\r\nUna vez que subes una foto, automáticamente añade una marca de agua en la parte inferior izquierda y te permite usar un deslizador para ver la diferencia entre la captura de pantalla mejorada y tu original. Puedes acercar o alejar la imagen, pero eso es todo.\r\n\r\nYouCam Enhance no te da controles adicionales ni te permite jugar con configuraciones específicas. Sin embargo, si necesitas una herramienta sencilla para mejorar el brillo y la nitidez de una imagen, esta es una buena opción.\r\n\r\nLas herramientas de edición de fotos basadas en IA están revolucionando el campo de la edición de imágenes, permitiendo a cualquier persona mejorar sus fotos en pocos clics. Así que, ¡empieza a explorar!', 'https://noticias-ai.com/wp-content/uploads/2023/05/3-herramientas-para-editar-imagenes-gratis-online-1024x683.webp', 'descubre-3-nuevas-herramientas-de-edicion-de-fotos-con-inteligencia-artificial-gratuitas-online', '2023-07-05 11:28:45', '2023-07-05 18:02:22'),
(7, 'Estas empresas españolas han impuesto restricciones al uso de ChatGPT e IA', 'Empresas IA', 'Las empresas españolas BBVA y Red Eléctrica han impuesto restricciones en el uso de la herramienta de inteligencia artificial (IA) ChatGPT, según un video publicado por RTVE. La medida se ha tomado para evitar posibles filtraciones de datos, ciberataques y la difusión de información incorrecta que podría afectar la credibilidad, reputación y causar problemas legales.\r\n\r\nBBVA y Red Eléctrica toman medidas preventivas\r\n\r\nBBVA ha prohibido a sus empleados el uso libre de ChatGPT, permitiendo su uso discrecional con cuentas corporativas solo en casos específicos donde se ve utilidad y no se presenta riesgo. De manera similar, Red Eléctrica también ha prohibido su uso por parte de los empleados para evitar fugas de datos y está trabajando en una regulación interna de las pautas de uso.\r\n\r\nEl equilibrio entre seguridad y potencial\r\n\r\nSin embargo, los expertos advierten que restringir demasiado el uso de esta herramienta puede privar a las empresas de su gran potencial. La inteligencia artificial, y en particular las tecnologías de procesamiento de lenguaje natural como ChatGPT, tienen el potencial de mejorar la eficiencia y la productividad en una variedad de aplicaciones empresariales. Estas pueden incluir la automatización de tareas de servicio al cliente, la generación de informes y análisis, y la asistencia en la toma de decisiones basada en datos.\r\n\r\nInvestigación de la Agencia Española de Protección de Datos\r\n\r\nLa Agencia Española de Protección de Datos (AEPD) también ha iniciado una investigación preliminar sobre el posible incumplimiento de la normativa de protección de datos por parte de ChatGPT, una tecnología desarrollada por la empresa estadounidense OpenAI. Esta investigación se suma a un escrutinio global creciente de los sistemas de inteligencia artificial y su cumplimiento con las normativas de privacidad y protección de datos.', 'https://noticias-ai.com/wp-content/uploads/2023/06/Logo-de-BBVA-en-una-de-sus-oficinas.webp', 'estas-empresas-espanolas-han-impuesto-restricciones-al-uso-de-chatgpt-e-ia', '2023-07-05 11:46:58', '2023-07-05 11:46:58'),
(8, 'Merlin: Descubre la extensión basada en GPT-4 que mejora la experiencia navegando la web', 'Herramientas AI', 'La extension Merlin, una innovadora extensión de Chrome basada en la tecnología GPT-4, está cambiando la forma en que los usuarios interactúan con sus sitios web favoritos, incluyendo Google Search, Youtube, Gmail, LinkedIn y Substack. Este asistente virtual, alimentado por inteligencia artificial (IA), ha sido diseñado para maximizar la productividad y eficiencia en línea.\r\n\r\nLa esencia de Merlin extension radica en su capacidad para facilitar el acceso a ChatGPT, una avanzada función de procesamiento de lenguaje natural desarrollada por OpenAI. Con solo seleccionar contenido en línea y hacer clic en los comandos Cmd+M (Mac) o Ctrl+M (Windows), los usuarios pueden obtener respuestas de ChatGPT en cualquier sitio web, desde blogs y foros hasta portales de noticias y redes sociales.\r\n\r\nPero Merlin Chatgpt extension no se limita a ofrecer respuestas de IA. Una de sus características más destacadas es la capacidad de resumir vídeos de Youtube con un solo clic. Imagina poder obtener un resumen conciso de cualquier vídeo de Youtube en tan solo 15 segundos, ahorrando tiempo y esfuerzo en recopilar información valiosa.\r\n\r\nAdemás, Merlin puede proporcionar respuestas de ChatGPT a tus consultas de Google directamente en la página de resultados, eliminando la necesidad de explorar múltiples enlaces y anuncios. Esta característica tiene el potencial de revolucionar las búsquedas en línea, haciendo que la información sea más accesible y relevante para los usuarios.\r\n\r\nLos blogs largos y detallados ya no son un problema con Merlin. Esta extensión puede resumir los puntos clave de cualquier blog de Medium o Substack, permitiendo a los usuarios captar rápidamente la esencia de los artículos sin tener que leerlos en su totalidad.\r\n\r\nEn el ámbito del correo electrónico, Merlin extension chrome se presenta como un asistente eficaz. Puede generar respuestas rápidas y efectivas para correos electrónicos, reduciendo el tiempo que los usuarios dedican a redactar respuestas y mejorando su productividad.\r\n\r\nLas redes sociales también se benefician de la incorporación de la extension de Chrome Merlin. La extensión puede generar respuestas ingeniosas, divertidas y de apoyo para cualquier publicación en Twitter o Linkedin, mejorando el compromiso social y la presencia en línea de los usuarios.\r\n\r\nPor último, pero no menos importante, Merlin chrome extension ofrece la posibilidad de automatizar tareas repetitivas al permitir a los usuarios guardar sus indicaciones frecuentes. Esta característica puede ser un verdadero cambio de juego para aquellos que buscan optimizar su flujo de trabajo y mejorar su eficiencia.\r\n\r\nEn resumen, Merlin ai es más que una simple extensión de Chrome; es una poderosa herramienta de IA que puede mejorar significativamente la experiencia de los usuarios en Internet. Para más información o descargar Merlin, se puede visitar getmerlin.in o merlin.foyer.work.', 'https://noticias-ai.com/wp-content/uploads/2023/05/Imagen-de-la-pagina-Merlin-extension-para-Goolge-Chrome-que-usa-chatGPT-en-la-web.webp', 'merlin-descubre-la-extension-basada-en-gpt-4-que-mejora-la-experiencia-navegando-la-web', '2023-07-05 12:04:58', '2023-07-05 12:04:58'),
(9, 'La inteligencia artificial y blockchain: la combinación perfecta para el futuro de las finanzas', 'Noticias AI', 'El mercado de la inteligencia artificial en el blockchain está en constante crecimiento y se espera que alcance los $973.6 millones de dólares para el 2027, según un informe de Fortune Business Insights. A pesar de la preocupación de algunos expertos sobre los riesgos de la inteligencia artificial, la industria de criptomonedas se encuentra en pleno auge y muchos proyectos emergentes están integrando esta tecnología en sus sistemas.\r\n\r\nUn ejemplo es Blocktrace, una empresa con sede en Austin que se especializa en forense y análisis blockchain, que utiliza la inteligencia artificial para acelerar el proceso de análisis y facilitar la identificación de tendencias y anomalías en la cadena de bloques. Además, la empresa ha desarrollado un chatbot de inteligencia artificial llamado Robby the Robot para interactuar con los datos de la cadena de bloques de Bitcoin.\r\n\r\nOtro proyecto interesante es SingularityNET, una plataforma descentralizada que utiliza tecnología blockchain para permitir que los desarrolladores de inteligencia artificial compartan y monetizen sus algoritmos. De esta manera, es posible crear aplicaciones descentralizadas basadas en la IA que se pueden utilizar en diferentes industrias como finanzas, salud y transporte.\r\n\r\nFetch.ai, por su parte, es una plataforma descentralizada que utiliza algoritmos de aprendizaje automático e inteligencia artificial para crear agentes económicos autónomos. Con tokens FET, los usuarios pueden construir y desplegar sus propios gemelos digitales en la red, acceder a utilidades basadas en aprendizaje automático y realizar diferentes tareas como análisis de datos, predicción de mercados y gestión de la cadena de suministro.\r\n\r\nOtro proyecto destacado es Artificial Liquid Intelligence, una plataforma descentralizada que emplea tecnología blockchain e inteligencia artificial para establecer un mercado de datos. Esto permite que los propietarios de datos puedan monetizarlos mientras mantienen la autoridad sobre la privacidad y la seguridad. La plataforma funciona con el token ALI.\r\n\r\nPor último, iExec es una plataforma de computación en la nube descentralizada que utiliza tecnología blockchain e inteligencia artificial para proporcionar un entorno seguro para ejecutar aplicaciones descentralizadas que requieren gran capacidad de cómputo. Los desarrolladores pueden monetizar sus recursos informáticos y ofrecer alternativas a los servicios de computación en la nube tradicionales.\r\n\r\nEn resumen, estos proyectos son solo algunos ejemplos del potencial de la inteligencia artificial en la industria de las criptomonedas y su capacidad para revolucionar el mundo digital. A medida que la tecnología sigue avanzando, es probable que surjan más iniciativas y soluciones innovadoras en el futuro.', 'https://noticias-ai.com/wp-content/uploads/2023/05/Proyectos-de-inteligencia-artificial-en-criptomonedas.webp', 'la-inteligencia-artificial-y-blockchain-la-combinacion-perfecta-para-el-futuro-de-las-finanzas', '2023-07-05 12:14:12', '2023-07-05 12:14:12'),
(10, 'SK Telecom se une a cuatro empresas de IA para impulsar la transformación digital y la innovación', 'Empresas IA', 'SK Telecom (SKT), la principal empresa de telecomunicaciones de Corea del Sur, está dando pasos significativos para reforzar su posición en el ecosistema global de Inteligencia Artificial (IA). Recientemente, la compañía organizó una reunión en su sede de Silicon Valley con los CEOs de cuatro nuevos socios de IA: CMES, MakinaRocks, Scatter Lab y FriendliAI.\r\n\r\nAlianzas estratégicas para una transformación impulsada por la IA\r\nSKT ha estado promoviendo activamente la transformación a través de la IA mediante alianzas estratégicas y colaboraciones con diversas empresas de IA. Durante el MWC 2023, la compañía anunció asociaciones con siete empresas de IA: SAPEON, Bespin Global, Moloco, Konan Technology, Swit, Phantom AI y Tuat.\r\n\r\nUn camino hacia el liderazgo en la industria de la IA\r\nEn la reunión, el CEO de SKT, Ryu Young-sang, delineó la visión de la compañía en IA y discutió sus planes de negocio con los socios de IA. Los ejecutivos de SKT y sus socios de IA participaron en discusiones en profundidad sobre las principales tendencias globales de IA, los últimos logros tecnológicos, los proyectos de I+D en curso y las oportunidades globales de negocio e inversión.\r\n\r\nColaboración con CMES: Innovación en Robótica\r\nUna de las discusiones notables tuvo lugar entre SKT y CMES, una empresa de robótica impulsada por IA. Ambas empresas intercambiaron puntos de vista e ideas sobre el desarrollo de planes de precios para «Robot como Servicio (RaaS)« y modelos de negocio basados en suscripciones para RaaS impulsados por IA y adaptados para empresas.\r\n\r\nScatter Lab y la integración de agentes de IA emocionales\r\nAdemás, SKT tiene como objetivo colaborar con Scatter Lab, una reconocida startup de IA conocida por su chatbot Lee Lu-da. La compañía planea integrar un agente de IA emocional en su servicio de IA, ‘A’.\r\n\r\nCreación de sinergias con MakinaRocks y FriendliAI\r\nSKT también discutió estrategias para la creación de sinergias con MakinaRocks, una startup especializada en soluciones de IA industrial, y FriendliAI, una startup que proporciona una plataforma para el desarrollo de modelos generativos de IA. Al unir fuerzas, las empresas aspiran a establecer una posición de liderazgo en el mercado global de IA.\r\n\r\nUn futuro brillante en el mercado global de IA\r\nRyu Young-sang, CEO de SKT, comentó: «Ahora, con nuestros socios de IA a bordo, hemos completado el plan para impulsar un nuevo crecimiento en el mercado global\r\n\r\nUn futuro brillante en el mercado global de IA\r\nRyu Young-sang, CEO de SKT, comentó: «Ahora, con nuestros socios de IA a bordo, hemos completado el plan para impulsar un nuevo crecimiento en el mercado global. Trabajaremos juntos para desarrollar diversas oportunidades de cooperación en IA y llevar nuestras tecnologías y servicios de IA al mercado global».\r\n\r\nLiderando el ecosistema global de IA\r\nAl aprovechar la experiencia y las tecnologías de sus socios de IA, SKT está bien posicionada para liderar el ecosistema global de IA y ofrecer soluciones innovadoras de IA al mercado.', 'https://noticias-ai.com/wp-content/uploads/2023/06/sk-telecom-at-vietnam-comm-e1461850713677.jpg', 'sk-telecom-se-une-a-cuatro-empresas-de-ia-para-impulsar-la-transformacion-digital-y-la-innovacion', '2023-07-05 14:47:10', '2023-07-05 14:47:10'),
(12, 'Mistral AI, la startup francesa que desafía a OpenAI con una ronda de financiación semilla de 103 millones de dólares', 'Empresas IA', 'En un mundo donde la inteligencia artificial (IA) está en constante evolución, una startup francesa de apenas cuatro semanas de vida ha logrado recaudar una impresionante ronda de financiación semilla de 113 millones de dólares. Mistral AI, con sede en París, se lanza al ruedo con la ambición de competir contra OpenAI en la construcción, formación y aplicación de grandes modelos de lenguaje y IA generativa.\r\n\r\nUn equipo de expertos al frente\r\nMistral AI ha sido cofundada por exalumnos de Google’s DeepMind y Meta, y se centrará en soluciones de código abierto y en empresas para crear lo que su CEO, Arthur Mensch, considera el mayor desafío actual en el campo de la IA: «Hacer que la IA sea útil». El equipo planea lanzar sus primeros modelos para IA generativa basada en texto en 2024.\r\n\r\nUna ronda de financiación semilla exitosa\r\nLa ronda de financiación ha sido liderada por Lightspeed Venture Partners, con la participación de Redpoint, Index Ventures, Xavier Niel, JCDecaux Holding, Rodolphe Saadé y Motier Ventures en Francia, La Famiglia y Headline en Alemania, Exor Ventures en Italia, Sofina en Bélgica, y First Minute Capital y LocalGlobe en el Reino Unido. Mistral AI también cuenta con el respaldo del banco de inversión francés Bpifrance y del ex CEO de Google, Eric Schmidt.\r\n\r\nUn enfoque en el código abierto\r\nA pesar de que OpenAI tiene la palabra «open» en su nombre, los fundadores de Mistral AI, Mensch, Timothée Lacroix (CTO) y Guillaume Lample (Chief Science Officer), sintieron que el enfoque propietario se estaba convirtiendo en la norma. Por ello, vieron una oportunidad para hacer las cosas de manera diferente. «El código abierto es una parte fundamental de nuestro ADN», señaló Mensch.\r\n\r\nUn futuro prometedor\r\nEs demasiado pronto para hablar de lo que Mistral está haciendo o hará, pero según Mensch, el plan es construir modelos utilizando solo datos públicamente disponibles para evitar problemas legales que otros han enfrentado con respecto a los datos de entrenamiento. Los usuarios también podrán contribuir con sus propios conjuntos de datos. Los modelos y conjuntos de datos serán de código abierto.\r\n\r\nEnfocados en el mercado empresarial\r\nLo que resulta interesante es el enfoque exclusivo de la startup en los clientes empresariales, no en los consumidores, y la idea de que existe un vacío en el mercado para ayudar a esos clientes a descubrir qué necesitan hacer y cómo pueden hacerlo. «En este momento, tenemos pruebas de que la IA es útil en algunos casos», dijo Mensch. «Pero todavía hay demasiados trabajadores en diferentes campos a los que se les pide que sean creativos (con la IA), y necesitamos resolver esto por ellos. Queremos darles herramientas que sean fáciles de usar para crear sus propios productos».\r\n\r\nUn salto de fe en la inversión\r\nPuede parecer un gran salto financiar a una empresa tan joven sin clientes, y mucho menos un producto, a su nombre. Sin embargo, Antoine Moyroud, quien lideró la inversión para Lightspeed, cree que es un salto que vale la pena dar. «Para nosotros en Lightspeed, no trabajamos en aislamiento», dijo en una entrevista. «Tuvimos la oportunidad de ver a varios equipos técnicos fuertes buscando recaudar fondos para construir LLM en India, Estados Unidos y Europa. Pero lo que faltaba era que, aunque eran fuertes técnicamente, no habían pensado en los efectos de segundo orden de LLM».\r\n\r\nEl futuro de Mistral AI\r\nEl hecho de que las startups de IA estén logrando que los capitalistas de riesgo abran sus chequeras es notable. Los Googles, Apples, Metas, Amazons, Microsofts, etc. del mundo definitivamente harán sus jugadas en este espacio, pero el hecho de que se estén formando startups y estén encontrando reclutas dispuestos es una señal de que el juego aún no ha terminado.\r\n\r\nUn mistral es un viento del norte que sopla por Europa, y generalmente cuando sopla es una señal de buen tiempo en los días siguientes. La startup puede estar esperando el mismo efecto aquí. Al final del día, Mensch cree que debe haber un esfuerzo creíble de todo el mundo para construir y tomar parte de la propiedad de cómo se desarrollará la IA. Este es el juego de Mistral para darle a Francia una oportunidad en eso.\r\n\r\nSu plan es utilizar la financiación para reunir lo que describe como un «equipo de clase mundial» creando «los mejores modelos de código abierto», dijo, y definitivamente ahora tendrá algo de dinero para hacer precisamente eso.', 'https://noticias-ai.com/wp-content/uploads/2023/06/Imagen-del-equipo-principal-de-Mistral-AI-1024x661.webp', 'mistral-ai-la-startup-francesa-que-desafia-a-openai-con-una-ronda-de-financiacion-semilla-de-103-millones-de-dolares', '2023-07-06 10:11:58', '2023-07-06 18:19:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
