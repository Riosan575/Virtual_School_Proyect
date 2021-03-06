USE [Virtual_School]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](500) NULL,
	[Correo] [nvarchar](500) NULL,
	[Contraseña] [nvarchar](500) NULL,
	[VerfContraseña] [nvarchar](500) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CursoId] [int] NULL,
	[Comentario] [nvarchar](500) NULL,
	[UsuarioId] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContenidoCurso]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContenidoCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCurso] [int] NULL,
	[Aprender] [nvarchar](4000) NULL,
	[Contenido] [nvarchar](4000) NULL,
	[Requisitos] [nvarchar](4000) NULL,
	[Descripción] [nvarchar](4000) NULL,
	[ParaQuienEs] [nvarchar](4000) NULL,
 CONSTRAINT [PK_ContenidoCurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreProfesor] [nvarchar](500) NULL,
	[NombreCurso] [nvarchar](500) NULL,
	[Detalle] [nvarchar](500) NULL,
	[Caratula] [nvarchar](500) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seccion]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Secciones] [nvarchar](500) NULL,
 CONSTRAINT [PK_Seccion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temas]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Videos] [nvarchar](4000) NULL,
	[Video1] [nvarchar](4000) NULL,
	[CursoId] [int] NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemaSeccion]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemaSeccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCurso] [int] NULL,
	[IdSeccion] [int] NULL,
	[TemaSeccions] [nvarchar](500) NULL,
 CONSTRAINT [PK_TemaSección] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TomarCurso]    Script Date: 21/5/2021 10:44:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TomarCurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdCurso] [int] NULL,
 CONSTRAINT [PK_TomarCurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (1, N'Angel', N'angel_12@gmail.com', N'CxsY3LVBddDJGvfcdh0oupov7pAVTbhJDoouQGXll6Hqxev6Qd8B19CMYv2hHYQts0wsbR8rtxmqivftmfrbJw==', N'CxsY3LVBddDJGvfcdh0oupov7pAVTbhJDoouQGXll6Hqxev6Qd8B19CMYv2hHYQts0wsbR8rtxmqivftmfrbJw==')
INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (2, N'Luis', N'Luis@gmail.com', N'vEGu7Dlqe662ZZ18e8eRpByM3Udj/BUJ0ISg25RJXXPVzHJuFOXTJVKn7BQMhbstJU9tiF9VULMertuVriFohg==', N'vEGu7Dlqe662ZZ18e8eRpByM3Udj/BUJ0ISg25RJXXPVzHJuFOXTJVKn7BQMhbstJU9tiF9VULMertuVriFohg==')
INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (3, N'Benja', N'benja@gmail.com', N'ZDDu19anvU438KhcQ8ZxM/8PTg1gUwGIaZe18XcUTicw12nBH0epXVGNdY3h0ko1vHSUbtcI3EHXNWcv1PJQlQ==', N'ZDDu19anvU438KhcQ8ZxM/8PTg1gUwGIaZe18XcUTicw12nBH0epXVGNdY3h0ko1vHSUbtcI3EHXNWcv1PJQlQ==')
INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (4, N'Milton', N'milton@gmail.com', N'/VbStTBr86eukTBKXTkivdL1np5MFXFujz9CHUb2C7ZIcJjNTqF9VHFXzTxwcFFw7i4lfCLhAMTrBLYZOQzE0w==', N'/VbStTBr86eukTBKXTkivdL1np5MFXFujz9CHUb2C7ZIcJjNTqF9VHFXzTxwcFFw7i4lfCLhAMTrBLYZOQzE0w==')
INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (5, N'Joao', N'Joao@gmail.com', N'8hzn2+m7bmZur80tY5mQYtolXf/Vb9Y8rI80vhk7a3UpXl2psxqZBWLeMRWt3I76IRuSVcz/SWPfR1tOsrEQWQ==', N'8hzn2+m7bmZur80tY5mQYtolXf/Vb9Y8rI80vhk7a3UpXl2psxqZBWLeMRWt3I76IRuSVcz/SWPfR1tOsrEQWQ==')
INSERT [dbo].[Account] ([Id], [Usuario], [Correo], [Contraseña], [VerfContraseña]) VALUES (6, N'pepito', N'pepito@gmail.com', N'CCs9b7rW2xlU/Oa7L4j/0PEc/kyosG/uUC5r9fN+KLFBBv7Y8OSA/wJiRLmaG9hOkeCkKHwcH7obZkXwrzrbmg==', N'CCs9b7rW2xlU/Oa7L4j/0PEc/kyosG/uUC5r9fN+KLFBBv7Y8OSA/wJiRLmaG9hOkeCkKHwcH7obZkXwrzrbmg==')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ContenidoCurso] ON 

INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (1, 1, N'● Estrategias Avanzadas de Marketing en Redes Sociales', N'● Sección 1: Introducción
 1.- Capacitación completa PASO a PASO
 2.- Grupos de nicho en Facebook
 3.- Plataformas de conversaciones en línea y Foros de nicho específicos (Reddit.com)
 4.- Estrategia de YouTube
 5.- Estructurar el contenido de forma educativa y atractiva', N'● Cuenta en plataforma Reddit
		● Cuenta en Facebook
		● Cuenta en YouTube', N'Sistema paso a paso para captar clientes en las redes sociales dentro de 48 horas o menos.

Descubrir exactamente cómo utilizar los grupos de Facebook, nichos en los foros, los tableros de anuncios en línea, y encontrar en YouTube consultoría y asesoría en tan sólo 48 horas.

“¡Las redes sociales están muriendo!”.

En el mundo de internet-marketing en las calles, ya no puedes captar nuevos cliente. Simplemente hace mucho RUIDO!, y nuestros clientes potenciales no pueden diferenciar nuestras promociones de esos molestosos y ruidosos spam que llegan e invaden de todas las direcciones de redes sociales!.

Los especialistas en Marketing digital están luchando, y gastando muchísimo dinero en publicidad, pero no ven resultados.

Todos están gritando y pidiendo atención, ¡pero nadie les presta atención!

Aquí está la verdad de la que rara vez se habla…

Es FÁCIL captar clientes cuando sigues estas reglas:

Regla 1: Haz lo que otros especialistas en marketing digital no están haciendo.

Regla 2: Entrega VALOR que tus potenciales clientes esperan, en lugar de tratar de PROMOVER y VENDERLES.

Regla 3: Posiciónate como el que resuelve el problema, no como otros “marketeros” or “freelancer”.

En el curso de “Social Media Marketing for Picking Up clientes”, aprenderás paso a paso como implementar estas reglas y atraer a los clientes específicos e interesados.

Lograrás posicionarte efectivamente como el “solucionador de problemas”, para evitar todas las objeciones de ventas típicas como:

“Es demasiado caro”, “¿cómo sé que funciona?, ó “lo pensaré...”.

Aquí hay algunas cosas que descubriremos en el curso:

▪️Los mitos y errores más comunes del marketing en redes sociales que se enseñan como “mejores prácticas”.

▪️Estudios de casos de éxito paso a paso sobre cómo se utilizó Facebook, los nichos en foros, y YouTube para adquirir más de 400 clientes de pago hasta la fecha.

▪️Cómo utilizar grupos privados de Facebook para “presentar” su oferta de servicios sin ser tan insistente o molesto.

▪️El marco de autoridad de AMOCh: un sistema de 4 pasos que le permite demostrar experiencia e invitar a la búsqueda de sus clientes.

▪️Como usar publicaciones simples de Reddit para que los potenciales clientes le envíen correos electrónicos con preguntas sobre su servicio.

▪️Los 4 componentes de un vídeo Sticky de YouTube, y como secuenciarlos en el orden más efectivo.

▪️Como crear vídeos simples que atraigan a los clientes de sus sueños y hagan que ellos se comuniquen con usted.

▪️“¡No necesitas miles de seguidores!”

Como atraer clientes con YouTube sin un seguimiento masivo.

▪️3 Marcos de videos de YouTube que dan valor agregado, que educan y venden al mismo tiempo.

▪️ Como posicionarse como el “solucionador de problemas” para que nunca más tenga que manejar objeciones de ventas.

▪️Que tan baratos “trucos y consejos de marketing” que te hacen parecer un spammer y qué puedes hacer al respecto.

▪️Por qué sus competidores nunca implementarían las estrategias de este curso y como puede beneficiarse usted con el resultado.

¡Nos vemos en el curso!', N'● Este curso es para Freelancers, coaches, consultores or Startups que buscan captar nuevos clientes.
● Este curso NO es para MLMers, spammers or vendedores marketeros aficionados.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (2, 2, N'● Aprenderás las bases de la programación con las diferentes herramientas
	● Aprenderás un conocimiento basado en la experiencia académica universitaria
	● Aprenderás a diseñar tus propios diagramas de flujo en los mejores programas
	● Aprenderás a entender la lógica necesaria de los lenguajes de programación
	● Podrás migrar un diagrama a un lenguaje de programación
	● Plantear un algoritmo para la solución de un problema', N'● Sección 1: Metodología de la Programación
 1.- Bienvenidos
 2.- Metas
 3.- Universidad
 4.- ¿Qué es la programación?
 5.- Ventajas de estudiar programación
 6.- Lenguajes de programación
 7.- Áreas del programador
 8.- Examen

● Sección 2: Diagramas de Flujo
 9.- ¿Qué es un algoritmo?
 10.- Características de los algoritmos
 11.- ¿Qué es un diagrama de flujo?
 12.- Símbolos utilizados en los diagramas de flujo
 13.- Examen

● Sección 3: Introducción a PSeInt
 14.- ¿Qué es un pseudocódigo?
 15.- ¿Qué es PSeInt?
 16.- Ejercicio
 17.- Variables y tipos de datos
 18.- Leer o asignar valores
 19.- Expresiones y operadores
 20.- Operaciones
 21.- Bucle o ciclos
 22.- Sentencias o estructuras de control de flujo
 23.- Diagrama de flujo en pseint
 24.- Código del ejercicio
 25.- Más ejercicios

● Sección 4: Introducción a DFD
 26.- ¿Qué es un diagrama de flujo de datos? (DFD)
 27.- Descargar
 28.- Asignar variables
 29.- Mostrar mensajes
 30.- Ciclos para
 31.- Realizar operaciones
 32.- Decisión
 33.- DFD del ejercicio

● Sección 5: Programación en C++
 34.- Migración
 35.- Código del Ejercicio
 36.- Recursos', N'● Se necesitan algunos programas como PSeInt, DFD y Code::Blocks
		● Conocimientos básicos en el manejo del sistema operativo windows
		● Ganas de aprender a diseñar diagramas de flujo
		● Algunos conocimientos previos de la programación no es necesario completamente pero tienes una mejor visión del tema', N'Dirigido para principiantes que quieren aprender a crear algoritmos en PSeInt para migrar su contenido a diagramas de flujo y después a un lenguaje de programación conociendo sus fundamentos previos y entender el manejo de los programas.

● Conocerás la metodología para resolver problemas usando la programación en un ambiente institucional educativo y laboral 
● Conceptos básicos de la programación
● Diseñaras tus primeros algoritmos en PSeInt
● Conoce el software que crea diagramas de flujo funcionales como lo es DFD

Temario Principal

1. Bienvenidos
2. Metas
3. Universidad
4. Ventajas de estudiar programación
5. Lenguajes de programación
6. ¿Qué es un algoritmo?
7. Caracteristicas de los algoritmos
8. ¿Qué es un diagrama de flujo?
9. Símbolos utilizados en los diagramas de flujo
10. ¿Qué es un pseudocódigo?
11. ¿Qué es PSeInt?

Definiciones

● Una variable es un espacio de la memoria donde guardar información
● La información que se guarda en la variable puede ser de diversos tipos y puede ir cambiando a lo largo del programa
● Cada variable tiene un tipo de dato asociado, por lo que siempre guardará el mismo tipo de dato
● Una variable que guarde un número no podrá guardar después otro tipo que no sea un número
● Las expresiones son combinaciones de constantes, variables y operadores que nos permiten trabajar con los datos
● Dependiendo de los operadores utilizados en ellas, pueden ser de varios tipos: aritméticas, relacionales, lógicas, alfanuméricas y de asignación', N'● Principiantes
● Técnicos
● Universitarios')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (3, 3, N'● En este curso aprenderás C# con .net core desde cero hasta lo mas avanzado de este lenguaje de programacion
	● Aprenderemos a programar en el lenguaje de programacion de C# con POO
	● En en el trascurso del curso se irán creando aplicaciones con todo lo que se este aprendiendo en curso
	● Realizaremos conexiones de datos a los servidores de de MySQL y SQL Server
	● Al final de este curso tendrás los conocimiento básicos sobre el lenguaje de programacion de C# para desarrollar tu aplicaciones
	● El curso es principalmente para estudiantes que desean aprender C# desde cero', N'● Sección 1: Introducción al curso de C#
 1.- Aplicaciones que se pueden crear con el lenguaje de programación de C#
 2.- La ID Visual Studio y los entornos de desarrollo que se utilizan
 3.- Creando el proyecto en Visual Studio

● Sección 2: Tipos de variables en C#
 4.- Variables de tipo string, double, float, decimal, int
 5.- Variables de tipo bool, char y estructuras para almacenar datos

● Sección 3: Tipos de operadores en C#
 6.- Operadores aritméticos
 7.- Operadores de asignación
 8.- Operadores de comprobación de tipos y relaciones
 9.- Operadores de igualdad

● Sección 4: Estructura condicional en C#
 10.- Estructura if y los operadores condicionales
 11.- Estructura else que acompaña a la estructura if
 12.- Estructuras condicionales anidadas
 13.- El operador condicional

● Sección 5: Tipos de array o arreglos en C#
 14.- Array de tipo string
 15.- Array de tipo int
 16.- Arreglos Multidimensionales

● Sección 6: La estructura bucle ciclo For en C#
 17.- Bucle ciclo For
 18.- La estructura bucle ciclo Foreach

● Sección 7: Ejercicio Triángulo de Pascal en C#
 19.- Triángulo de Pascal

● Sección 8: Estructura condicional switch en C#
 20.- Instrucción de selección switch
 21.- Switch Expressions #1
 22.- Switch Expressions #2

● Sección 9: Las estructuras While and Do While en C#
 23.- La estructura While
 24.- La estructura do While

● Sección 10: Manipulación de String C#
 25.- Inmutabilidad de los objetos String
 26.- Formato de cadenas
 27.- Subcadenas de string
 28.- Iterando la cadena de texto

● Sección 11: La clase StringBuilder para la creación de cadenas en C#
 29.- La clase StringBuilder #1
 30.- La clase StringBuilder #2

● Sección 12: Tipos de métodos en C#
 31.- Modificador private y métodos que no retorna elementos
 32.- Modificador public y métodos que retorna un tipo de dato
 33.- Variables globales y método que retorna datos de tipo string
 34.- Método constructor de la clase
 35.- Leer Mayúsculas And Minúsculas
 36.- Sobrecarga de métodos constructores

● Sección 13: Parámetros de métodos
 37.- Cómo pasar un arreglo de tipo object como parámetro
 38.- Parámetros de métodos palabras clave params, in
 39.- Parámetros de métodos palabras clave ref, out

● Sección 14: Funciones en el lenguaje de programación en C#
 40.- Funciones
 41.- Funciones static
 42.- Datos duplicados en un array

● Sección 15: Palabra clave static en C#
 43.- Variables estáticas
 44.- Métodos estáticos
 45.- Clase estática
 46.- Conversor de velocidades

● Sección 16: Argumentos con nombre y opcionales en C#
 47.- Argumentos opcionales
 48.- Argumentos con nombres
 49.- Palabras claves readonly, const

● Sección 17: Propiedades en C#
 50.- Propiedades #1
 51.- Propiedades #2
 52.- Búsqueda de datos usando colecciones de objetos

● Sección 18: Clase genérica List en C#
 53.- Clase genérica List #1
 54.- Clase genérica List #2
 55.- Clase genérica List #3
 56.- Clase genérica List #4

● Sección 19: Aplicación para crear una lista enlazada
 57.- Creando el método para agregar los nodos en la lista #1
 58.- Creando el método para agregar los nodos en la lista #2
 59.- Agregando datos a los nodos de la aplicación
 60.- Creando el procedimiento para enlistar los nodos de la colección
 61.- Creando los procedimientos para eliminar el primer y último nodo de la lista
 62.- Desarrollando procedimiento para eliminar un nodo de acuerdo a una posición
 63.- Procedimiento para buscar un dato en la lista de nodos
 64.- Procedimientos para sustituir el dato de un nodo en la lista

● Sección 20: Herencia de clases en C#
 65.- Herencia de clases
 66.- Herencia de clases y la palabra protected, base, override, virtual

Y más...', N'● Tener instalado el Visual Studio el más actual
		● No es necesario saber programar ya que en este curso se aprenderá a programar desde cero con C#', N'Hola mi nombre es Alex Pagoada y te invito a que seas parte de este curso donde aprenderemos sobre el lenguaje de programación de .net core con C# , lenguaje que nos permitirá crear diversas aplicaciones multiplataforma ,como aplicaciones de escritorio, aplicaciones web, y aplicaciones móviles y muchas mas aplicaciones , y te garantizo que al final de este curso tendrás los conocimientos básicos para crear tus aplicaciones usando este grandioso lenguaje de programación de C# , y espero que este curso sea de su agrado, y gracias por ser parte de este gran curso y también que Dios derrame muchas bendiciones en tu vida.', N'● Todo aquel quiera aprender a programar con el lenguaje de programación de C#')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (4, 4, N'● Manejo de variables
	● Funciones y Funciones de Flecha
	● Condiciones y Bucles
	● Conceptos básicos JS
	● Arreglos y objetos con ejercicios prácticos', N'● Sección 1: Introducción
 1.- Introducción
 2.- ¿Cómo ejecutaremos código 

● Sección 2: Primeros pasos
 3.- Variables
 4.- Tipos de variables
 5.- Variables strings y sus métodos
 6.- Operadores

● Sección 3: Funciones
 7.- Funciones
 8.- Funciones de flecha - Arrow functions
 9.- Funciones numéricas

● Sección 4: Arrays, Objetos y JSON
 10.- Objetos
 11.- Arrays
 12.- JSON

● Sección 5: Condicionales y Estructuras Repetitivas
 13.- If else
 14.- Switch
 15.- For /ForEach
 16.- Map y Reduce - Curso JS 2018

● Sección 6: Presentando nuevo curso JS
 17.- Introducción
 18.- Entendiendo el asincronismo
 19.- Introducción al nuevo curso JS

● Sección 7: Librerías JS que puedo enseñarte
 20.- Presentación curso de React Native
 21.- Introducción
 22.- Creando nuestro server con Node JS y express
 23.- Peticiones HTTP
 24.- ¿Por qué React Native? ¿Puedo usar otro framework o librería frotend JS?', N'● Programación Básica
		● Manejo básico de al menos 1 lenguaje de programación', N'Javascript gratis - 2020. ¿Sabías que muchos influencers y startup de software, recomiendan aprender Javascript este año? ¡No te quedes atrás!. En este curso aprenderás los fundamentos necesarios para empezar a programar con Javascript y estar en la capacidad de manejar librerías y frameworks muy demandadas en el mercado, como lo son: React js, Vue js, Node js, Express js, React Native ¡y más!. El mundo JS es enorme y muy popular entre la comunidad de programadores latinoamericana y de todo el mundo.', N'● Programadores principiantes o sin ningún conocimiento de javascript')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (5, 5, N'● Te enseñare a usar el IDE Jupyter.
	● A programar en Python version 3.x
	● Cadenas de Caracteres en Python.
	● Listas en Python.
	● Operadores lógicos en Python.
	● Operadores Racionales en Python.
	● Expresiones anidadas y de asignación en Python.
	● Estructuras de control como if, while y for en Python.
	● Tuplas, Conjuntos, Diccionarios, Pilas y Colas en Python.
	● Entradas por teclado y Salidas por pantalla en Python.
	● Funciones con retorno y envío de valores, todos los Argumentos en Python.
	● Funciones Recursivas e integradas en Python.
	● Manejo de Errores y Excepciones en Python.
	● Programacion orientada a Objetos, Clases, Herencia, Atributos y Métodos, Encapsulamiento en Python.', N'● Sección 1: Introducción
 1.- Sobre el Curso
 2.- Conoce mejor a Tu profesor

● Sección 2: Entorno de Trabajo
 3.- Instalación de Jupyter
 4.- Cómo usar Jupyter y código del curso (IMPORTANTE VER ESTA CLASE)

● Sección 3: Primeros Pasos
 5.- Primer contacto con Python
 6.- Cadena de Caracteres (parte 1)
 7.- Cadena de caracteres con variables operaciones (parte 2)
 8.- Índice de cadenas
 9.- Listas
 10.- Ingresamos datos por teclado

● Sección 4: Operadores relacionales, lógicos y asignación. Expresiones Anidadas
 11.- Operadores Lógicos
 12.- Operadores Relacionales
 13.- Expresiones anidadas y operadores de asignación 

● Sección 5: Estructuras de Control
 14.- If
 15.- if else y elif
 16.- While
 17.- Práctica donde aplicamos todo lo aprendido
 18.- For

● Sección 6: Tuplas, Diccionarios, Conjuntos, Pilas y Colas
 19.- Tuplas
 20.- Conjuntos
 21.- Diccionario
 22.- Pilas
 23.- Colas

● Sección 7: Entradas por Teclado y Salidas por Pantalla
 24.- Entradas por teclado
 25.- Salida por pantalla

● Sección 8: Funciones
 26.- Funciones
 27.- Retorno y envío de valores
 28.- Funciones argumentos parte 1
 29.- Funciones argumentos parte 2
 30.- Funciones argumentos parte 3
 31.- Funciones recursivas e integrada

● Sección 9: Errores y Excepciones
 32.- Errores
 33.- Excepciones múltiples
 34.- Excepciones múltiples e invocación de excepciones

● Sección 10: POO (Programación Orientada a Objetos)
 35.- POO objetos y clases
 36.- Atributos y Métodos de una clase (Parte 1)
 37.- Atributos y Métodos de una clase (Parte 2)
 38.- Clases - Métodos Especiales
 39.- La utilidad de usar objetos embebidos
 40.- Encapsulamiento
 41.- Herencia
 42.- Clases heredadas y polimorfismo
 43.- Herencia Múltiple

● Sección 11: Ejercicios
 44.- Ejercicios a realizar

● Sección 12: Bonus Extra
 45.- Clase Extra', N'● Contar con internet y computadora.
		● Tener intenciones de aprender python3.', N'Python es Hoy uno de los lenguajes más utilizados por Excelencia.

Esto se debe por su simpleza al momento de Desarrollar aplicaciones.

Por su capacidad de procesamiento a altas velocidades con grandes volúmenes de información.

Es un increíble lenguaje con el cual si no sabes programar, podrás aprender.

Y si ya sabes desarrollar, te aconsejo aprenderlo ya que en el mercado cada vez se solicitan más desarrolladores en Python.

Cree este curso de forma Gratuita para brindarle la oportunidad a todas las personas que puedan

Aspirar al trabajo que desean, o mejorar sus ingresos con un aumento de salario.

Python se utiliza para muchisimas cosas como Machine Learning, Data Science, Inteligencia Artificial.

En este curso te acompañare en el proceso por el cual aprenderás las bases del lenguaje, para luego determinar qué camino quieres seguir.

Te invito que me acompañes a conocer este Gran Lenguaje!

Nos vemos dentro del curso!

Te dejo un Abrazo Digital!.-', N'● Toda persona que desee Programar.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (6, 6, N'● Tener los fundamentos del lenguaje de programación con Java
	● Conocerá la sintaxis básica del lenguaje Java
	● Manejará el concepto de Variables y Operadores en Java
	● Estudiaremos la Programación Orientada a Objetos con Java
	● Aprenderá las Sentencias de Control y Ciclos en Java
	● Veremos el concepto de Funciones con Java
	● Estudiaremos el concepto de Herencia en Java
	● Aprenderemos a utilizar Arreglos en java
	● Manejaremos el concepto de Matrices en Java
	● Aprenderemos a Diseñar Clases en Java
	● Realizaremos una aplicación final con todo lo aprendido en el curso', N'● Sección 1: Fundamentos Java: Temario General y Recursos del Curso
 1.- Curso Fundamentos de Java - Temario

● Sección 2: Fundamentos Java: Introducción a Java
 2.- Lección: Introducción a los Fundamentos de Java
 3.- Lección: Características de Java
 4.- Lección: Evolución de Java
 5.- Lección: Java y la Industria de Software
 6.- Lección: Máquina Virtual de Java (JVM)

● Sección 3: Instalación Java 13 y Apache Netbeans
 7.- Ejercicio: Instalación del JDK de Java 13
 8.- Ejercicio: Instalación de Apache Netbeans
 9.- Ejercicio: Hola Mundo con Apache Netbeans

● Sección 4: Variables en Java
 10.- Lección: Manejo de Variables en Java
 11.- Lección: Manejo Básico de Cadenas (Strings)
 12.- Ejercicio: Variables en Java
 13.- Ejercicio: Concatenación con Java
 14.- Ejercicio: Reglas para definir una variable en Java
 15.- Ejercicio: Caracteres Especiales con Java
 16.- Ejercicio: Clase Scanner en Java

● Sección 5: Tipos Primitivos en Java
 17.- Ejercicio: Tipos Primitivos tipos Integers
 18.- Ejercicio: Base Decimal, Hexadecimal y Octal
 19.- Ejercicio: Tipos Primitivos tipos Flotantes
 20.- Ejercicio: Tipos Primitivos tipo char
 21.- Ejercicio: Tipos Primitivos tipo boolean
 22.- Ejercicio: Conversión de Tipos Primitivos en Java

● Sección 6: Operadores en Java
 23.- Lección: Operaores en Java
 24.- Ejercicio: Operadores Aritméticos en Java
 25.- Ejercicio: Operadores de Asignación en Java
 26.- Ejercicio: Operadores Unarios en Java
 27.- Ejercicio: Operadores de Igualdad y Relacionales en Java
 28.- Ejercicio: Operadores Condicionales en Java
 29.- Ejercicio: Operador Ternario en Java
 30.- Ejercicio: Precedencia de Operadores en Java

● Sección 7: Sentencias de Control
 31.- Lección: Setencia de control if
 32.- Lección: Sentencia de control switch
 33.- Lección: Sentencias de control - Más Operadores
 34.- Ejercicio: Uso de if-else en Java
 35.- Ejercicio: Cálculo estación del año con if-else
 36.- Ejercicio: Sentencia Switch en Java
 37.- Ejercicio: Cálculo estación del año con Switch

● Sección 8: Ciclos en Java
 38.- Lección: Ciclo While
 39.- Lección: Ciclo Do While
 40.- Leccción: Ciclo for
 41.- Ejercicio: Ciclo While y do While
 42.- Ejercicio: Ciclo For en Java
 43.- Ejercicio: Palabras Break y Continue en Java
 44.- Ejercicio: Uso de Etiquetas (Labels) en Java

● Sección 9: Creación de Clases en Java
 45.- Lección: Creación de Clases en Java
 46.- Ejercicio: Creación de Clases en Java

● Sección 10: Creación de Objetos en Java
 47.- Lección: Creación de Objetos en Java
 48.- Ejercicio: Creación de Objetos en Java

● Sección 11: Métodos en Java
 49.- Lección: Creación de Métodos en Java
 50.- Ejercicio: Creación de Métodos en Java

● Sección 12: Constructores en Java
 51.- Lección: Constructores en Java
 52.- Ejercicio: Constructores en Java
 53.- Ejercicio: Constructores en Java - parte 2
 54.- Ejercicio: Constructores en Java - parte 3

● Sección 13: Alcance de Variables en Java
 55.- Lección: Alcance de Variables en Java
 56.- Ejercicio: Alcance de Variables y palabra this en Java
 57.- Laboratorio: Proyecto Caja

● Sección 14: Memoria Stack y Heap en Java
 58.- Lección: Memoria Stack y Heap en Java

● Sección 15: Paso por Valor y por Referencia en Java
 59.- Lección: Paso por Valor y por Referencia en Java
 60.- Ejercicio: Paso por Valor en Java
 61.- Ejercicio: Paso por Referencia en Java

● Sección 16: Uso de la palabra return en Java
 62.- Lección: Uso de la palabra return en Java
 63.- Ejercicio: Return usando Tipos primitivos y palabra void
 64.- Ejercicio: Return usando Tipos Object

● Sección 17: Uso de la palabra this en Java
 65.- Lección: Uso de la palabra this
 66.- Ejercicio: Uso de la palabra this en Java

● Sección 18: Uso de la palabra null en Java
 67.- Lección: Uso de la palabra null en Java
 68.- Ejercicio: Uso de la palabra null en Java

Y más...', N'● Conocimientos básicos de uso de PC
		● Manejo básico de algún sistema operativo como Windows, Mac o Linux
		● No se requiere saber programar, empezaremos desde cero!!!
		● La actitud y ganas para empezar a codificar y aprender Java de una vez por todas desde cero!!!', N'Este es el mejor curso para aprender a programar en Java en Español desde cero y sin ningún tipo de experiencia en este fabuloso lenguaje de programación. Este es el primero curso donde estudiaremos los Fundamentos de Java, y te llevaremos paso a paso hasta que adquieras las bases del lenguaje Java y así puedas empezar a estudiar temas más avanzados de Java.

El contenido está dividido en niveles perfectamente estructurados, cada nivel apoyado del anterior, con el objetivo de ir agregando conocimiento Java de manera incremental y así te puedas enfocar en dominar los temas poco a poco y de manera paulatina. Así asegurar el éxito de tu capacitación Java. 

El curso de Fundamentos de Java incluye los siguientes temas de estudio:

Nivel. Fundamentos de Java 

Lección 1 - Comenzando con la Tecnología Java
● El asombroso mundo de la programación en Java
● Qué es la tecnología Java (desde un enfoque práctico)
● Nuestro primer programa en Java desde cero

Lección 2 - Variables y Operadores en Java
● Uso de Variables en Java y para qué las utilizamos
● Tipos de Datos en Java y cómo se clasifican
● Manejo y Clasificación de operadores en Java

Lección 3 - Sentencias de Control en Java
● Uso de la estructura if-else y dónde utilizarla
● Manejo de la esctrutura switch y cuando aplicarla

Lección 4 - Manejo de Ciclos en Java
● Uso del ciclo for y su uso
● Uso del ciclo while y cómo aplicarlo
● Uso del ciclo do-while y cuando utilizarlo

Lección 5 - Programación Orientada a Objetos
● Introducción a la Programación Orientada a Objetos (POO)
● Manejo de Clases en Java
● Uso de Objetos en Java

Lección 6 - Funciones en Java
● Declaración de Métodos o Funciones en Java
● Uso y llamado de Funciones en Java

Lección 7 - Manejo de Datos en Java
● Uso de Arreglos en Java
● Manejo de Matrices en Java

Lección 8 - Herencia en Java
● Manejo de Herencia en Java
●Uso de superclases y subclases en Java

Laboratorio Final del Nivel
● Ejercicio Final donde se integra todo lo aprendido en este Nivel

Al finalizar obtienes un certificado de haber concluido el curso de Fundamentos de Java.

Te esperamos del otro lado.

Ing. Ubaldo Acosta

Fundador de Global Mentoring

Pasión por la Tecnología Java', N'● Cualquiera que desee aprender a programar en Java')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (7, 7, N'	● Aprenderás la creación de un CRUD con PHP Y SQL Server
	● Tendrás los fundamentos necesarios para desarrollar aplicaciones con PHP y SQL Server
	● Podrás realizar aplicaciones más complejas basadas en lo que aprenderás en este tutorial.', N'● Sección 1: Introducción
 1.- Presentación del curso
 2.- LEER ANTES DE CONTINUAR
 3.- Instalación SQL Server 2016
 4.- Configurar Xampp PHP y SQL Server

● Sección 2: Desarrollo del proyecto: CRUD
 5.- Creación de la base de datos y usuario en SQL Server
 6.- Conexión entre PHP y SQL Server
 7.- Mostrar e Insertar Datos con PHP y SQL Server
 8.- Editar y Borrar Datos con PHP y SQL Server

● Sección 3: Resumen y despedida
 9.- Despedida
 10.- Clase Extra: Regalo', N'● Conocimientos básicos de cualquier sistemas operativo
		● Necesitarás instalar XAMPP como servidor local para el desarrollo del proyecto
		● Deberás instalar SQL Server 2016
		● Cualquier editor de código libre en este curso utlizaremos Notepad++', N'Bienvenidos al curso de: Creación de CRUD con PHP y SQL Server 2016 donde aprenderás de manera práctica desarrollando un proyecto.

¿Qué es un CRUD?

Corresponde a las 4 operaciones elementales entre un lenguaje de programación y un motor de base de datos.

C = Create = Insertar Datos
R = Read = Mostrar Datos
U = Update = Actualizar Datos
D = Delete = Borrar Datos

Para el desarrollo frontend de la aplicación utilizaremos el framework Bootstrap (HTML 5 y CSS 3).

Utilizaremos las siguientes herramientas:
● XAMPP
● Notepad++
● Microsoft SQL Server 2016
● Microsoft SQL Management Studio

La instalación del motor de base de datos así como la configuración del servidor con la base de datos se explicará desde 0 para una mejor compresión.', N'● Dirigido a todas las personas (Desarrolladores o no) que quieran aprender a trabajar con PHP y SQL Server
● Interesados en el desarrollo de aplicaciones web
● Interesados en aprender el desarrollo de un CRUD (create, read, update, delete)')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (8, 8, N'● Crear API Rest o Web Api con ASP NET CORE y SQL Server
	● Crear un CRUD en React JS el cual consuma una API Rest o Web Api
	● Crear un CRUD en React JS utilizando Hooks y Ventanas Modales
	● Crear una aplicación la cual conecte ASP NET Core y React JS', N'● Sección 1: Lado del Servidor
 1.- Desarrollo de la API Rest con ASP.NET Core parte 1
 2.- Desarrollo de la API Rest con ASP.NET Core parte 2

● Sección 2:
 3.- Creación del CRUD con React JS parte 1
 4.- Creación del CRUD con React JS parte 2
 5.- Creación del CRUD con React JS parte 3', N'● Tener instalado un editor de código
		● Tener instalado Visual Studio (No importa la versión, siempre i cuando permita crear aplicaciones de .NET Core)
		● Conocimientos básicos de C#', N'En este curso realizaremos un Full-Stack CRUD consumiendo una API Rest (Web API).

El lado del servidor consistirá en una Api Rest hecha con ASP.NET Core e implementando Entity Framework, la API estará conectada a un gestor de base de datos de SQL Server. Las peticiones que haremos serán GET, POST, PUT, DELETE.

El lado del cliente lo realizaremos con React JS y consistirá en un CRUD que haga peticiones a la API Rest que se menciona anteriormente.  Además implementaremos bootstrap, reactstrap, axios y ventanas modales.', N'● Cualquier persona que esté interesado en aprender nuevas tecnologías
● Cualquier persona que desee mejorar su nivel de programación
● Cualquier persona que desee crecer')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (9, 9, N'● MYWEBSTUDIES ofrece este curso de SQL donde aprenderás los conceptos básicos de la programación SQL.
	● Utilización de la aplicación SQL Developer así como su configuración.
	● Practicas de los comandos SQL con las tablas de ejemplo que ofrece Oracle.
	● Conocimiento de las diferentes sentencias, clausulas, funciones : SELECT. WHERE. ORDER BY. GROUP BY. HAVING.
	● Conocimientos para realizar: Consultas simples.
	● En "mywebstudies .com/curso-completo-oracle-sql" encontraras este curso con mas temas y totalmente gratuito.', N'● Sección 1: Introducción
 1.- INTRODUCCIÓN A LAS CARACTERÍSTICAS ORACLE 11G
 2.- TIPOS DE DISEÑOS RELACIONALES
 3.- PRINCIPALES ENTORNOS DE TRABAJO
 4.- INSTALACIÓN ORACLE DATABASE 11G
 5.- INSTALACIÓN SQL DEVELOPER
 6.- MANEJO SQL DEVELOPER

● Sección 2: TIPOS DE DISEÑOS RELACIONALES
 7.- Sentencia Select
 8.- Ejemplos
 9.- Cláusula Where
 10.- Ejemplos
 11.- Tipos de operadores SQL
 12.- Ejemplos
 13.- Operador de valores nulos
 14.- Ejemplos
 15.- Orden de ejecución de operadores SQL
 16.- Ejemplos
 17.- Cláusula order by
 18.- Ejemplos
 19.- Sentencia Distinct
 20.- Ejemplos
 21.- Funciones de agregación
 22.- Ejemplos
 23.- Cláusula Group by
 24.- Ejemplos
 25.- Ejercicios

● Sección 3: SUBCONSULTAS
 26.- Alias
 27.- Ejemplos
 28.- Definición de subconsultas
 29.- Ejemplos
 30.- Tipos de subconsultas
 31.- Ejemplos
 32.- Operador para subconsultas multi-registro
 33.- Ejemplos
 34.- Operadores exist y no exists
 35.- Ejemplos
 36.- Ejercicios', N'● Es un curso que puede realizar cualquier persona que esté interesada.', N'Oferta Especial, utiliza la promoción "PROMOUDEMY2021-342-5" en WWW.MYWEBSTUDIES.COM/curso-completo-oracle-sql, y accede al curso completo por solo 5€.

Como Udemy tiene limitado el contenido de los cursos gratuitos a un máximo de 2 horas, WWW.MYWEBSTUDIES.COM/curso-completo-oracle-sql ofrece este curso con más temas  y también gratuitamente, además podrás  realizar los test con los cuales puedes verificar los aprendido y descargarte documentaciones.

Para Inscribirte curso, hay que acceder WWW.MYWEBSTUDIES.COM/curso-completo-oracle-sql y usar la pestaña "INSCRIPCIÓN" y la inscripción se realizara de forma automática y totalmente gratuita y te dará acceso:

● Al curso de INICIACION ORACLE SQL.
● TEST de verificación de conocimientos, con los cuales puedes comprobar lo aprendido.
● FICHERO DE APUNTES, el cual te servirá de apoyo en los estudios, conteniendo y agrupando los comandos enseñados hasta el momento.
● DOCUMENTACIÓN EXTRA, el cual contiene toda la información del curos y te ayudará a poder repasar o buscar ayuda fuera del curso.

● Ejercicios.

En cada pantalla de video podrás descargarte un fichero de apuntes, que te ayudará en el estudio de la programación, ya que contiene organizados y agrupados los comandos que vas dando hasta el momento, por lo que te será de una gran ayuda.

El objetivo general del curso es permitirle aprender la utilización de las sentencias SQL, eligiendo el entorno de trabajo Oracle.

El curso de Oracle SQL le ofrece:
● Utilización de la aplicación SQL Developer así como su configuración.
● Practicas de los comandos SQL con las tablas de ejemplo que ofrece Oracle.
● Conocimiento de las diferentes sentencias, clausulas, funciones, consultas, tratamiento.
● Manipulación de datos, con sentencias DDL y DML.
● Finalmente tratar con objetos de Esquemas.', N'● Todos aquellos que quieran aprender.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (10, 10, N'● Extraer datos e importarlos en Power BI
	● Transformar los datos para adaptarlos a las necesidades
	● Modelado de datos
	● Crear gráficos interactivos
	● Construir un dashboard o cuadro de mando', N'● Sección 1: Introducción
 1.- Introducción

● Sección 2: Dashboard interactivo
 2.- Qué es PowerBI
 3.- Descarga e instalación
 4.- Carga de fichero de trabajo
 5.- Introducción a Power Query
 6.- Creación de un modelo estrella 
 7.- Introducción a DAX(1): columnas calculadas
 8.- Introducción a DAX(2): medidas
 9.- Creación de Dashboard Interactivo
 10.- Marcadores
 11.- Publicar en PowerBI Service', N'● Ser usuario de Windows
		● Descargar Power BI Desktop (gratis)
		● Muchas ganas de aprender', N'Bienvenido al curso gratuito de Power BI para crear, paso a paso, un dashboard interactivo. A través de él vas a poder conocer, a nivel introductorio, el mundo del Business Intelligence y el análisis de datos.

Las clases se encuentran divididas de la siguiente manera:

● ¿Qué es Power BI?
Introduciremos para qué sirve el programa y las distintas versiones y modalidades que actualmente existen.

● Descarga e instalación
Descargaremos desde cero e instalaremos el programa en el ordenador para estar preparados para trabajar con él.

● Carga de fichero de trabajo
Importaremos el fichero con el que realizaremos el dashboard en Power BI

● Introducción a Power Query
Veremos qué es y para qué podemos utilizar el editor de consultas (o Power Query) en la modificación y transformación de los datos.

● Introducción a DAX: columnas calculadas y medidas
Introduciremos el lenguaje DAX utilizado en Power BI y veremos ejemplos de cómo usarlo de dos formas distintas: con columnas calculadas y con medidas.

● Creación de Dashboard interactivo
Paso a paso iremos añadiendo visualizaciones interactivas en Power BI hasta crear un auténtico cuadro de mando.

● Marcadores
Veremos cómo utilizar y por qué son tan útiles el uso de marcadores en Power BI

● Publicar en Power BI Service
Subiremos nuestro dashboard a la nube para que cualquier persona pueda visualizarlo por internet.', N'● Interesados por Power BI
● Interesados por el Business Inteligence y la realización de cuadros de mando
● Estudiantes que quieran introducirse en el mundo del análisis de datos')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (11, 11, N'● Nextjs Framework 9.5
	● TailwindCSS y PostCSS
	● Deploy a Producción con Vercel
	● Uso de CodeSandbox para POC
	● Hacer sitios web con 100% SEO y Performance
	● Hacer los E-commerce más rápidos de internet', N'● Sección 1: Introducción y Requisitos
 1.- Introducción
 2.- ¿Qué es Next.js?
 3.- ¿Qué es TailwindCSS?
 4.- Pasos y Requisitos
 Cuestionario 1: Repaso Next.js y TailwindCSS
 Tarea 1: Creación de Cuentas

● Sección 2: Construyendo la página web
 5.- Proyecto inicial y dependencias
 6.- Configuración de TailwindCSS
 7.- Configuración de Next.js
 8.- Construyendo con bloques Tailwind
 9.- Deploy a Vercel y ajustes finales
 Cuestionario 2: Repaso configuración e implementación
 Tarea 2: Crea tu propia página web con tus servicios

● Sección 3: Preguntas y Respuestas
 10.- ¿Se puede hacer PWA?
 11.- Apps Nativas ¿Por qué usar Nextjs?
 12.- Shopify, el e-commerce y Nextjs $$$$
 13.- ¿Por qué´usar Vercel y no otro VPS?

● Sección 4: Final
 14.- Conclusiones y ¿Qué es lo que sigue?
 15.- Despedida. ¡Gracias!', N'● HTML 5
		● CSS 3
		● JavaScript
		● React', N'En esta pequeña clase vas a aprender todo lo necesario para integrar Next.js con TailwindCSS de manera fácil y rápida.

Vas a crear tu propia landing page o portafolio, con el 100% performance y SEO, para que tu trabajo pueda hablar por ti!

Cuando termines esta masterclass, vas a poder desplegar un sitio listo para producción en una de las mejores plataformas para sitios web estáticos y con uno de los mejores frameworks desarrollados actualmente. Estoy hablando de Vercel y Next.js

Y no solo eso. Vamos también a ahondar en preguntas como ¿Como puedo hacer una PWA con Next.js? Y como es que puedes hacer un gran negocio a partir de el uso de estos frameworks. Puedes ofrecer servicios para landing pages, sitios, portafolios para ti o para tus clientes. Así como ofrecer el servicio de hacer los e-commerce más rápidos de la internet.', N'● Desarrolladores interesados en aprender los básicos de Nextjs
● Desarrolladores de React y Web que quieran saber TailwindCSS
● Web Devs que quieran hacer sus webs más rápidas
● Diseñadores Web que quieran llegar al 100% de SEO y Performance')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (12, 12, N'● Sintaxis de CSS & 3 formas de aplicar CSS en HTML
	● Selectores simples, compuestos, atributos etc
	● Box Model (Modelo de caja), variables en CSS & especificidad
	● Estilos para textos, colores en CSS, tipografía & fondos ¡Y mucho más!', N'● Sección 1: Introducción a CSS
 1.- Sintaxis y formas de aplicar CSS
 2.- Normalización y desarrollo ordenado
 3.- Importando hojas de estilo

● Sección 2: Selectores
 4.- Selector de tipo o etiqueta
 5.- Selector de ID
 6.- Selector de clase
 7.- Selectores compuestos
 8.- Selector de atributo
 9.- Selector de hermanos (Adyacente)

● Sección 3: Especificidad & Variables
 10.- Especificidad
 11.- Variables

● Sección 4: Continuación del curso
 12.- Curso Completo', N'● Conocimientos básicos en HTML
		● Tener un editor de código y un navegador web instalado en tu computadora', N'Te doy la bienvenida a este curso titulado Curso de CSS desde CERO a EXPERTO [AVANZADO] aquí aprenderás CSS desde lo mas básico hasta propiedades avanzadas. Te enseñare la sintaxis básica de CSS y como se aplican estilos a los documentos HTML, aprenderas a como utilizar selectores de etiquetas, selectores de id, selectores de clases entre otros más. Aprenderás cómo funciona el modelo de caja en CSS diferencias entre margin & padding, colapsado de márgenes, tipos de colores y su sintaxis como rgb & rgba, como crear y utilizar variables en CSS.

CONTENIDO DEL CURSO
● ¿Qué es CSS? (Introducción)
● Sintaxis y formas de aplicar CSS en documentos HTML
● Normalización de estilos con normalize.css
● Selectores de etiqueta, id, clases y mas
● Especificidad en CSS
● Variables en CSS
● Unidades de medida relativas
● Unidades de medida absolutas
● Modelo de caja (margin, padding, borde, width, height)
● Colapsado de márgenes
● Bordes redondeados
● Colores RGB, RGBA, Hexadecimal, HSL & HSLA
● Sombras de textos
● Sombras de cajas
● Cálculos con CSS (Función calc)
● Fondos con Background
● Fondos múltiples
● Degradados lineales y radiales
● Efectos fotográficos con CSS
● Propiedades para textos
● Fuentes externas
● Pseudo clases en CSS
● Y mucho contenido más

El curso no esta completo en la plataforma de Udemy por algunas restricciones en los cursos que son gratis (solo se permiten 2 horas de contenido gratuito en dichos cursos), pero no te preocupes puedes buscar mi canal de YouTube "Carlos Alfaro" y verlo completamente gratis, busca la lista de reproducción: Curso CSS profesional (de CERO a EXPERTO - AVANZADO)', N'● Estudiantes que desean aprender CSS desde lo básico a avanzado')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (13, 13, N'● Crear Videojuegos con Unity
	● Recrear un Clásico de los Videojuegos
	● Manipular Diferentes y Tipicos Algoritmos para el Desarrollo de Videojuegos', N'● Sección 1: Curso
 1.- Clase 1
 2.- Clase 2
 3.- Clase 3
 4.- Clase 4
 5.- Clase 5
 6.- Clase 6
 7.- Clase 7
 8.- Clase 8
 9.- Clase 9
 10.- Clase 10
 11.- Clase 11
 12.- Clase 12
 13.- Clase 13
 14.- Clase 14
 15.- Clase 15
 16.- Clase 16
 17.- Clase 17', N'● Una Computadora', N'En este curso enseñamos a utilizar Unity para la creación de videojuegos gratis, de forma sencilla y explicado sin tecnicismos innecesarios, buscando los mejores resultados posibles a traves de la experiencia. 

En ésta ocasión recreando el juego de Flappy Bird aprenderemos los fundamentos básicos que nos permitirán diseñar éste clásico en sus aspectos básicos y personalizables.

Las herramientas a utilizar son completamente gratuitas, así como incluimos los recursos necesarios.

Encontraremos funciones básicas, como la física de cuerpos rígidos, el parallax background, generación procedural de las tuberias, sistema de puntos, background music, implementación de efectos de sonido y más.

Desde luego ésto incluye las bases del código en C#, empleando opcionalmente el IDE gratuito de Visual Studio Code, recreando así los aspectos iniciales del juego.

Éste tipo de videojuegos es muy visto en Game Jams, por lo tanto es ideal para quienes deseen integrarse en éste tipo de eventos del mundo de desarrollo de videojuegos.

La idea además, es ofrecer una solución rápida para que puedas tener tu primer videojuego simple 2D en pocos pasos y de forma experimental. Es por ello que el curso completo posee una duración breve y ataca los aspectos más básicos, para que el alumno pueda incorporarle las sub-mecánicas o mejoras que considere oportunas.', N'● Quien desea aprender a crear un videojuego clásico
● Quien desea crear algo rápido y sencillo en Unity')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (14, 14, N'● Marketing digital integral en Latinoamérica
	● Atención a la comunidad digital,
	● Comportamiento del usuario
	● Mejores herramientas de gestión
	● Empezar a gestionar cuentas en redes sociales
	● Definir la especialización de carrera', N'● Sección 0: undefined
 1.- Introducción al marketing digital - Clase 1

● Sección 1: Introducción al marketing digital - Clase 2
 2.- Errores comunes y manejo de dificultades públicas
 Cuestionario 1: Indica la solución más viable en el siguiente cuestionario

● Sección 2: Clase 3 y clase final
 3.- ¿Cómo evito ser hackeado o mi cliente?
 4.- Mira esta clase con atención
 5.- Clase, Email Marketing y más', N'● Fundamentos técnicos y básicos del marketing digital
		● Leer el Glosario de Términos digitales', N'En este curso aprendes desde cero, desde los términos, hasta el comportamiento del público Latino y en general en medios digitales.  Estamos ante un canal totalmente diferente a la publicidad tradicional, un canal donde el usuario manifiesta sus necesidades, inquietudes, quejas y las llamadas crisis de marcas son más evidentes. No podemos seguir formando profesionales que no sepan manejar todas estas situaciones y es algo básico, algo que debe ser de su conocimiento antes de saber cómo funciona un algoritmo en Instagram o la publicidad en TikTok.

Otra problemática

Herramientas de social media profesionales. Últimamente hemos estado evaluando el mercado, la competencia para ser exactos, y hemos encontrado que hay un enorme déficit del servicio a niveles profesionales, esto si lo comparamos con los servicios de Social Listening de Estados unidos y Europa donde las empresas tienen un nivel de monitoreo sumamente alto y las herramientas se apuntan a estos mercados, es totalmente entendible, pues pagan mejor, tienen la mayor concentración de profesionales del área y dominan el idioma global que es el inglés, suficiente para apostar más a lo global. Pero esto ha llevado a crearse un mercado desatendido y casi inexplorado, aunque si buscamos bien, Google indica que hay entre 100 y 10.000 búsquedas mensuales promedio de Social Listening en Latinoamérica, inclusive México que es actualmente la potencia latina más grande en el servicio y en el marketing digital de Latinoamérica completa tiene el mismo inconveniente, poca oferta y por ende una demanda inexplorada.', N'● Marketers
● Estudiantes de Marketing
● Profesionales del Marketing
● Community Managers
● pasantes de marketing
● Emprendedores
● Micro empresarios
● Empresarios con intención de migrar al marketing digital')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (15, 15, N'● Aprenderás a utilizar la mayoría de las funciones y formas de uso de las tablas dinámicas', N'● Sección 1: Introducción
 1.- ¿Qué son las tablas dinámicas?
 2.- Analizando una base de datos
 3.- Buena tabla VS mala tabla
 4.- Trabajar con Tablas no Rangos (Matrices)
 5.- 3 formas de insertar tablas dinámicas
 6.- Conociendo las partes de una tabla dinámica
 7.- Como resumir datos
 8.- Mostrar valores como
 9.- Agrupando datos de diferentes contextos
 10.- Encontrando el top ten de mis datos
 11.- Filtros en tablas dinámicas
 12.- Cómo ordenar valores
 13.- Dando formato a mis tablas
 14.- Diseño de informe en mis tablas
 15.- Totales y sub totales
 16.- Creando mi Primer DASHBOARD  ', N'● Tener ganas de aprender y saber manejar un poco de excel', N'Aquí vas a aprender de forma fácil cómo dominar las tablas dinámicas y cómo es que estas sirven para analizar grandes bases de datos y crear reportes.

Además te mostrare cómo se compone una base de datos, la diferencia entre trabajar con tablas y rangos y mucho más

Dominarás el mundo de utilizar atajos para que todo sea más fácil en tu trabajo.', N'● Personas que les guste excel')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (16, 16, N'● Aprender jQuery con ejemplos prácticos y aplicaciones reales.
	● Usar código de jQuery abierto para tus proyectos
	● Mejorar tus capacidades de animación de objetos
	● Saber namejar el árbol DOM de html
	● Usar Jquery en tus proyectos', N'● Sección 1: JQuery comienzo
 1.- Introducción
 2.- Selectores
 3.- Eventos
 4.- Eventos2

● Sección 2: JQuery Efectos
 5.- Hide/Show
 6.- Fade
 7.- Slide
 8.- Animate
 9.- Stop
 10.- Callback
 11.- Chaining

● Sección 3: JQuery HTML
 12.- Get
 13.- Set
 14.- Add
 15.- Remove
 16.- CSS classes
 17.- CSS
 18.- Dimensions

● Sección 4: JQuery Traversing
 19.- Ancestores
 20.- Descendats
 21.- Siblings
 22.- Filtering

● Sección 5: JQuery AJAX
 23.- Load
 24.- Get/Post', N'● Conocimiento básico de Javascript
		● Conocimiento básico de HTML y CSS', N'Con este curso aprenderás a dominar jQuery, la librería open-source de Javascript, con la que el proceso de agregar funcionalidades mejoradas y comportamientos avanzados a los sitios web se simplifica enormemente.

En este curso de jQuery adquieres las habilidades y conocimientos necesarios para desarrollar experiencias web más intuitivas e interactivas que mejoren la experiencia del usuario, y también aprenderás como jQuery convierte la tarea de trabajar con AJAX para cargar o enviar información en algo mucho más cómodo y rápido.

Durante el curso veremos::

● La búsqueda y manipulación de contenido en una página HTML;
● Trabajar con el modelo de eventos de los exploradores modernos;
● Y añadir efectos y transiciones sofisticadas que vemos en páginas modernas, como animaciones disparadas por eventos.

Veremos por tanto la simplicidad con la que trabaja y la facilidad con la que podemos diseñar las páginas html para que sean más interactivas.', N'● Personas que desean aprender a usar jQuery para sus proyectos
● Aquellos que desean mejorar sus aplicaciones web
● Quienes deseen poder crear cualquier tipo de programa web')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (17, 17, N'● Conseguir e instalar Linux
	● Entender la estructura y sintaxis de los comandos de Linux
	● Obtener ayuda rápida de cualquier comando del sistema
	● Administrar sus archivos y carpetas de forma rápida y efectiva
	● Usar todas las herramientas que nos ofrece el intérprete de comandos para ser más eficaces utilizando Linux
	● Comprender y manejar conceptos como las rutas del sistema de ficheros, tanto relativas como absolutas
	● Crear usuarios y asignarles permisos y contraseñas
	● Instalar y configurar la gran cantidad de software gratuito que ofrece Linux
	● Modificar los repositorios del sistema
	● Utilizar comodines y atajos del sistema de ficheros
	● Conocer la información que nos ofrece el prompt del sistema', N'● Sección 1: Introducción al Intérprete de comandos de Linux
 1.- ¿Qué es Linux y su intérprete de comandos?
 2.- Instalar Linux en Windows con VirtualBox

● Sección 2: Primeros pasos en el intérprete de comandos
 3.- Descripción del entorno
 4.- Componentes de una orden: los parámetros
 5.- Componentes de una orden: las opciones
 6.- Resumen
 Cuestionario1: Autoevaluación

● Sección 3: Coamndos del sistema de ficheros
 7.- Navegar por los directorios y ver su contenido (cd, pwd y ls)
 Cuestionario 2: Autoevaluación
 8.- Las rutas. Tipos, usos y características
 9.- Atajos en el uso del Bash
 Cuestionario 3: Autoevaluación
 10.- Crear, mover y borrar fichero y directorios (mkdir,touch,rm y mv)
 11.- Resumen
 12.- Copiar elementos
 Cuestionario 4: Autoevaluación
 13.- Uso de comodines: el asterisco
 14.- Uso de comodines: la interrogación
 15.- Resumen
 Cuestionario 5: Autoevaluación
 16.- Ejercicios

● Sección 4: Usuarios y permisos
 17.- Información sobre usuario y grupos
 18.- Crear usuario, grupos, contraseñas y cambiar propietarios
 19.- Los permisos en los ficheros
 20.- Los permisos en los directorios
 21.- Cambiar permisos. Orden chmod

● Sección 5: Administración de software
 22.- Sobre los siguientes dos videos
 23.- Paquetes y repositorios
 24.- Administración con aptitude y Synaptic (entorno gráfico)

● Sección 6: Bonus - IMPORTANTE
 25.- ¡MÁS CONTENIDO GRATIS!', N'● Tener nociones básicas sobre el uso de un sistema operativo', N'En este curso aprenderás a utilizar un intérprete de comandos en Linux. Te enseñaré todos los conceptos necesarios desde el principio y poco a poco, así tendrás una buena base sobre la que ampliar tus habilidades con esta poderosa forma de utilizar un Sistema Operativo. Tanto si estás iniciado en su uso como si no lo has visto nunca, aprovecharás las explicaciones y ejercicios que te voy a enseñar.

En el primer tema te explicaré qué es Linux y cómo encaja el intérprete de comandos en el sistema operativo. También verás como instalarlo usando una máquina virtual para que puedas hacer todas las prácticas y experimentos que quieras sin miedo a que tu ordenador sufra algún daño.

En el segundo bloque aprenderás a manejar los elementos del sistema de ficheros: archivos y directorios. Entenderás como están organizados y podrás moverte sobre la estructura de directorios de una forma rápida y efectiva. También aprenderás como crear, cambiar o borrar tanto ficheros como carpetas.

Como Linux en un sistema multiusuario, en el tercer tema conocerás cómo se organizan los usuarios, grupos y permisos.

Por último aprenderás a instalar software desde los servidores oficiales o desde cualquier archivo compatible. Alucinarás con la cantidad de programas gratuitos de los que puedes disfrutar en muy pocos segundos.

No lo dudes, haz el curso y piérdele el miedo al modo consola, ¡tus habilidades informáticas crecerán exponencialmente!.', N'● Todo aquel que quiera empezar a manejar el intérprete de comandos de linux y no tienen experiencia previa en el uso de comandos.
● Los usuarios que conocen el manejo básico del shell pero no lo entienden con profundidad')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (18, 18, N'● Al finalizar el curso tendrás la habilidad de crear sitios webs dinámicos con Laravel PHP
	● Podrás integrar plantillas html con Laravel PHP
	● Podrás crear formularios de contacto
	● Podrás enviar emails automáticamente
	● Aprenderás a publicar tu sitio web en un servidor, y más...', N'● Sección 1: Instalando Laravel en 5 minutos
 1.- Instalación en Windows
 2.- Instalación en MAC

● Sección 2: Integrando el HTML con Laravel PHP
 3.- Integración de una plantilla HTML profesional

● Sección 3: Activando el formulario
 4.- Activando el formulario de contacto con notificación vía email

● Sección 4: Publicando el sitio web en Heroku
 5.- Deploy en Heroku
 6.- Laravel en Cpanel', N'● HTML
		● PHP (opcional)', N'En este minicurso aprenderemos desde cero, y paso a paso, a crear tu primer sitio web utilizando el Framework más popular de PHP, Laravel.

● Aprenderemos a integrar plantillas html con Laravel PHP
● Aprenderemos a crear formularios de contacto
● Aprende a enviar emails automáticamente
● Aprende a publicar tu sitio web en un servidor, y más...', N'● Este curso está dirigido para personas que tienen experiencia con HTML y quieren dar el siguiente paso para crear sitios web dinámicos con PHP, específicamente con Laravel')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (19, 19, N'● Manejo del programa Mathematica y resolución de problemas', N'● Sección 1: Curso de Mathematica
 1.- Números enteros y racionales
 2.- Números decimales y radicales
 3.- Funciones elementales
 4.- Divisibilidad
 5.- Polinomios
 6.- Funciones algebraicas
 7.- Ecuaciones y sistemas
 8.- Números complejos
 9.- Gráficas de funciones
 10.- Límites
 11.- Derivadas
 12.- Integrales
 13.- Vectores
 14.- Matrices
 15.- Sistemas de ecuaciones lineales
 16.- Estadística descriptiva
 17.- Gráficos estadísticos
 18.- Factorización de matrices
 19.- Diagonalización de matrices
 20.- Cálculo vectorial
 21.- Transformada de Laplace
 22.- Ecuaciones diferenciales', N'● Contar con una computadora portátil o de mesa ', N'En el curso aprenderemos a manejar Mathematica y resolver problemas y ejercicios con este programa. Las primeras clases tendrán un nivel introductorio y la matemática que se maneja corresponde a la enseñanza media. Una vez nos hayamos familiarizado con el programa, el nivel de las matemáticas avanza progresivamente.

El curso es adecuado para cualquier estudiante universitario con orientación científica.', N'● Estudiantes universitarios de ciencias')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (20, 20, N'● Aprenderás todos los conceptos iniciales para entender el funcionamiento de GIT y la importancia de esta tecnología con respecto a la colaboración en equipos de trabajo. Sabrás como utilizar la terminal, cómo conectarte a un repositorio local y remoto, y a su vez como configurar Visual Studio Code y GIT Kraken para facilitar el trabajo con GIT.', N'● Sección 1: Bievenida al curso
 1.- Presentación del curso

● Sección 2: Introducción
 2.- Introducción a GIT
 3.- Instalación
 4.- Configuración
 5.- Estados

● Sección 3: Repositorio Local
 6.- Creando un repositorio local
 7.- Haciendo un Commit
 8.- ¿Como deshacer cambios?
 9.- Visualizando el historial de cambios
 10.- Regresar a una versión específica de commit

● Sección 4: Repositorio Remoto
 11.- Creando un repositorio remoto
 12.- Sincronizando repositorios
 13.- Creación de una rama
 14.- ¿Cómo fusionar ramas?
 15.- Resolver conflictos (1ra parte)
 16.- Resolver conflictos (2da parte)
 17.- Pull
 18.- Pull Request
 19.- Ignorar archivos o carpetas

● Sección 5: Interfaces de usuarios
 20.- Visual Studio Code
 21.- GitKraken', N'● No se exige conocimiento previo', N'Aprendé sobre los repositorios más utilizados a nivel mundial y lleva tus conocimientos a otro nivel.

Verás como manejar un repositorio local (GIT) a través del uso de la terminal y como manejar el repositorio remoto a través de la plataforma Github. Aprenderás a mantener tus proyectos organizados para que tu trabajo en equipo sea eficiente y también verás que interfaces de usuarios podrías utilizar en reemplazo de la terminal.', N'● Desarrolladores de todos los niveles
● Diseñadores
● Project Manager')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (21, 21, N'● PUG', N'● Sección 1: Preparación del entorno
 1.- Introducción

● Sección 2: Funcionalidades de PUG
 2.- Dudas
 3.- Sintaxis básica
 4.- Incluir hojas de CSS, Scripts y variables
 5.- Condicionales
 6.- Bucles
 7.- Templates
 8.- Blocks I
 9.- Blocks II
 10.- Includes
 11.- Mixins', N'● HTML
		● JavaScript', N'El objetivo de este curso es enseñaros la utilización de uno de los motores de plantillas más usados

En este cursos os enseñaré todo lo que tiene PUG y en el curso de como hacer una web desde 0 veremos una aplicación práctica de PUG para que podáis verlo en un entorno real

Espero que este curso os ayude a iniciaros en el desarrollo web de forma correcta.

Pugs es un compilador y un intérprete del lenguaje de programación Perl 6, cuyo desarrollo comenzó el 1 de febrero de 2005 por Audrey Tang.

El desarrollo de Pugs se ha parado, poniendo la mayor parte de los esfuerzos de implementación de Perl 6 en Rakudo; sin embargo su repositorio de código fuente se sigue usando para almacenar el conjunto de pruebas oficial de Perl 6.

Pug es un motor de plantillas enfocado en hacer mas rápida la codificación de Html. Ha sido implementado con Javascript para trabajar con nodeJs principalmente.

Además es un preprocesador de código Html.

Pug trabaja por indentación; es Html con una sintaxis sencilla:
● Sólo tienes que poner la etiqueta un espacio y su contenido.
● Los atributos se escriben entre paréntesis. Si quieres poner varios atributos tienen que ir separados con una (,).
● Para incluir una clase, la etiqueta va seguida de un (.) y el nombre de la clase; y si queremos agregar un id en lugar de punto se pone un (#).
● Para anidar, tenemos que empezar en una nueva línea y dar un espacio con el tabulador.', N'● Cualquier desarrollador web que quiera aprender a usar un motor de plantillas')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (22, 22, N'● Crear y editar composiciones vectoriales', N'● Sección 1: Introducción
 1.- Ingreso al programa FREEHAND
 2.- Áreas de la pantalla

● Sección 2: Herramientas de dibujo
 3.- Herramientas de selección
 4.- Básicas de dibujo
 5.- Propiedades y modificación de objetos
 6.- Propiedades en el panel de objeto
 7.- Herramientas de trazados
 8.- Reglas y Guías
 9.- Cuadrículas
 10.- Herramientas de trazado libre

● Sección 3: Herramientas de modificación
 11.- Herramienta de modificación cuchilla
 12.- Transformación de objetos

● Sección 4: Textos
 13.- Creación de texto
 14.- Propiedades de bloque de texto
 15.- Propiedades de texto
 16.- Propiedades avanzadas de texto

● Sección 5: Operaciones
 17.- Comandos de modificación
 18.- Clip', N'● Simplemente manejo del sistema operativo windows', N'Bienvenido al curso de FREEHAND desde cero

En este curso aprenderás a crear y editar artes gráficas de acuerdo a la necesidad de tu publicación, con ejemplos prácticos y útiles, los procedimientos han sido elaborados con el fin de que ustedes puedan comprender y aplicar mas adelante en otras posibilidades ya en un trabajo real.

Saludos a todos.', N'● Todos aquellos que necesiten generar artes gráficas de una manera rápida y versátil.
● Publico en general que le interese crear diseños para su medio.
● Todos aquellos profesionales del área de diseño que utilizan este software.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (23, 23, N'● infraestructura como codigo
	● AWS CloudFormation', N'● Sección 1: Introducción
 1.- Introducción
 2.- Costos y beneficios
 3.- Valoración previa del curso
 4.- Infraestructura como código y AWS CloudFormation
 5.- Recursos del curso
 6.- Laboratorio introductorio
 7.- Conceptos básicos
 8.- Json vs Yaml

● Sección 2: Creación, actualización y borrado de un Stack
 9.- Creación de un recurso
 10.- Actualización de un recurso
 11.- Eliminación de un recurso

● Sección 3: Parámetros
 12.- ¿Qué son los parámetros?
 13.- Laboratorio: Parámetros

● Sección 4: Recursos
 14.- Recursos
 15.- Laboratorio: Recursos

● Sección 5: Mappings
 16.- Mappings
 17.- Laboratorio: Mappings

● Sección 6: OutPuts
 18.- OutPuts
 19.- Laboratorio: OutPuts

● Sección 7: Conditions
 20.- Conditions
 21.- Laboratorio: Conditions

● Sección 8: Metadata
 22.- Metadata

● Sección 9: User Data y CloudFormation init
 23.- User Data
 24.- Laboratorio: User Data
 25.- User Data en CloudFormation
 26.- Laboratorio: User Data en CloudFormation
 27.- CloudFormation Helper Scripts
 28.- Laboratio: Cloudformation init', N'● Conocimiento básicos en AWS
		● Conocimientos básicos en Linux', N'AWS CloudFormation ofrece un lenguaje común para describir y aprovisionar todos los recursos de la infraestructura en el entorno en la nube. CloudFormation permite usar un archivo de texto simple para modelar y aprovisionar, de una manera segura y automatizada, todos los recursos necesarios para las aplicaciones en todas las regiones y cuentas. Este archivo funciona como la única fuente de información para el entorno en la nube.

En el curso aprenderemos la creación de infraestructura a través de CloudFormation templates. Iremos desde una infraestructura simple hasta la creación de múltiples recursos enlazados usando YAML. Revisaremos los conceptos básicos y analizaremos al detalle cada sección de la plantilla.', N'● Desarrolladores
● Devops
● Arquitecto de soluciones')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (24, 24, N'● Consejos de dónde y cómo buscar trabajo. Tips de cómo encontrar trabajo con Linkedin
	● Tips de cómo conseguir un trabajo con Linkedin y consejos de cómo buscar empleo con Linkedin.', N'● Sección 1: Introducción
 1.- Presentación del curso
 2.- Presentación del profesor
 3.- Expectativas
 4.- ¿Por qué Linkedin?
 5.- Estructura del curso

● Sección 2: Hacks para buscar oportunidades
 6.- Estructura de la sección
 7.- La forma tradicional de buscar oportunidades laborales
 8.- Buscar a través de contenidos
 9.- El botón más importante de Linkedin
 10.- ¿Por qué seguir y no agregar?
 11.- El auto-gol de conectar con alguien que no conocemos
 12.- ¿Cómo encontrar reclutadores?
 13.- ¿Para qué más sirve el botón de seguir?
 14.- Lo que estás perdiendo si solo sigues a las empresas
 15.- Últimos tipos para encontrar ofertas

● Sección 3: Hacks para que te encuentren
 16.- Estructura de la sección
 17.- Primero entendamos un proceso de reclutamiento
 18.- ¿Cómo los reclutadores buscan en Linkedin?
 19.- Simulemos ser un reclutador en Linkedin Recruiter
 20.- ¿Si te buscas, te encuentras?
 21.- No todos los keywords son igual de importantes
 22.- ¿Cómo poblar de keywords correctos?
 23.- Expectativas sobre los cambios
 24.- La oportunidad en incorporar nuevas habilidades
 25.- ¿Cómo mejorar el ranking en que apareces?
 26.- Importancia del top of mind

● Sección 4: Hacks para que te refieran
 27.- Estructura de la sección
 28.- Primero pongámonos en los pies del que refiere
 29.- Aprovecha a tu red y las funcionalidades sociales de linkedin
 30.- No tengo red de contactos ¿cómo lo hago?
 31.- Ya generé un vínculo...¿cómo agregar en linkedin?
 32.- Un secreto sobre los reclutadores
 33.- Ya tengo una entrevista... ¿Qué viene ahora?
 34.- Llegamos al final :)

● Sección 5: Contenido opcional
 35.- Estructura de la sección
 36.- No tengo experiencia...
 37.- Ejemplo de búsquedas creativas
 38.- ¿Dónde encontrar trabajos remotos?
 39.- ¿Qué hacer por mientras?
 40.- ¿Te gustó el curso?... ahora te pido un favor :)', N'● Ninguno, sólo se necesitan las ganas de aprender :)', N'Construí este curso para compartir las tácticas que he utilizado para buscar y encontrar trabajo a través de linkedin.

El curso es 100% gratuito porque es mi pequeño aporte para ayudar a salir de los efectos de la pandemia.

Acá aprenderás tips y trucos para buscar empleo con linkedin de forma más efectiva y más rápida.

Última actualización: Julio 2020.', N'● Personas en búsqueda de nuevas oportunidades laborales
● El curso es de especial ayuda para quienes buscan un trabajo en marketing digital')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (25, 25, N'● Aprenderás a crear un portafolio profesional para poder destacar tus mejores proyectos y demostrar tus conocimientos
	● Aprenderás a utilizar Github y Github Pages.
	● Aprenderás a editar a tu gusto plantillas HTML y CSS.
	● Aprenderás comandos básicos de Git.
	● Aprenderás a cambiar el dominio de tu portafolio', N'● Sección 1: Introducción del Curso
 1.- Introducción

● Sección 2: Github
 2.- ¿Qué es Github? y Cómo Crear una Cuenta.
 3.- Cómo Utilizar Github

● Sección 3: Portafolio
 4.- Plantilla HTML
 5.- Editor de Texto
 Ejercicio de codificación 1: Ejercicio en HTML
 6.- Crear Portafolio

● Sección 4: Subir Portafolio a Internet
 7.- Subir portafolio con comandos básicos de GIT
 8.- Github Pages

● Sección 5: Dominio Personalizado
 9.- Cómo Cambiar el Dominio de tu portafolio', N'● Una base de HTML y CSS sería un plus, pero no es necesaria.', N'En este taller te enseñaremos a crear un portafolio profesional y luego lo subiremos a internet sin ningún costo, en alrededor de una hora.

El taller incluye:
● Crear una cuenta de Github.
● Descargar una plantilla de HTML.
● Editar la plantilla a nuestro gusto.
● Subir nuestro portafolio a un servidor.
● Poner un dominio personalizado a nuestro portafolio.

Todo esto completamente GRATIS, no necesitas pagar ni por la plantilla, ni por servidor y tampoco el dominio.

Nota: No es un curso para aprender HTML y CSS, tocaremos solo conceptos muy básicos.', N'● Desarrolladores/Programadores que buscan una manera gratuita de tener un portafolio profesional en internet.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (26, 26, N'● Serán capaces de hacer introducciones para sus vídeos en pocos minutos.
	● Insertar cuadros de texto, imágenes e ilustraciones.
	● Animaciones y transiciones.
	● Reproducir, grabar e insertar elementos multimedia.
	● Unos conocimientos mínimos de diseño para conseguir presentaciones profesionales.
	● Las distintas formas de manejar archivos, Manipular los objetos en una diapositiva, Enlazar PowerPoint y Excel.', N'● Sección 1: Introducción
 1.- Introducción

● Sección 2: Infografías
 2.- #1 Demo Descargable
 3.- Editando el #1 Demo de Regalo

● Sección 3: Plantillas con Animación y Transición
 4.- #2 Demo Descargable
 5.- Editando el #2 Demo de Regalo

● Sección 4: Editables Excel
 6.- #3 Demo Descargable Excel
 7.- Editando el #3 Demo de Regalo (EXCEL)

● Sección 5: Mensaje Final
 8.- Más de 2800+ Infografías
 9.- Vista Previa de Nuestras Categorías
 10.- ¿CÓMO ME CONTACTO CON USTEDES?', N'● Para un óptimo seguimiento del curso los estudiantes deberán tener instalado Microsoft PowerPoint 2013 en sus ordenadores', N'Obtén Acceso Ilimitado a 3000+ Plantillas entre Infografías y Plantillas Diseñadas con animaciones y Transiciones.

Crea Infografias Profesionales con una variedad de infografias fáciles de usar, no tendrás problemas para hacer que tu proyecto sea perfecto!
● Estas plantillas son muy fáciles de usar, pueden ser personalizables. Incluye 31 nichos para que puedas crear cualquier proyecto.

Clientes satisfechos en más de 100+ países no pueden estar equivocados.
● Obtén acceso de por vida a mas de 3000+ infografías que cientos de especialistas en marketing, bloggers e influencers de todo el mundo utilizan.

Facil de Editar Con solo unos pocos clicks, podrás convertir la plantilla en blanco en la presentación perfecta!
● Simplemente abre los archivos en tu programa favorito cambia colores, agrega texto, inserta figuras y más.

Encuentra Algo Perfecto Para tu Presentación
● Con más de 3000+ infografias, nosotros tenemos algo para todos.

Cambia Colores Fácilmente
● El paquete incluye 100 paletas de color que puedes usar para impresionar a tu audiencia

Infografias Organizadas
● Incluye 51 categorías únicas para una navegación más fácil. Desde diferentes nichos hasta diferentes estilos, nunca fue tan fácil encontrar lo que estás buscando y comenzar un proyecto.

La compatibilidad de la aplicación no es un problema. Las infografías son versátiles y funcionan a la perfección con:
● PowerPoint - Google Slides - KeyNote.

NUESTRAS CATEGORÍAS DISPONIBLES!!
● Abstracto (20 Diapositivas)
● Acuarela (56 Diapositivas)
● Alfabeto (37 Diapositivas)
● Almacenamiento (16 Diapositivas)
● Banners (58 Diapositivas)
● Bienestar (17 Diapositivas)
● Calendario (137 Diapositivas)
● Diagrama de Gantt (30 Diapositivas)
● Diagramas Circulares (81 Diapositivas)
● Diagramas de Barras (15 Diapositivas – Excel)
● Diagramas de Flujo (20 Diapositivas)
● Distribución (16 Diapositivas)
● Ecología (46 Diapositivas)
● Educación (21 Diapositivas)
● Emprendimiento (23 Diapositivas)
● Emprendimiento II (30 Diapositivas)
● Esqueleto de Pez (30 Diapositivas)
● Estado de Pérdidas y Ganancias (30 Diapositivas)
● Estrategia (21 Diapositivas)
● Figuras Geométricas (114 Diapositivas)
● Fitness (32 Diapositivas)
● Flechas (33 Diapositivas)
● Fotografías (83 Diapositivas)
● Fútbol (20 Diapositivas)
● Gestión de Proyectos (20 Slides)
● Gráficos (53 Diapositivas)
● Gráficos de Pastel (15 Diapositivas – Excel)
● Hoja de Ruta (30 Diapositivas)
● Hoja de Ruta del Producto (30 Diapositivas)
● Iceberg (30 Diapositivas)
● Indicadores KPI (40 Diapositivas – Excel)
● Inmobiliaria (9 Diapositivas)
● Jurisprudencia (20 Diapositivas)
● Liderazgo (18 Diapositivas)
● Lineas Temporales (56 Diapositivas)
● Mapa Mundial (28 Diapositivas)
● Mapas Mentales (30 Diapositivas)
● Marketing (32 Diapositivas)
● Medicina (16 Diapositivas)
● Minimalista (77 Diapositivas)
● Negocios (23 Diapositivas)
● Nutrición (30 Diapositivas)
● Obscuro (165 Diapositivas)
● Organigrama (20 Diapositivas)
● Pirámide (30 Diapositivas)
● Proyecto (201 Diapositivas)
● Redes Sociales (17 Diapositivas)
● Rompecabezas (22 Diapositivas)
● Salud (30 Diapositivas)
● Tarjetas de Presentación (30 Slides)
● Transporte (15 Diapositivas)

Acceso Total y Completo:
● Puedes Tomar este curso completamente Gratis.!!!', N'● Cualquier Persona que desea crear presentaciones Poderosas y Exitosas que todos querrar lograr tener.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (27, 27, N'● Crear su primer videojuego en scratch
	● Crear videojuegos en scratch sin utilizar una linea de código
	● Conocer los Fundamentos de un videojuego realizado con scratch sin codigo	
	● Diseñar tu videojuego en scratch sin programar', N'● Sección 1: Introducción
 1.- Presentación

● Sección 2: Fundamento de VideoJuegos
 2.- Los VideoJuegos
 3.- Elementos Fundamentales de un videojuego

● Sección 3: La plataforma de VideoJUegos sin Código Scratch
 4.- Buscar la Plataforma de Scratch
 5.- Conociendo el entorno de Scratch PARTE 1
 6.- Conociendo el entorno de Scratch PARTE 2 
 7.- Objetos en Scratch
 8.- Objetos y Fondos en Scratch

● Sección 4: Interactuando con la Plataforma de videojuegos en Scratch
 9.- Bloques en Scratch
 10.- Apilando Bloques en Scratch
 11.- Eventos en Scratch 
 12.- Eventos en Scratch PARTE 2
 13.- Múltiples Fondos en Scratch

● Sección 5: Nuestro Primer VideoJuego Sin Código en Scratch
 14.- El Videojuego ATRÁPAME
 15.- Creando el Videojuego ATRÁPAME parte 1
 16.- Creando el Videojuego ATRÁPAME parte 2
 17.- Creando el Videojuego ATRÁPAME parte 3
 18.- Creando el Videojuego ATRÁPAME parte 4
 19.- Creando el Videojuego ATRÁPAME parte 5
 20.- Creando el Videojuego ATRÁPAME parte 6
 21.- Creando el Videojuego ATRÁPAME parte 7
 22.- Creando el Videojuego ATRÁPAME parte 8

● Sección 6: Un hasta luego...!
 23.- Despedida del Curso Crea tu Primer VideoJuego sin Código con Scratch', N'● Este curso inicia desde cero, y por lo tanto, los únicos requisitos para hacerlo son las ganas de aprender, y la ilusión de crear tu propio videojuego en Scratch sin Codigo', N'Con este curso te iniciarás en la creación de videojuegos de una manera Fácil y Divertida usando la herramienta Scratch. ¿Te gustan los videojuegos? ¿tienes ideas para realizar los tuyos propios?

Con este curso aprenderás los elementos básicos  para crear videojuegos de una forma totalmente práctica y usando la herramienta Scratch. Este herramienta visual te permite dar tus primeros pasos en el mundo del desarrollo de videojuegos sin necesidad de tener conocimientos previos y sin escribir una sola línea de código.

Scratch es un proyecto del Grupo Lifelong Kindergarten del MIT Media Lab y está diseñado para que niños a partir de 8 años y mayores aprendan rápidamente. Se ofrece online y de manera totalmente gratuita, de esta forma podrás programar donde y cuando quieras, solo vas a necesitar una computadora o tablet Y si tu conexión aI internet no es muy buena puedes instalarlo en tu compu.  No tienes excusas aprende Fácil y divirtiéndote en el camino!!

El curso es totalmente práctico. Comenzaremos con vídeos que te mostrarán una introducción a la herramienta y distintos aspectos básicos hasta que puedas crear tu Primer Videojuego en Scratch sin Codigo', N'● Si eres un apasionado a los videojuegos este curso es para ti !
● Amantes de la animacion en 2D, ya que el curso de videojuegos con scratch esta dirijido al mundo 2D
● Si no sabes programar videojuegos en Scratch..... este curso es para tí')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (28, 28, N'● Aprender a poner su dinero a trabajar mediante los bots automaticos de arbitraje cripto-fiat
	● Conocimiento básico para comprender tanto el modelo FIAT como el modelo de las criptomonedas
	● Saber de qué se trata el arbitraje así como en qué mercados se opera y ejemplo de operaciones de este tipo.
	● Conocimientos de seguridad informática tanto para las billeteras de bitcoin como para diferentes comunicaciones
	● Visión general : factores positivos, negativos, riesgos y oportunidades en este tipo de negocios.', N'● Sección 1: Conceptos básicos
 1.- Introduction
 2.- Ejemplo de creación de dinero y qué beneficios lleva el banco central y gobierno
 3.- Visión general de modelo de Cripto moneda y Fiat dentro de la microeconomía
 4.- Ejemplo comunicación entre bancs comerciales y banco central para transferencia
 5.- Visión general wallet bitcoin, la base 58 y tipos de plataformas para el almacén
 6.- Transacciones bitcoin en la Blockchain
 7.- Exchanges online para comprar y vender Bitcoins ordenados por países en 2020

● Sección 2: Seguridad
 8.- Antiphishing
 9.- Ejemplo de estafas más comunes a lo largo de la historia de internet
 10.- Doble autenticación
 11.- Ataques de denegación de servicio

● Sección 3: Mind.Capital
 12.- Sistema de Referidos en Mind.Capital
 13.- Visión general de funcionamiento de operaciones de Mind.Capital y su fiscalidad', N'● Tienes que tener una cuenta bancaria o tarjeta para poder hacer depositos en Bitcoin.
		● Tienes que estar en un país que no prohiba el uso del bitcoin.
		● Acceso a internet para poder usar las diferentes plataformas de control, pago y monedero.
		● Saber que toda inversión que se haga conforma un riesgo y no es recomendable invertir dinero que necesitas para vivir.', N'¿Le gustaría aprender la forma más rápida, fácil y detallada de entrar en el negocio de arbitraje cripto-fiat ? Si es así, te encantará este Curso Udemy, impartido por mí, LightningThought - Ingeniero Técnico informático de sistemas con un canal focalizado.

Este curso es la guía definitiva de arbitraje cripto-monedas y dinero FIAT mediante Mind.Capital y te enseñará todo lo que necesitas saber - entender Bitcoin, Blockchain, configurar una cartera segura, comprar Bitcoin, seguridad informática ( RSA, 2FA, etc) así como el funcionamiento del negocio de arbitraje como sus pros y contras.

El 2020 es posiblemente una de las últimas oportunidades de entrar en este negocio de cripto-monedas antes de que en unos años el arbitraje  cripto-fiat sea ajustado de tal forma que no haya hueco para sacar rendimientos positivos de forma fácil ( el arbitraje FIAT cuando nació permitió sacar beneficios rápidos haciendo cambio entre divisas hasta que fue ajustado ).

Este curso y los diferentes archivos excel que se incluye es una guía para su éxito personal y técnico/financiero en el campo del negocio cripto-fiat

Todas las herramientas que necesita para tener éxito con las cripto-divisas están incluidas en este curso y todo el curso está basado en el conocimiento práctico y la experiencia de la vida real y no en la teoría.

¡Muchas gracias por su interés y cada día mejor!

Angel Serrano Perez

LightningThought', N'● Cualquiera que quiera aprender a invertir en cripto moneda y no sepa por dónde empezar ...
● Cualquiera que quiera aprender las estrategias de comercio e inversión del día que mantienen el dinero entrando diariamente
● ¡ Cualquiera que no entienda Blockchain y quiera aprender cómo funciona, simplemente !')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (29, 29, N'● Lo que aprenderás:
	● Las principales técnicas de explotación de sistemas Linux que se utilizan en la vida real.
	● Los principios básicos de la escala de privilegios.
	● El manejo básico de Linux.
	● La utilización de las principales herramientas para pentesting.', N'● Sección 1: Introducción
 1.- Introducción y Review del Curso

● Sección 2: Preparación del Laboratorio
 2.- Instalando VirtualBox
 3.- Instalando Kali Linux
 4.- Actualiando Kali Linux
 5.- Reparando Metasploit-Framework

● Sección 3: Conociendo Linux
 6.- Comandos Básicos 1
 7.- Usuarios, Grupos, Root y Privilegios
 8.- Comandos Básicos 2
 9.- Ver, Crear y Editar Archivos

● Sección 4 : Metodología del Hacker Ético
 10.- Conociendo las 5 Fases del Hacking Ético

● Sección 5: Basic Pentesting 1
 11.- Root-me
 12.- Nmap
 13.- Searchsploit
 14.- Metasploit

● Sección 6: My File Server 1
 15.- Conociendo VulnHub
 16.- Enumeración
 17.- Enumerando FTP y Samba (SMB)
 18.- Nikto
 19.- SSH
 20.- Escalando Privilegios (Dirty Cow)

● Sección 7: InfoSec Warrior
 21.- Enumeración (conociendo Dirb)
 22.- Abusando del Código Fuente y Usando POST
 23.- Escalando Privilegios (Sudo -l y GTFOBINS)

● Sección 8: Despedida
 24.- Consejos Finales', N'● Tener interés por incursionar en el mundo de la seguridad informática.
		● Pasión por la computación.
		● Ser autodicta.
		● Dar siempre la milla extra.
		● 6GB de RAM para una buena experiencia.', N'En este curso descubrirás si la seguridad informática es lo tuyo. Nos dedicaremos a ver aquellos pasos más importantes para poder ejecutar por completo una intrusión a un sistema Linux. Estaremos viendo las herramientas más básicas que se utilizan al realizar un proceso de pentesting con ejemplos prácticos que te resulten fácil de entender.

Por otra parte, es necesario que tengas un buen espíritu autodidacta para indagar un poco más aquello cuya explicación quizás fue omitida. Mi intención principal es que descubras lo que de verdad puede implicar ser un hacker ético. Tampoco olvides hacer preguntas si algo no está claro.

Finalmente, bienvenido a este curso, espero lo disfrutes y llegues hasta el final.', N'● Todos aquellos con el interés de comenzar el estudio de la seguridad informática.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (30, 30, N'● Al finalizar el curso estarás en capacidad de gestionar de forma eficiente y semi-profesional los espacios de tu servicio de hosting, estarás en la capacidad de si así lo deseas de crear una nueva fuente de ingresos y en lo que mas me he esforzado en este curso es que aprendas a manejar el cpanel de tu propio hosting, ahorrando así dinero y tiempo.', N'● Sección 1: Clases
 1.- Introducción
 2.- Qué es un Hosting Web y para qué sirve
 3.- Cómo comprar un hosting web
 4.- Cómo comprar un dominio
 5.- Detalles generales del cpanel hosting
 6.- Gestionar correos en Hosting y web mail
 7.- Conectar web mail a Outlook
 8.- Dominios y cómo agregar un nuevo sitio a nuestro Hosting
 9.- CMS creador de sitios predeterminado de nuestro hosting
 10.- Administración de Archivos y conexión FTP hosting
 11.- Bases de datos y conexiones con nuestras bases de datos
 12.- Editor DNS y cómo eliminar una cuenta de hosting
 13.- Final del curso ¡FELICITACIONES!', N'● Conocimientos básicos en sistema, acceso a Internet, tener una cuenta de hosting no importa el proveedor, entre menos conocimiento tengas sobre el tema mas te gustará este curso y sobre todo muchas ganas de buscar una independencia tecnológica', N'Si eres un emprendedor virtual, un estudiante de programación web, un autodidacta o una persona normal que quiere ampliar sus conocimientos, este curso es para ti.

Frecuentemente nos encontramos con personas que quieren y necesitan estar en la capacidad de manejar y gestionar sus propios servicios de hosting web, de una forma fácil, no tan técnica, pero sobre todo profesional.

En este curso iremos desde lo más básico hasta un punto intermedio, con clases lo mejor explicadas y con ejemplos prácticos para vayas avanzando en la curva de aprendizaje.

Al finalizar estarás en capacidad de gestionar tu propio servicio de hosting web, aprenderás a crear cuentas de correo electrónico institucionales, conectar tu correo a outloock, crear y gestionar subdominios, aprenderás a conectar tu servicios de host vía FTP o si lo prefieres gestionar tus archivos desde el servicio web, instalar tu propio gestor de contenidos para este ejemplo lo haremos con Wordpress de una forma tan sencilla que no lo creerás, también aprenderás a conectar tus proyectos web a una base de datos creada previamente y por qué no, aprenderás a importar una base de datos desde tu PC a tu PHP My Admin, entre otras muchas cosas más.

En resumen, en adelante no necesitaras pagarle a nadie para que te ayude con este tema el ahorro será increíble y por el contrario podrías ser tú el próximo en empezar a tener un ingreso extra vendiendo tus propios sitios web corporativos.

Para este curso necesitaras conocimientos básicos en sistema, acceso a Internet, tener una cuenta de hosting no importa el proveedor, entre menos conocimiento tengas sobre el tema más te gustará este curso y sobre todo muchas ganas de buscar una independencia tecnológica. Pero tranquilo si no tienes un servicio web contratado podrás comprar uno, que es con el que usaremos de ejemplo durante este curso.

Te recuerdo que el conocimiento adquirido te servirá para aplicarlo casi en cualquier proveedor de servicio de alojamiento web. Por último, este curso es completamente GRATIS y estoy seguro te será de mucha ayuda, así que no lo pienses mas y nos vemos en la primera clase. ', N'● El principiante en el mundo del desarrollo web, el autodidacta que siempre esta en busca de crear sus propias herramientas, pero sobre todo aquel emprendedor virtual que inicia o quiere mejorar sus habilidades en cuanto a los negocios por Internet')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (31, 31, N'● Los fundamentos da la Ingeniería de Requisitos
	● Una introducción a la certificación CPRE-FL del IREB', N'● Sección 1: Introducción
 1.- Introducción

● Sección 2: La ingeniería de Requisitos
 2.- Unidad 1 - Fundamentos
 3.- Unidad 2 - Límites del Contexto y del Sistema
 4.- Unidad 3 - Elicitación de Requisitos
 5.- Unidad 5 - Documentación de Requisitos

● Sección 3: Conversación final
 6.- Un mensaje del instructor Sabino', N'● Conocimientos básicos en desarollo de software', N'Soy brasileño y graduado en Tecnologia (desde año 2000). Siempre trabajé con desarrollo de software. Empezé como desarrollador, después analista, gestor de proyectos e más recientemiente fui "Especialista en Ingeniería de Software" en uno de los más grandes bancos de América Latina.

Siempre trabajé con desarrollo de software. Empezé como desarrollador, después analista, gestor de proyectos e más recientemiente fui "Especialista en Ingeniería de Software" en uno de los más grandes bancos de América Latina.

Aunque tabajando  con desarrollo de software, siempre mantuve una posición paralela como profesor. Entonces, me gusta la oportunidad de compartir el conocimiento, sobre todo si yo también puede aprender.

¡Usted está invitado a ayudarme con este nuevo proyecto! ¡Nos vemos!', N'● Desarolladores de software
● Ingeniero de Requisitos
● Personas que tienen participación en proyectos de software')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (32, 32, N'● Introducción a R con todo lo que necesitas para afrontar problemas de Machine Learning desde cero
	● Introducción a Python con todo lo que necesitas para afrontar problemas de Machine Learning desde cero
	● Representación gráfica y base de los paquetes básicos de visualización de datos
	● Repaso de estadística básica que necesitarás para profundizar en el Machine Learning con los cursos de Juan Gabriel Gomila', N'● Sección 1: Introducción
 1.- Introducción
 2.- Conoce a JUan Gabriel Gomila, tu instructor online
 3.- Acerca de la valoración prematura del curso de Udemy
 4.- Los complementos perfectos para aprender mucho más 
 5.- Un regalo gratis por ser estudiante del curso
 6.- Cómo usar Udemy y buscar entre los materiales correctamente
 7.- Repositorio Github del curso

● Sección 2: Instalando nuestra herramienta de trabajo - R y RStudio
 8.- ¿Qué es R y RStudio?
 9.- ¿Cómo instalar R y RStudio?
 10.- Si tienes problemas con Ubuntu...
 11.- Ficheros, Scripts, RMarkDowns.
 12.- Problemas con la generación del PDF
 13.- La ayuda de R
 14.- Cómo isntalar y cargar librerías en R

● Sección 3: Instalando nuestra herramienta de trabajo - Python y Anaconda
 15.- Cómo instalar Python con Anaconda Navigator
 16.- Cómo instalar paquetes en Python gracias a pip
 17.- Instalación de pip en Windows
 18.- Las librerías estándar de Machine Learning ne Python
 19.- Los editores para programar en Python
 20.- Las 5 etapas del análisis de datos

● Sección 4: Una introducción al análisis predictivo y al Machine Learning
 21.- Ser Data Scientist es la profesión más sexy del siglo XXI
 22.- ¿Qué es el análisis predictivo de datos?
 23.- Data Scientist = Matemáticas + Programación + Business
 24.- Aplicaciones y ejemplos del mundo del Data Science
 25.- ¿Qué es el Machine Learning?

● Sección 5: Trabajando con R
 26.- R como calculadora
 27.- Funciones y Combinatoria con RStudio
 28.- Funciones trigonométricas
 29.- Redondeo y decimales en R
 30.- Cómo crear variables en R
 31.- Cómo crear funciones en R
 32.- Trabajar con números complejos
 Cuestionario1: Utilizando R como calculadora
 Tarea 1: Utilizando R como calculadora

● Sección 6: Trabajando con Python
 33.- Constantes en Python
 34.- Operaciones aritméticas y de redondeo
 35.- Operaciones de entrada y salida 
 36.- Operadores de decisión
 37.- Funciones matemáticas
 38.- Cómo definir funciones con Python
 39.- Argumentos variables y lambdas
 40.-Recursos Adicionales de Python
 Tarea 2: Repaso general de Python

● Sección 7: Estructuras de datos en R
 41.- Vectores y tipos de datos en R
 42.- Progresiones aritméticas y secuencias
 43.- Funciones y orden de vectores
 44.- Subvectores y filtros
 45.- Valores NA
 46.- Factores
 47.- Listas
 48.- Matrices	

● Sección 8: Estructuras de datos en Python
 49.- Las listas en Python
 50.- Los bucles en Python
 51.- Las tuplas en Python
 52.- Los diccionarios en Python
 53.- La librería Numpy y los arrays
 54.- Propiedades y manipulación de arrays

● Sección 9: Introducción a la representación gráfica
 55.- La función de plot
 56.- Parámetros del plot I
 57.- Parámetros del plot II
 58.- Añadir puntos y rectas a un gráfico
 59.- Añadir texto y curvas a un gráfico
 60.- Matplotlib
 61.- Múltiples gráficos
 62.- Figuras y ejes
 63.- Añadir texto
 64.- Cambios de escala

● Sección 10: Técnicas de hacker que necesitas dominar
 65.- La estadística, la base de datos para cualquier analista de datos
 66.- Un repaso de álgebra lineal en R
 67.- Retuculate, la librería para fusionar R y Python
 68.- Un ejemplo de qué sabras hacer si completas el curso de estadística descriptiva
 69.- Un ejemplo de qué sabrás hacer si completas el curso de probablididad
 70.- Un ejemplo de qué sabrás hacer si completas el curs de álgebra

● Sección 11: Final del curso y el inicio de tu formación como analista de datos
 71.- Enhorabuena Joven Padawan, has completado el curso de ML
 72.- Cómo seguir tu formación en Machine Learning
 73.- Clase Bonus', N'● Este curso no presenta ningún requisito ya que todos los conocimientos que se imparten en el empiezan desde cero
		● Tener un ordenador con cualquier sistema operativo instalado ya que todo lo que se aprenderá en el curso se aplicará de forma práctica con algoritmos programados en R y Python
		● Si tienes una base de programación el curso se te hará todavía más sencillo y lo agradecerás', N'¿Te suenan las palabras Machine Learning o Data Scientist? ¿Te pica la curiosidad de para qué sirven estas técnicas o por qué empresas de todo el mundo pagan un sueldo de 120.000 hasta 200.000$ al año a un científico de datos? 

Pues este curso está pensado y diseñado por todo un profesional del mundo del Data Science como es Juan Gabriel Gomila, de modo que os va a compartir todo su conocimiento y ayudaros a entender la teoría tan compleja sobre las matemáticas que tiene detrás, los algoritmos y librerías de programación con Python para convertiros en todo unos expertos a pesar de que no tengáis experiencia previa. 

Veremos paso a paso como empezar a trabajar con conceptos y lenguajes necesarios para llegar a dominar el mundo del Machine Learning. Con cada nueva clase y sección que completes tendrás unas nuevas habilidades que te ayudarán a entender este mundo tan completo y lucrativo que puede ser esta rama del Data Science.

También decirte que este curso es muy divertido, en la línea de Juan Gabriel Gomila y que aprenderás y te divertirás mientras vas aprendiendo acerca de la programación para Machine Learning con Python y con R.

Además, en el curso encontrarás ejercicios, datasets para practicar basados en ejemplos de la vida real, de modo que no solo aprenderás la teoría con los vídeos, si no también a practicar para construir tus propios modelos de Machine Learning.  Así que no esperes más y apúntate al curso de Machine Learning más completo y útil del mercado español!', N'● Estudiantes de ingenierías, matemáticas, informática o telecomunicaciones que quieran complementar sus asignaturas de estadística o inferencia con material adicional, ejemplos, ejercicios o casos prácticos.
● Desarrolladores que quieran empezar a utilizar R, Python y RStudio o Anaconda por primera vez
● Futuros estudiantes de cursos de Machine Learning, Inteligencia Artificial, Data Science o futuros doctorandos para tener una base sólida de estadística, programación y análisis descriptivos de los datos.
● Desarrolladores que quieran conocer Python como herramienta para el análisis de datos')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (33, 33, N'● Instalar y configurar CodeIgniter
	● Utilizar las funciones más importantes de CodeIgniter
	● Importar plantillas
	● Subir archivos
	● Moverse con soltura por CodeIgniter y programar mucho más rápido
	● Peticiones a bases de datos
	● Crear una aplicación web', N'● Sección 1: Bienvenida
 1.- Presentación

● Sección 2: Introducción
 2.- ¿Qué es CodeIgniter?
 3.- Modelo Vista Controlador (MVC)

● Sección 3: Descargar todo lo necesario
 4.- Descargar CodeIngniter 5
 5.- Descargar Xampp y añadir CodeIgniter
 6.- Escoger un editor de texto

● Sección 4: Configuración de las URL
 7.- Eliminar index.php de la URL
 8.- Crear un Virtual Host en Xampp

● Sección 5: Nuestro primer controlador
 9.- El primer controlador
 10.- Pasar variables a las funciones del controlador
 11.- Cambiar el controlador por defecto
 12.- Comunicación entre funciones del controlador y funciones Protected

● Sección 6: Nuestra primera vista
 13.- Cargar Vistas y pasarles variables
 14.- Utiliar el Parsing

● Sección 7: Crear y configurar la BBDD
 15.- Crear la Base de Datos
 16.- Configurar la Base de Datos en CodeIgniter
 17.- Crear Tablas en la Base de Datos

● Sección 8: Nuestro primer modelo
 18.- Crear y utilizar el Modelo

● Sección 9: Descargar e instalar un template
 19.- Buscar y descargar Template
 20.- Separar el template en varios archivos
 21.- Configurar las URL de los archivos
 22.- Crear la función LoadViews

● Sección 10: EL PROYECTO - Primeros pasos
 23.- Crear la tabla Posts en la Base de datos
 24.- Crear el modelo para los Posts
 25.- Subir Archivos | Crear Post Parte 1
 26.- Modificar la base de datos y Modelo para las Categorías | Crear Post Parte 2
 27.- Validation Form | Crear Post Parte 3
 28.- Validation Form 2 | Crear Post Parte 4
 29.- Añadir estilos al Formulario | Crear Post Parte 5
 30.- Añadir WYSWYG al formulario | Crear Post Parte 6
 31.- Rectificaciones finales

● Sección 11: EL PROYECTO - Editar las vistas
 32.- Editar el Header
 33.- Editar el Footer y modificar subida de archivos
 34.- Arreglar WYSWYG definitivamente

● Sección 12: EL PROYECTO - Programación del Newsletter
 35.- Programar Newsletter
 36.- Añadir AJAX al Newsletter
 37.- Programar el envío con AJAX
 38.- Finaliar Newsletter

● Sección 13: Programar vista del POST
 39.- Obtener información del post
 40.- Crear vista del post
 41.- Añadir datos al post
 42.- Añadir Categorías y Tags

● Sección 14: Añadir comentarios al POST
 43.- Crear Tabla en la Base de Datos
 44.- Crear Modelo de Comentarios
 45.- Crear la validación del formulario
 46.- Probando la validación del Formulario
 47.- Insertar comentarios en la BBDD
 48.- Mostrar los comentarios

● Sección 15: Programar las categorías
 49.- Introducción a la sección
 50.- Crear la vista
 51.- Obtener infromación de la categoría y posts
 52.- Montar la vista', N'
		● Conocimientos básicos de PHP
		● Conocimientos básicos de SQL
		● Conocimientos básicos de HTML y CSS', N'Actualmente me encuentro realizando tutoriales en Youtube en un canal llamado "DAVIDNAVARRODEV" ( youtube(punto)com/davidnavarrodev ) y realizando cursos online en www.davidnavarro.dev

En este curso aprenderás a utilizar el framework CodeIgniter 4 desde cero. CodeIgniter es un framework MVC Modelo/Vista/Controlador muy potente con el que podrás hacer casi todo lo que te propongas en cuanto a desarrollo se refiere.

En este curso aprenderás a base de práctica, ya que crearemos una aplicación web tipo Blog desde cero una vez introducidos los aspectos más importantes de CodeIgniter.', N'● Personas que estén interesadas en aprender cómo funciona CodeIgniter, un framework muy potente para realizar aplicaciones web.
● Personas que quieran aprender todo lo necesario para realizar una aplicación Web con CodeIgniter
● Personas con algo de conocimiento en el tema y que quieran dar un paso más allá')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (34, 34, N'● Crear páginas web modernas y responsivas
	● Aprender Bootstrap 4
	● Diseñar páginas web modernas
	● Diseñar páginas web con Html y Css', N'● Sección 1: Creación de una página web con Bootstrap 4
 1.- Previo al curso - Recursos de aprendizaje
 2.- Introducción, instalación de proyecto y maquetación del Hero
 3.- Incrustar Video de Youtube en modal
 4.- Crear sección de miembors del equipo y sección de precios
 5.- Crear sección de noticias (blog) y Call to Action
 6.- Creación del Footer', N'● Conocimiento básico de html
		● Conocimiento básico de css
		● Un editor de texto', N'En este sencillo tutorial aprenderás a crear una increíble página web desde 0 utilizando Bootrstrap 4, es un Framework de CSS que nos permite crear páginas web rápidamente y que sean 100% responsivas. También utilizaremos un CDN de Ionic Icons y Google Fonts para mejorar la apariencia de nuestra página.', N'● Estudiantes de diseño
● Estudiantes de programación
● Profesionales de diseño web
● Desarrolladores Web
● Programadores web
● Diseñadores')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (35, 35, N'● Google AppSheet
	● Crear apps sin saber de programación
	● Transformar hojas de cálculo (Excel o Google Sheets) en aplicaciones que funcionan tanto en móvil como en PC
	● Automatizar tareas cotidianas como la generación de formularios, envío de emails, actualización ágil de los datos, etc
	● Gestionar equipos convirtiendo tus aplicaciones en entornos colaborativos	
	● Enviar notificaciones Push a los usuarios que elijas', N'● Sección 1: Curso Inicial de AppSheet
 1.- Presentación
 2.- Qué es AppSheet
 3.- Potencial
 4.- Preparación de los datos 
 5.- Data Relaciones entre tablas
 6.- UX, User Interface
 7.- Botones y automatizaciones', N'● Conocimientos básicos de Excel o Google Sheets
		● No hace falta saber nada de programación. No se usará código en ningún momento.', N'En este curso Inicial de AppSheet comenzarás a entender todos los puntos necesarios para empezar a usar la nueva plataforma de Google con la que podrás crear Apps sin necesidad de saber nada de programación gracias a la tecnología NoCode - SinCódigo.

AppSheet te va a permitir crear aplicaciones en minutos que pueden simplificar, agilizar, potenciar y sobre todo, automatizar las tareas que se hacen en cualquier empresa.

Las aplicaciones que diseñes serán herramientas tan versátil como ágil ya que funcionan en TODO tipo de dispositivos:
● Smartphone (Tanto Android como iOS)
● Tablet (Tanto Android como iOS)
● PC (Funcionan en cualquier navegador de Windows y Apple)

Ejemplos para los que se puede usar AppSheet en la vida real:
● Toma de datos a través de un formulario en la propia App. Te olvidarás para siempre del papel y podrás consultar todo lo que registres simplemente con abrir tu smartphone

● Gestión de inventario. Podrás controlar todas las entradas y salidas, definiendo así tu stock actual, así como que la App te avise cuando sobrepasas el limite mínimo de stock para que sepas cuando hacer tus pedidos. Todos los procesos podrás enlazarlos capturando los códigos de barras o QR de tus productos ya que AppSheet permite esta funcionalidad.

● Generación de documentos. Podrás generar tus propios presupuestos, facturas, cualquier tipo de informe firmado desde la App. En resumen, todos los documentos que se puedan necesitar en el trabajo diario de cualquier empresa.

● Gestión de Clientes (CRM). Podrás crear tu propio CRM en unos minutos para cumplimentar los campos que necesites y analizar y visualizar todo el histórico de contactos o relaciones que hayas tenido con cada cliente.

● Reparto de pedidos. Podrás registrar las direcciones de tus clientes y establecer tu hoja de reparto. AppSheet te permitirá que con un clic se despliegue Google Maps y marque la ruta a seguir hasta llegar al destino.

● Envío de Notificaciones Push. Cualquier evento se puede planificar para que lleguen notificaciones a los usuarios de las Apps que crees. Además podrás automatizar este proceso para que te avise cuando se hagan ciertos cambios en los datos de tu App. Por ejemplo, cuando el stock de un producto pase de el límite que tu establezcas, o cuando alguien complete un determinado formulario.

● Gestión de proyectos. Con AppSheet podrás diseñar tu propia aplicación para gestionar tareas o proyectos definiendo el alcance, quien debe desempeñar cada proyecto, el grado de avance de cada tarea y las fechas de inicio y fin de cada una para que todo esté bajo control.

● Registro de entrada y salida de empleados. Podrás crear un control mediante códigos QR que te indique las salidas y entradas de empleados en tu oficina.

● Materiales de obra. Podrás crear una App para registrar cuando y quien ha utilizado una determinada herramienta para tener un control exhaustivo de todas estas herramientas.

● TODO LO QUE TE IMAGINES. Todo lo que se realice en tu día a día puede ser susceptible de encontrar una manera de gestionarlo mediante aplicaciones de AppSheet, simplemente tienes que tener el conocimiento de cómo hacerlo, y el resto será todo muy sencillo.

Google AppSheet está llamado a ser la mayor revolución de los entornos colaborativos en empresa después de la revolución que supuso Excel en su día. Si en tu empresa has utilizado Hojas de cálculo alguna vez, espera a ver todo el abanico de posibilidades que se te abre ahora con esta herramienta.', N'● Personas que quieren crear Apps sin saber programar
● Empresas que quieren empoderar a sus empleados para tener una mayor eficiencia y productividad
● Personas que quieren dedicarse a vender Apps para empresas
● Personas en desempleo que quieren mejorar su empleabilidad
● Estudiantes que desean aprender herramientas de última generación
● Personas que trabajan para una empresa y quieren progresar dentro de la misma')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (36, 36, N'● Manejar algunas de las principales funcionalidades del software Unity 3D orientadas a la creación de contenidos de Realidad Virtual (VR) inmersiva.
	● Crear contenidos básicos de VR inmersiva teniendo en cuenta los tipos de escenario, la iluminación y otros elementos (gameobjects, prefabs, sistemas de partículas...).
	● Compilar las apk''s de nuestras creaciones de VR inmersiva, para dispositivos móviles Android, mediante el SDK de GoogleVR para Unity 3D.', N'● Sección 1: Presentación
 1.- Introducción al curso

● Sección 2: Introducción al curso
 2.- Presentación
 3.- Texto Introducción al curso

● Sección 3: Introducción
 4.- Texto ¿Qué es Unity 3D?
 5.- ¿Qué es Unity 3D?
 Cuestionario 1: ¿Qué es Unity 3D?

● Sección 4: Instalaciones
 6.- Instalación Unity.
 7.- Texto Instalación de Unity 3D
 8.- Instalación del SDK de Google VR
 9.- Texto Instalación del SDK
 10.- Instalación de Android Studio
 11.- Texto Instalación de Android Stdui
 Cuestionario 2: Instalaciones

● Sección 5: Introducción al entorno de Unity 3D
 12.- Conociendo el editor
 13.- Texto Conociendo el editor
 14.- Conociendo el editor 2
 15.- Texto Conociendo el editor 2
 16.- Conociendo el editor 3
 17.- Texto Conociendo el editor 3
 18.- Conociendo el editor 4
 19.- Texto Conociendo el editor 4
 Cuestionario 3: Propiedades del editor

● Sección 6: Creación del escena
 20.- Terrenos I
 21.- Texto Terrenos I
 22.- Terrenos II
 23.- Texto Terrenos II
 Cuestionario 4: Terrenos
 24.- Skybox
 25.- Texto SkyBox
 Cuestionario 5: Skybox

● Sección 7: Componentes
 26.- GameObject
 27.- Texto GameObject
 28.- Prefabs
 29.- Texto Prefabs
 30.- Cámeras
 31.- Texto Cámeras
 32.- Lightmapping
 33.- Texto Lightmapping
 Cuestionario 6: Componentes

● Sección 8: Audio
 34.- Audio
 35.- Texto Audio
 Cuestionario 7: Audio

● Sección 9: AssetStore
 36.- AssetStore
 37.- Texto AssetStore
 Cuestionario 8: AssetStore

● Sección 10: Importación de modelos 3D
 38. Cómo obtener recursos para nuestro escenario
 39.- Texto Cómo obtener recursos para nuestro escenario
 40.- ¿Qué formato es el correcto?
 41.- Texto ¿Qué formato es el correcto?
 42.- Cómo crear modelos propios
 43.- Texto Cómo crear modelos propios
 Cuestionario 9: Importación y creación de objetos

● Sección 11: Prácticas: Proyecto Alfa
 44.- Texto Práctica 1
 45.- Práctica 1: Crea un escenario con un terreno de determinadas características
 46.- Texto Solución 1
 47.- Solución 1: Crea un escenario con un terreno de determinaas características
 48.- Texto Práctica 2
 49.- Práctica 2: Añade un Skybox y niebla tu escenario
 50.- Texto Solución 2
 51.- Solución 2: Añade in Skyblock y niebla tu escenario

● Sección 12: Prácticas: Proyecto Beta
 52.- Texto Práctica 3
 53.- Práctica 3: Crea un escenario cerrado
 54.- Texto Solución 3
 55.- Solución 3: Crea un escenario cerrado

● Sección 13: Prácticas: Proyecto Gamma
 56.- Texto Práctica 4
 57.- Práctica 4: Crea un escenario cerrado complejo
 58.- Texto Solución 4
 59.- Solución 4: Crea  un escenario cerrado complejo

● Sección 14: Ejemplos para prácticas extra
 60.- Ejemplo de animaciones: Movimiento del mar
 61.- Texto Ejemplo de animaciones: Movimiento del mar
 62.- Ejemplo de sistema de partículas: Lluvia
 63.- Texto Ejemplo de sistema de partículas: Lluvia

● Sección 15: Building (Compilación)
 64.- Building para Android
 65.- Texto Building para Android
 66.- Compulacion de tu Apk
 67.- Texto Compulación de tu Apk
 68.- Comparte tu compilación

● Sección 16: Conclusiones
 69.- Aspectos a considerar
 70.- Conclusión del curso

● Sección 17: Continua aprendiendo
 71.- Continua aprendiendo', N'● La descarga de los materiales y la instalación del software necesario se explicarán convenientemente en el desarrollo del curso. No es necesaria una descarga previa.', N'Aprende a diseñar y desarrollar con el engyne Unity 3D, una aplicación para tu dispositivo móvil (Android) y visualizarlo desde tus gafas Cardboard, para experimentar la visión 360º que te ofrece el universo de la Realidad Virtual.

Esta innovadora experiencia te ofrece la posibilidad de recrear cualquier escenario y adentrarte en dicha creación con tu visor Cardboard.

Aprenderás la instalación de los software''s necesarios.

● Creación de escena

● Modelar terrenos 3D

● Inserción de audio

● Formatos de objetos 3D

● Crear lluvia

● Efecto de movimiento del mar

● Y sobre todo, conceptos de la Realidad Virtual', N'● Perfiles interesados en iniciarse en el desarrollo de contenido en Realidad Virtual Inmersiva (VR) para dispositivos móviles Android (SDK GoogleVR).')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (37, 37, N'● Instalar y configurar un entorno de desarrollo completo para Apps con Android Studio.
	● Conocer herramientas para un desarrollo mas rápido y limpio con la ayuda de plugins y atajos.
	● Probar aplicaciones en emuladores con diferentes características.
	● Conocer la estructura de un proyecto de android.
	● Capacidad de resolver errores en el desarrollo con herramientas propias de Android Studio.
	● Implementar control de versiones (git) en sus proyectos para trabajar en equipo.', N'● Sección 1: Introducción, descargas e instalaciones.
 1.- ¿De qué va el curso y cómo tomarlo?
 2.- (Opcional) Aprende a usar Udemy
 3.- ¿Por qué Android Studio=
 4.- Descargando Android Studio 3
 5.- SDK
 6.- Consejos: Un SDK actualizado
 7.- Añadiendo plugins
 Cuestionario 1: Instalación
 8.- Tipos, recuersos y solución a problemas comunes
 9.- Conclusiones

● Sección 2: Emuladores
 10.- Beneficios y limitaciones
 11.- Configurando AVD a nuestras necesidades
 12.- Genymotion, instalación y configuración
 13.- Extra: Corriendo una app en un dispositivo real
 Cuestionario 2: Emuladores
 14.- Conclusiones

● Sección 3: Conociendo Android Studio y la estructura de un proyecto
 15.- Creación de una nueva app con más recursos
 16.- Explorando un proyecto de android
 17.- Recursos de un proyecto 
 18.- Personalizando Android Studio
 19.- Aprendiendo a debugear
 20.- TODO y Fixme, comentarios avanzados
 21.- Uso de Logcat
 Cuestionario 3: Explorando un proyecto de android
 22.- Conclusiones

● Sección 4: Control de versiones
 23.- ¿Qué ventajas tiene usar un control de versiones?
 24.- Instalando Git
 25.- Abrir cuenta de Github
 26.- Subir un proyecto al repositorio de Github
 27.- Hacer commit, push and pull con Github
 28.- Registrarse en Bitbucket
 29.- Añadiendo plugin de Bitbucket y haciendo share, commit and push
 30.- Bajar un proyecto de Bitbucket(clone)
 31.- Añadir usuario en bitbucket
 32.- Bajando cambios de otro desarrollador
 33.- Comparando y revirtiendo campos
 Cuestionario 4: Características del control de versiones
 34.- Conclusiones

● Sección 5: Errores y Soluciones con Android Studio 
 35.- ¿Qué problemas comunes existen?
 36.- Clean project
 37.- Invalidate cache and restart
 38.- Problemas con el preview
 Cuestionario 5: Problemas comunes
 39.- Conclusiones

● Sección 6: Extras
 40.- ButterKnife
 41.- Mensajes con Toast y Snackbar
 42.- Instant run
 43.- Navegación Básica (Parte I)
 44.- Control Básico del IDE Android Studio
 45.- Programación Asistida Básico Parte I
 46.- Refactorización Básica
 47.- Atajos de Android Studio (comandos)
 Cuestionario 6: Examen final
 48.- Conclusiones finales

● Sección 7: Bonus
 49.- ¿Qué más quieren aprender? Participa
 50.- Más material para ti
 51.- Regalos para ti', N'● Un ordenador con conexión a Internet( el cuso se desarrolla en Windows pero todas las cosas aquí mostradas son multiplataforma).
		● Conocimiento básico de que es un entorno de desarrollo(deseable).
		● Experiencia mínima como desarrollador en algún otro lenguaje(deseable).', N'● Un curso completo sobre como tener un espacio de trabajo completo para desarrollar apps para Android con Java.

Tener instalado y configurado un entorno de desarrollo correctamente, es la base para todo gran proyecto. Aprende a usar las herramientas correctas conocidas y no tan conocidas para desarrollar como los profesionales.

¿Quieres iniciar a desarrollar apps nativas en Android Studio? ¿Quieres estar seguro de que tienes todo lo necesario y que le estas dando un uso correcto? ¿Has intentado iniciar en android pero no encuentras tutoriales que abarquen todos los temas o no están disponibles en español?

● No sigas buscando, estas en el lugar correcto para ti.

Aquí aprenderás porque Android Studio es el mejor medio para desarrollar apps nativas para Android, y a su vez explicaremos el uso de otras herramientas y recomendaciones para que logres obtener unas bases solidas de como empezar en este mundo del desarrollo móvil para Android.

En mi formación al aprender Java para Android, me tope con un sin fin de dudas y problemas que si bien, hay mucha información al respecto en Internet, se lo frustrarte y tardado que es encontrar las respuestas y estar seguro de que son las mas optimas para el futuro, conozco que se siente y se como orientarte a tomar el camino correcto para que logres tus objetivos.

Es un hecho que se aprende mas con la practica que con la teoría, por eso este curso en vídeo, va explicando paso a paso como hacer cada parte de las secciones en el curso, que te permitirán ir trabajando a la par, junto a una sección de preguntas en cada clase, que harán que logres tu objetivo de forma segura y ahorrando montones de horas en lugar de buscar en foros y videotutoriales incompletos.

Todas las herramientas aquí mostradas son gratuitas, así que podrás hacer uso de cada cosa vista en las clases sin pagar un solo céntimo.

● Android Studio, El IDE oficial para Android

Android Studio fue anunciado el 16 de mayo de 2013 y es un entorno de desarrollo multiplataforma que proporciona las herramientas más rápidas para la creación de aplicaciones en todos los tipos de dispositivos Android.

La edición de códigos de primer nivel, la depuración, las herramientas de rendimiento, un sistema flexible y con un mecanismo instantáneo de compilación e implementación te permiten concentrarte en la creación de aplicaciones únicas y de alta calidad.

● Contenido

En el curso te explicare los conceptos básicos de los componentes principales y sus funciones, así mismo veras alternativas para herramientas secundarias tales como emuladores, controladores de versiones, plugins, etc... a continuación se muestran los temas principales que aprenderás:

1.- Descargar, instalar y conocer.

En esta sección se indicara con exactitud de donde descargar lo básico y lo extra(pliguns, emuladores, etc...) y su respectiva instalación paro a paso. Configurar y explorar opciones vitales para un correcto funcionamiento.

 1. -Android Studio
 2. -Emuladores
 3. -Plugins
 4. -Recursos extras

2.- Creando y probando una app.

Aquí se cubrirá el proceso completo para crear un nuevo projecto(usando plantillas), con el fin de conocer nuestro entorno, lanzar en un emulador o en un dispositivo físico con Android.

Explorar aspectos básicos sobre la exploración de una aplicación en tiempo de ejecución con la finalizad de observar nuestros procesos internos y a su vez, poder detectar errores con mayor facilidad.

3.- Trabajando en equipo como los profesionales(control de versiones).

Enfocado a demostrar como tener una herramienta muy poderosa a la hora de crear aplicaciones en proyectos grandes y pequeños. Muy útil para trabajar en equipo o simplemente para tener un respaldo con control total en nuestros cambios a través del tiempo.', N'● Ideal para quien desea iniciar en el desarrollo de Apps nativas de Android.
● Gente con dudas sobre como comenzar correctamente a desarrollar en Android.
● Programadores de Android que no estén seguros de si lo están haciendo bien.
● Programadores de otros lenguajes que quieren aprender una nueva plataforma.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (38, 38, N'● Aumentar la velocidad de codificación
	● Conocer atajos útiles
	● Usar menos el mouse y más el teclado
	● Editar código a mayor velocidad', N'● Sección 1: Introducción
 1.- Introducción
 2.- ¿Cómo funciona el curso?
 3.- Instalaciones necesarias y configuración
 4.- Descarga del proyecto

● Sección 2: Ediciones y tips básicos
 5.- Introducción al a sección
 6.- Atajos del teclado
 7.- Movimiento de líneas - Primera parte
 8.- Movimiento de líneas - Segunda parte
 9.- Comentar código
 10.- Comentar código y partes del código
 11.- Creación rápida de archivo
 12.- Ir a la definición
 13.- Borrar líneas
 14.- Deshacer y Rehacer
 15.- Zen mode
 16.- Terminal integrada
 17.- Emmet wrap y atajos personalizados
 18.- Manejo de tabs

● Sección 3: Multi Cursores y edición rápida
 19.- Introducción a la sección
 20.- Clonar líneas - Copy line down
 21.- Crear cursores arriba y abajo de la posición actual
 22.- Multi cursor - Copy
 23.- Multi cursor para formato
 24.- Multi cursor - Lowercase y Uppercase
 25.- Mútiples cursores en posiciones específicas
 26.- Siguiente ocurrencia
 27.- Creación de un arreglo de días

● Sección 4: Difiniciones y Snippets
 28.- Introducción a la sección
 29.- Definiciones en un archivo
 30.- Ir a una línea
 31.- Markdown view - live-preview
 32.- Replace Symbol
 33.- Snippets básicos
 34.- Snippet personalizado - tarea

● Sección 5: Extensiones
 35.- Introducción a las sección 
 36.- Paste JSON as Code
 37.- TODO Tree - TODO Highlight
 38.- Bookmarks
 39.- Material Icon Theme 
 40.- Material Theme
 41.- Live Server
 42.- Color Hightlight
 43.- Bracket Pair Colorier 2

● Sección 6: Cierre del curso
 44.- Todas mis extensiones hasta el momento
 45.- Más sobre mis cursos
 46.- Fin del curso', N'● Conocimiento básico de VSCode es recomendado pero no obligatorio', N'Descripción General:

Visual Studio Code es un editor de texto bastante poderoso con muchos atajos y formas de editar código. Este curso se enfoca en 2 áres principales:
● Aumentar tu velocidad de desarrollo
● Conocer más sobre VSCode

El curso tiene ejercicios y muchos trucos para realizar la edición del código mucho más rápida.

Origen del curso:
Este curso surgió, porque muchos alumnos me preguntan mucho cosas cómo:
● ¿Cómo hiciste eso?
● ¿Cómo editaste el código tan rápido?
● ¿Qué hiciste para cambiar todo a la vez?
● Etc.

Entonces tuve la idea de crear este curso para crear video tutoriales de una forma estructurada, que me permita explicarles cómo hago todo eso.

Este curso NO ES:

Espero que me comprendan que este curso NO TIENE por objetivo trabajar con frameworks, debuggers, enlace con funcionalidades de  otros programas, etc... Tampoco explicaré que hace cada opción de cada menú de VSCode. No, el objetivo es ayudarles a editar su código a mayor velocidad y utilizar los atajos que más les resulten útiles para su trabajo.

Posiblemente el curso siga creciendo dependiendo de cómo vaya pasando el tiempo y las necesidades cambien.

Posiblemente alguno de ustedes ya conozca el 100% del contenido del mismo, pero si puedo ayudarles aunque sea a mejorar un poco a mejorar su velocidad o edición de código, estoy más que satisfecho!

Disfruten el curso', N'● Cualquier programador que use VSCode
● Cualquier diseñador que use VSCode
● Cualquier persona que quiera editar código en esta herramienta')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (39, 39, N'● Crear y configurar máquinas virtuales con VirtualBox
	● Configurar la red en máquinas virtuales
	● Instalar el paquete VirtualBox Guest Additions
	● Configurar carpetas compartidas
	● Instalar y configurar Centos 7
	● Grabar las sesiones de trabajo con las MVs
	● Instalar y configurar Ubuntu 20
	● Guardar y restaurar instantáneas de nuestras máquinas virtuales
	● Instalar y configurar PostgreSQL 12
	● Configuración inicial de un servidor de bases de datos PostgreSQL', N'● Sección 1: Introducción
 1.- Introducción
 2.- Descarga e instalación de VirtualBox
 3.- Comprueba la configuración de tu BIOS
 4.- Creación y configuración de una máquina virtual CentOS
 5.- Instalación y configuracuón de CentOS 7
 6.- Instalación de las Guest Additions
 7.- Instalación y configuración de PostgreSQL
 8.- ¿Te animas a este reto? Creamos la segunda máquina virtual con CentOS
 9.- Creación, instalación y configuración de dos MVs con Ubuntu 20
 10.- Comprobando la comunicación entre servidores
 11.- Guardando instanáneas de las MVs y grabación de las sesiones de trabajo

● Sección 2: Bonus
 12.- Técnica de backup y recuperación: Archivado continuo y Point-In-Time Recovery
 13.- ¿Quieres saber más sobre copias de seguridad y recuperación en PostgreSQL?
 14.- Sistema de réplica para Alta Disponibilidad en PostgreSQL 12+
 15.- Configura este sistema de réplica, paso a paso, con scripts listos para usar
 16.- Cupones para mis otros cursos sobre Administración de Base de Datos', N'● No necesitas ningún requisito previo. Tan sólo un ordenador con el que poder practicar.', N'Si te interesa aprender cómo transformar tu ordenador con Windows 10 en un auténtico laboratorio de pruebas, a base de crear una granja de máquinas virtuales de cualquier tipo.. ¡este curso te interesa!

Te explicaré, paso a paso, como crear y configurar máquinas virtuales utilizando el software de virtualización VirtualBox.

En estas máquinas virtuales instalaremos dos de las distribuciones de Linux más conocidas: Centos, y Ubuntu.

Veremos cómo descargar las isos, y la instalación paso a paso.

Te enseñaré a configurar la red, para que tus máquinas virtuales puedan comunicarse entre sí y con la máquina anfitrión.

Te explicaré cómo instalar las Guest Additions, un paquete de aplicaciones, y controladores, que extienden las funcionalidades de las MVs, mejoran su rendimiento y aumentan la usabilidad.

Todavía hay más porque te mostraré como configurar carpetas compartidas entre máquinas, incluida la máquina anfitrión, cómo guardar una instantánea del momento actual de tu máquina, para que, si en el transcurso de tus experimentos llegas a un callejón sin salida y quieres retroceder, puedas hacerlo de una manera rápida y sencilla, sin necesidad de instalar y configurar todo desde el principio.

¿Sabes que con VirtualBox puedes grabar tus sesiones de trabajo en vídeo de una manera muy sencilla? Esto es muy interesante ya que te permite revisar lo que has hecho, tanto como para tomar notas si has conseguido lo que pretendías como para, en caso contrario, detectar posibles errores. O para compartirlo con otras personas.

Y por último, pero no menos importante. De hecho es lo más importante para mí y para mis alumnos, te guiaré paso a paso en la instalación de la última versión estable de PostgreSQL en estos momentos.

También haremos algunas configuraciones en los servidores de bases de datos PostgreSQL para que desde un servidor cualquiera podamos conectar con los otros, lo cual nos dará muchísimo juego a la hora de practicar y aprender este potente y envidiable sistema gestor de bases de datos.

¡Ah! ¡se me olvidaba! hay una cosa más que te contaré sobre VirtualBox pero.. me la guardo.. es una sorpresa :-D', N'● Todos aquellos que quieran aprender a crear máquinas virtuales con VirtualBox.
Y personas interesadas en introducirse, o profundizar, en temas relacionados con la administración de bases de datos y quieran empezar por configurarse un entorno de pruebas para practicar.')
INSERT [dbo].[ContenidoCurso] ([Id], [IdCurso], [Aprender], [Contenido], [Requisitos], [Descripción], [ParaQuienEs]) VALUES (40, 40, N'● Conceptos básicos de Álgebra Lineal
	● Operaciones con matrices
	● Operaciones de fila
	● Matriz inversa
	● Determinantes
	● Matriz inversa con determinantes
	● Sistemas de ecuaciones lineales
	● Resolución de sistemas de ecuaciones lineales', N'● Sección 1: Matrices
 1.- Sistemas de ecuaciones lineales (repaso)
 2.- Matrices, definicioness generales
 3.- Suma de matrices
 4.- Producto de una matri por un escalar
 5.- Multiplicación de matrices
 6.- Operaciones elementales de fila
 7.- Matriz inversa

● Sección 2: Determinantes
 8.- Determinante de una matriz
 9.- Determinante por menores y cofactores
 10.- Traza de una matriz y matriz adjunta
 11.- Determinantes y matriz inversa

● Sección 3: Sistema de ecuaciones lineales
 12.- Sistemas de ecuaciones lineales
 13.- Resolución de sistemas de ecuaciones lineales', N'● Fundamentos de Matemática', N'En este curso aprenderás sobre las bases del álgebra lineal comprendidas por: matrices, determinantes y sistemas de ecuaciones lineales.

El grupo de RMS espera que este curso te ayude a aprobar la primera parte de tu curso de Álgebra Lineal.

Para poder mantener este curso de forma gratuita, hemos dividido el curso en tres secciones: Fundamentos de Álgebra Lineal, Álgebra Lineal I y Álgebra Lineal II, pero cabe recalcar que los temas abarcados en estos tres cursos corresponden a la materia de Álgebra Lineal.', N'● Estudiantes universitarios')
SET IDENTITY_INSERT [dbo].[ContenidoCurso] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (1, N'Ryan Cresswell, Brian Yang', N'Estrategias de marketing en redes sociales', N'Como utilizar los grupos de Facebook, los foros de nichos específicos, y vídeos de YouTube', N'https://img-a.udemycdn.com/course/240x135/3707286_8b73.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (2, N'Andrés Hernández Mata', N'Metodología de la Programación | PSeInt, DFC, C++', N'Crea algoritmos y diagramas de flujo para cualquier lenguaje de programación.', N'https://img-b.udemycdn.com/course/240x135/2971364_eb9b.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (3, N'Alex Joel Pagoada Suazo', N'Curso de C# .NET desde cero hasta lo mas avanzado full stack', N'Curso de C# .NET desde cero para el desarrollo de diversas aplicaciones multiplataforma', N'https://img-a.udemycdn.com/course/240x135/2310326_6691_6.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (4, N'Elio Marcano', N'Javascript Curso Gratis 2020', N'El lenguaje de programación más popular y amado por la mayoría de los programadores. Aprende Javascript gratis', N'https://img-b.udemycdn.com/course/240x135/2760004_d399.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (5, N'Alvaro Chirou', N'Master en Python 3.x. Aprende de 0 a EXPERTO con Práctica', N'En este curso aprenderás desde las bases hasta POO en Python Versión 3. Empieza a Aprender ya Mismo de forma Gratuita.', N'https://img-b.udemycdn.com/course/240x135/2297910_788e_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (6, N'Global Mentoring Ing. Ubaldo Acosta', N'Fundamentos de Java: Aprende Java desde cero con Netbeans!', N'Aprende a programar en Java desde cero, paso a paso y sin misterios, con el IDE de Apache Netbeans y el JDK 13', N'https://img-a.udemycdn.com/course/240x135/1332174_a8cc_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (7, N'render2web Tus Recursos Diseño, Desarrollo, Web y 3D', N'Como Crear un CRUD con PHP y SQL Server', N'Aprende como trabajar con PHP y SQL Server con este curso práctico y sencillo', N'https://img-a.udemycdn.com/course/240x135/1121448_c9f5_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (8, N'Arturo Borja', N'Full-Stack CRUD con React JS, ASP.NET Core y SQL Server', N'Creando y conectando un CRUD con API Rest utilizando React JS y ASP.NET Core', N'https://img-b.udemycdn.com/course/240x135/3460440_391e_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (9, N'Mywebstudies .com', N'CURSO GRATUITO DE ORACLE SQL', N'Curso básico de programación Sql para Oracle', N'https://img-a.udemycdn.com/course/240x135/3427346_32e9_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (10, N'Daniel Lledó Martínez', N'Curso Power BI - Crea un Dashboard desde cero', N'Curso de Power BI gratis para crear un dashboard paso a paso utilizando Power Query, Dax, modelado de datos y gráficos', N'https://img-a.udemycdn.com/course/240x135/3543714_56e8_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (11, N'Diego Plascencia', N'Masterclass: Web usando Next.js + TailwindCSS + Vercel', N'Aprende a realizar una página web para mostrar tu portafolio con estas poderosas herramientas de última generación', N'https://img-a.udemycdn.com/course/240x135/3514970_dcb5_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (12, N'Carlos Alfaro', N'CURSO de CSS desde CERO a EXPERTO [AVANZADO]', N'CURSO de CSS desde CERO a EXPERTO: Aprende CSS desde lo mas BÁSICO hasta propiedades AVANZADAS', N'https://img-a.udemycdn.com/course/240x135/3877478_1aa3_5.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (13, N'Iki Capitan', N'Como Crear Flappy Bird en Unity', N'Making Flappy Bird in Unity', N'https://img-a.udemycdn.com/course/240x135/3840278_9a15_5.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (14, N'Guillermo Rojas', N'Introducción al Marketing Digital en Latinoamérica', N'Si necesitas aprender desde cero, si ya tienes un emprendimiento o quieres dedicarte a administrar redes, bienvenido', N'https://img-b.udemycdn.com/course/240x135/3961516_6953_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (15, N'Diego León', N'Tablas dinámicas intensivo', N'Domina el arte de las tablas dinámicas', N'https://img-b.udemycdn.com/course/240x135/3698162_4acf_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (16, N'Carlos Blanco Gómez', N'Aprende Jquery para implementar tus aplicaciones web', N'Aprenderás todos lo conocimientos necesarios para agregar jquery a tus páginas web y hacerlas más dinámicas', N'https://img-a.udemycdn.com/course/240x135/1208546_0b7b_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (17, N'Antonio Sánchez Corbalán - LPI Training Partner', N'Bash - Intérprete de Comandos de Linux. Aprende desde cero', N'Aprende cómo funciona el intérprete de comandos bash explicado paso a paso y con ejemplos.', N'https://img-a.udemycdn.com/course/240x135/1152156_d52e_6.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (18, N'Jorge Luis García Coello', N'Aprende a crear tu primer sitio web con Laravel', N'Curso introductorio a Laravel PHP', N'https://img-b.udemycdn.com/course/240x135/1104380_304c_5.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (19, N'Jose Luis Tábara', N'Curso de Mathematica', N'Matemáticas con Wolfram Mathematica', N'https://img-a.udemycdn.com/course/240x135/2765164_0b05.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (20, N'Noelia Silva', N'GIT y GITHUB desde cero!', N'Maneja los repositorios más actuales del mercado', N'https://img-a.udemycdn.com/course/240x135/2819881_3f4b_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (21, N'Adrian Heras', N'Diseño web desde 0. Aprende PUG desde cero. Edición 2020', N'Uno de los motores de plantillas más usado', N'https://img-a.udemycdn.com/course/240x135/2841114_d320_4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (22, N'Rudy Rolando Pañuni Montes ', N'FreeHand desde cero', N'Crea y edita composiciones vectoriales', N'https://img-b.udemycdn.com/course/240x135/2770534_b131_4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (23, N'Damianenko Max Zeballos Torres', N'AWS CloudFormation - Infraestructura como codigo', N'Curso completo de infraestructura como código usando AWS CloudFormation, aprende desde lo básico hasta lo avanzado', N'https://img-a.udemycdn.com/course/240x135/2411304_9223.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (24, N'Felipe Ríos Barraza (Frios)', N'Acelera tu búsqueda de empleo con Linkedin', N'Consejos y tips de cómo encontrar trabajo con Linkedin. Todo 100% práctico y ¡gratis!', N'https://img-a.udemycdn.com/course/240x135/3276536_ebf8_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (25, N'Acadeller Org.', N' Aprende a Crear un Portafolio Profesional de Desarrollador', N'Con este taller aprenderás a cómo crear un portafolio profesional aunque no tengas ninguna experiencia con páginas web', N'https://img-a.udemycdn.com/course/240x135/3222327_fed7.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (26, N'Info Elementss', N'Infografías y Plantillas para Presentaciones Poderosas PPT', N'Creación y Diseño de Plantillas para PowerPoint, Google Slides y KeyNote completamente editables y a Full color', N'https://img-a.udemycdn.com/course/240x135/3151482_a217_4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (27, N'kinnova Academy', N'Crea tu Primer videojuego sin Codigo con Scratch', N'Aprenderás a construir tu primer videojuego en 2D de una manera fácil y divertida', N'https://img-a.udemycdn.com/course/240x135/3328464_72df.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (28, N'Angel Serrano Perez', N'Arbitraje cripto-monedas y dinero FIAT mediante Mind.Capital', N'Aprende Bitcoin, BlockChain, seguridad informática ( RSA, 2FA, etc ), negocio cripto-fiat (exchanges, bots, etc) en 2020', N'https://img-a.udemycdn.com/course/240x135/3343934_0ef4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (29, N'Josué Hernández', N'Hacking Ético desde Cero', N'Introducción a la Explotación de Sistemas Linux', N'https://img-a.udemycdn.com/course/240x135/3022594_f591.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (30, N'Luis Evelio Garcia Rodriguez', N'Dominando el cpanel Hosting de Nuestro Proveedor de Servicio', N'Aprende a gestionar de manera eficiente y profesional el Cpanel de tu propio Hosting', N'https://img-a.udemycdn.com/course/240x135/1731498_4385_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (31, N'R.Sabino Cursos ES', N'Fundamentos de la Ingeniería de Requisitos', N'Una visión del libro que es base para la certificación CPRE-FL do IREB', N'https://img-a.udemycdn.com/course/240x135/2172480_5b6e.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (32, N'Juan Gabriel Gomila Salas, María Santos, Arnau Mir, Ricardo Alberich Martí', N'Master en Machine Learning - Aprende R y Python desde cero', N'Domina las bases de programación de Python3 y R para formarte en Machine Learning, la profesión mejor pagada del mundo', N'https://img-a.udemycdn.com/course/240x135/2681366_bd20_4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (33, N'David Navarro', N'CodeIgniter 4 de cero a Experto. El mejor framework de PHP', N'CodeIgniter vuelve con una versión totalmente renovada. Aprende el mejor framework de PHP mientras programas un blog!', N' https://img-b.udemycdn.com/course/240x135/2006770_4466_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (34, N'Diego Velazquez', N'Como crear una página web moderna con Bootstrap 4', N'Aprende a crear una atractiva página web, 100% responsiva.', N'https://img-a.udemycdn.com/course/240x135/3040950_bdc0_2.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (35, N'Guillermo Saez Yandiola', N'Curso inicial de AppSheet', N'Aprende paso a paso todos los puntos fundamentales para comenzar a crear tus Apps', N'https://img-a.udemycdn.com/course/240x135/3947230_ecb4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (36, N'Jordi Martos', N'Crea tu primera App de Realidad Virtual (VR) para Cardboard', N'Aprende a desarrollar escenarios de Realidad Virtual Inmersiva, para visualizarlo desde tu smartphone en visión 360º', N'https://img-a.udemycdn.com/course/240x135/602044_adf0_4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (37, N'Alain Nicolás Tello', N'Android Studio, Instalación, Emuladores, Git, Plugins y Tips', N'Aprende a instalar y configurar un entorno de desarrollo para android. Repositorio Github, Bitbucket, Butterknife, Java.', N'https://img-a.udemycdn.com/course/240x135/1049826_9fab_5.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (38, N'Fernando Herrera', N'Visual Studio Code: Mejora tu velocidad para codificar', N'Trucos que te harán disfrutar más tu experiencia como desarrollador y trabajar a mayor velocidad en VSCode', N'https://img-a.udemycdn.com/course/240x135/2259510_13b4.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (39, N'Loles Ferrándiz', N'Creación de máquinas virtuales Linux con VirtualBox', N'Monta un laboratorio de pruebas con VirtualBox y aprende a Administrar Bases de Datos PostgreSQL', N'https://img-b.udemycdn.com/course/240x135/3370578_ddfa_3.jpg')
INSERT [dbo].[Curso] ([Id], [NombreProfesor], [NombreCurso], [Detalle], [Caratula]) VALUES (40, N'RMS Tech', N'Fundamentos de Álgebra Lineal', N'Matrices, determinantes y sistemas de ecuaciones lineales', N'https://img-a.udemycdn.com/course/240x135/3417990_3688_2.jpg')
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[Seccion] ON 

INSERT [dbo].[Seccion] ([Id], [Secciones]) VALUES (1, N'Seccion 1')
INSERT [dbo].[Seccion] ([Id], [Secciones]) VALUES (2, N'Seccion 2')
INSERT [dbo].[Seccion] ([Id], [Secciones]) VALUES (3, N'Seccion 3')
INSERT [dbo].[Seccion] ([Id], [Secciones]) VALUES (4, N'Seccion 4')
INSERT [dbo].[Seccion] ([Id], [Secciones]) VALUES (5, N'Seccion 5')
SET IDENTITY_INSERT [dbo].[Seccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Temas] ON 

INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (1, N'https://www.youtube.com/embed/8wAcvBJR_Ro', N'https://www.youtube.com/embed/8VnZlJW0HcA', 1)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (2, N'https://www.youtube.com/embed/8VnZlJW0HcA', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 2)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (3, N'https://www.youtube.com/embed/GZj9bHfrzsY', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 3)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (4, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 4)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (5, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 5)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (6, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 6)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (7, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 7)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (8, N'https://www.youtube.com/embed/rcMUl00HJjM', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 8)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (9, N'https://www.youtube.com/embed/ChiG8dS5XFo', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 9)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (10, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 10)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (11, N'https://www.youtube.com/embed/7K_nNDhooX4', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 11)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (12, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 12)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (13, N'https://www.youtube.com/embed/PRtPsbWC6Ns', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 13)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (14, N'https://www.youtube.com/embed/rcMUl00HJjM', N'https://www.youtube.com/embed/8wAcvBJR_Ro', 14)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (15, NULL, NULL, 15)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (16, NULL, NULL, 16)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (17, NULL, NULL, 17)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (18, NULL, NULL, 18)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (19, NULL, NULL, 19)
INSERT [dbo].[Temas] ([Id], [Videos], [Video1], [CursoId]) VALUES (20, NULL, NULL, 20)
SET IDENTITY_INSERT [dbo].[Temas] OFF
GO
SET IDENTITY_INSERT [dbo].[TemaSeccion] ON 

INSERT [dbo].[TemaSeccion] ([Id], [IdCurso], [IdSeccion], [TemaSeccions]) VALUES (1, 1, 1, N'Introducción')
INSERT [dbo].[TemaSeccion] ([Id], [IdCurso], [IdSeccion], [TemaSeccions]) VALUES (2, 1, 2, N'Desarrollo')
INSERT [dbo].[TemaSeccion] ([Id], [IdCurso], [IdSeccion], [TemaSeccions]) VALUES (3, 2, 1, N'Introducción')
INSERT [dbo].[TemaSeccion] ([Id], [IdCurso], [IdSeccion], [TemaSeccions]) VALUES (4, 2, 2, N'Desarrollo')
INSERT [dbo].[TemaSeccion] ([Id], [IdCurso], [IdSeccion], [TemaSeccions]) VALUES (5, 2, 3, N'Desenlace')
SET IDENTITY_INSERT [dbo].[TemaSeccion] OFF
GO
SET IDENTITY_INSERT [dbo].[TomarCurso] ON 

INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (36, 1, 1)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (37, 1, 2)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (38, 2, 2)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (39, 2, 3)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (40, 2, 11)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (41, 1, 4)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (42, 5, 1)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (43, 1, 26)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (44, 2, 1)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (45, 6, 1)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (46, 6, 3)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (1038, 1, 3)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (1039, 1, 5)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (1040, 1, 6)
INSERT [dbo].[TomarCurso] ([Id], [IdUsuario], [IdCurso]) VALUES (1041, 1, 19)
SET IDENTITY_INSERT [dbo].[TomarCurso] OFF
GO
