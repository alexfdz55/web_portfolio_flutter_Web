class AppInfo {
  final String title, description, namImg;

  final List<String> imgList;
  final List<String> skills;

  AppInfo({
    required this.title,
    required this.description,
    required this.imgList,
    required this.namImg,
    required this.skills,
  });
}

const urlBase = 'https://user-images.githubusercontent.com/47995554';

List<AppInfo> apps = [
  AppInfo(
    title: "Gastos",
    namImg: '$urlBase/154525746-465ccb0a-916b-4212-861c-117bf29b9902.png',
    description: 'Proyecto personal que comencé a realizar cuando estaba dando mis primeros pasos en FLutter. ' +
        'Consiste en registar los gastos diarios y compararlos con el salario. ' +
        'Permite guardar diferentes tipos de gastos en una BD local con sqLite. Tiene también un apartado de Estadísticas ' +
        'donde se puede ordenar de mayor a menor y de menor a mayor las categorías según los gastos. Además permite mostrar ' +
        ' esa información en un gráfico de barra o circular.',
    imgList: [
      '$urlBase/154525640-fcb32c2e-5246-4cc5-acfd-aa662b4a3f0b.png',
      '$urlBase/154525746-465ccb0a-916b-4212-861c-117bf29b9902.png',
      '$urlBase/154525769-d3e03282-c6e6-43b6-b2a7-b30b0f0967cd.png',
      '$urlBase/154525784-5301b297-1dc5-4489-ba3c-b864d027b0e6.png',
    ],
    skills: [
      'Manejo de base de dato local (sqLite)',
      'Gráficas de pastel y de barras',
      'Onboarding',
    ],
  ),
  AppInfo(
    title: 'Control Remoto Cajita HD',
    namImg: '$urlBase/154526121-fb555b53-c750-4e05-afd9-162082edc059.png',
    description:
        'Aplicacion (Proyecto personal) para controlar con el sensor infrarrojo de algunos teléfonos una Cajita de TV Digtal. Para obtener ' +
            'los códigos de cada botón del mando, utilicé el mando original de la Cajita, un Arduino y un receptor infrarrojo, luego programé ' +
            'el arduino para obtener el codigo Hexagesimal de cada botón del mando, para posteriormente usarlo en FLutter.',
    imgList: [
      '$urlBase/154526121-fb555b53-c750-4e05-afd9-162082edc059.png',
      '$urlBase/154526143-d643fc1c-21fd-46b1-ad42-64b107e9e271.png',
      '$urlBase/154526150-de9f990e-8af5-4a63-bd42-96894e60bda4.png'
    ],
    skills: ['Manejo del emisor infrarrojo delo móvil'],
  ),
  AppInfo(
      title: 'Mi amor por ti',
      namImg: '$urlBase/154526416-7f8ab6d0-6301-4793-8ee0-c7b63df80904.png',
      description: 'Regalo que le hice a mi novia el 14 de febrero de 2021.',
      imgList: [
        '$urlBase/154526391-d7d442d8-9ddb-4539-af85-f1467068d259.png',
        '$urlBase/154526416-7f8ab6d0-6301-4793-8ee0-c7b63df80904.png',
        '$urlBase/154526448-13931163-2eb4-4e47-be71-3052e9c665e3.png',
        '$urlBase/154526466-679d7695-4608-4102-af8d-c38597eb2b68.png',
        '$urlBase/154526476-7a6c4357-b426-4d00-91a2-851ac527a0b6.png',
      ],
      skills: [
        'Animaciones básicas',
        'Lectura de los sms',
        'Reproductor de música personalizado',
        'Juego de preguntas',
      ]),
  AppInfo(
      title: "SueltaloYa",
      namImg: '$urlBase/154527438-66f78c4f-9433-4494-ad74-1de0c931dec5.png',
      description: 'Red social para donar articulos usados.',
      imgList: [
        '$urlBase/154527438-66f78c4f-9433-4494-ad74-1de0c931dec5.png',
        '$urlBase/154527487-2d7c096a-ceca-4c45-a03f-92081af8f35a.png',
        '$urlBase/154527519-fea7b78e-6dec-4a4a-8a60-8efd10c57005.png',
        '$urlBase/154527523-62a0e062-e3c8-46a6-a490-9590f7cbcdd7.png',
        '$urlBase/154527530-37af9f61-984a-4463-b120-6c2fb34a1e40.png',
      ],
      skills: [
        'Api Rest',
        'Login y registro',
        'Mapas con Mapbox para ver los 5 productos más cercanos a la ubicación del usuario',
        'Reproducción de videos',
      ]),
  AppInfo(
    title: 'App para citas de dentistas',
    namImg: '$urlBase/154527840-6a522cc0-c3af-49da-bff7-0bef10beb701.png',
    description:
        'Maquetación de una app para agendar citas de una Clínica de Estomatología.',
    imgList: [
      '$urlBase/154527798-9086444e-fc8b-4828-9c03-a87de7869ba5.png',
      '$urlBase/154527815-a9914508-b760-4067-83dc-d5db89501796.png',
      '$urlBase/154527840-6a522cc0-c3af-49da-bff7-0bef10beb701.png',
      '$urlBase/154527958-ed3a3ec9-1902-41e1-9aa7-9f54d042c09f.png',
      '$urlBase/154527995-060b7ab8-5bd0-4275-bd5e-b0081186d4d1.png',
    ],
    skills: [],
  ),
  AppInfo(
    title: 'P4 Droid',
    namImg: '$urlBase/154528190-f938d24f-da3f-47bf-8375-86e070255141.png',
    description:
        'Maquetación de una app para gestionar el horario docente de las carreras de la Universidad de Oriente. ',
    imgList: [
      '$urlBase/154528190-f938d24f-da3f-47bf-8375-86e070255141.png',
      '$urlBase/154528210-d4b0984c-3078-4014-9150-dfa9c2e1db2e.png',
      '$urlBase/154528222-dccfe384-acb8-40c5-9e8d-d908c42556ec.png',
    ],
    skills: [],
  ),
  AppInfo(
    title: 'Calentador por inducción',
    namImg: '$urlBase/154528470-2db0baa5-3914-4bd6-8b00-66d264dae9aa.png',
    description:
        'App para controlar los calentadores de ducha de una casa de 6 habitaciones. ' +
            'Para ello se controla vía WIFI de forma local (por Websockets) a un circuito electrónico gobernado por ESP32 cuya programación también fue realizada por mi. ' +
            'En ella se controlan 3 parámetros: potencia del calentador, temperatura del agua y tiempo de baño',
    imgList: [
      '$urlBase/154528358-2d5d6859-c1c5-4be1-b6dd-28f91d0ae8ae.png',
      '$urlBase/154528420-3432d2e3-d2bb-4c21-a950-54dc81118f5e.png',
      '$urlBase/154528441-6c4d6ff7-444f-47f5-8cd5-55a7017a4f49.png',
      '$urlBase/154528450-9397ab36-ad41-472b-ad86-886b6a635c1f.png',
      '$urlBase/154528470-2db0baa5-3914-4bd6-8b00-66d264dae9aa.png',
      '$urlBase/154528478-470ab921-153f-47ea-8497-57f4711cc434.png',
    ],
    skills: ['WebSockets', 'Ver estado de la conexión'],
  ),
  AppInfo(
    title: 'Rotina de refeicoes',
    namImg: '$urlBase/154528616-1871ef41-37e8-4896-8447-3956371435f5.png',
    description: 'App para controlar un alimentador automático de mascotas. ' +
        'Para ello se controla vía WIFI de forma local (por Websockets) a un circuito electrónico gobernado por ESP32 cuya programación también fue realizada por mi. ' +
        'En ella se controlan 2 parámetros: peso diario y peso por comida',
    imgList: [
      '$urlBase/154528616-1871ef41-37e8-4896-8447-3956371435f5.png',
      '$urlBase/154528637-6bfd99a3-4f20-42e1-9c1d-f125460208fe.png',
      '$urlBase/154528645-83b95b11-b361-4f42-84dd-d6bcdd92b6f6.png',
      '$urlBase/154528654-023fcb42-73d3-41b5-a17b-0b8f1a894c61.png',
      '$urlBase/154528663-38f59042-e96a-4d8e-acfd-ceb45d8e39a7.png',
      '$urlBase/154528670-73c91ea0-8e35-40e9-bb06-cd41803593c8.png',
    ],
    skills: ['WebSockets', 'Ver estado de la conexión'],
  ),
  AppInfo(
    title: 'Agendar Citas de una Clínica Médica',
    namImg: '$urlBase/154528772-2b9d0934-4276-413b-8828-8e2c62543090.png',
    description: "App Móvil y Web para gestionar las citas de una Clínica Médica. Cuenta con 5 roles diferentes: " +
        "(ADMINISTRADOR, DOCTOR, TECNICOS, SECRETARIA, PACIENTE). Presenta validación de " +
        "número de teléfono por OTP con Firebase, notificaciones Push con FCM de Firebase. Tiene un Dashboard administrativo, " +
        "donde se puede: CAMBIAR DATOS DE LA EMPRESA (NOMBRE, DIRECCION, TELEFONOS, ETC), CREACION DE USUARIOS, " +
        "CREACION DE ROLES, CREACION DE HORARIOS, CREACION DE CITAS, CREACION DE CATEGORIAS Y SUBCATEGORIAS,  GENERAR REPORTES.",
    imgList: [
      '$urlBase/154528772-2b9d0934-4276-413b-8828-8e2c62543090.png',
    ],
    skills: [
      'Api Rest',
      'Login y registro',
      'Validación de número de teléfono por OTP con Firebase',
      'Notificaciones Push con Firebase',
      'Manejo de 5 roles',
      'Manejo de ficheros .md para las Políticas de Privacidad y los Términos y servicios',
      'Todo lo anterior con Flutter Web',
    ],
  ),
  AppInfo(
    title: 'Consecionario de autos',
    namImg: '$urlBase/154529004-981c7eaf-ccb8-4578-93bf-497757bc41c0.png',
    description: 'App para administrar un consecionario de autos.',
    imgList: [
      '$urlBase/154528936-7c03325a-d32a-4fc8-99c5-2717a063ef48.png',
      '$urlBase/154528989-efa77d23-762f-402c-894f-5d04e75c111e.png',
      '$urlBase/154529004-981c7eaf-ccb8-4578-93bf-497757bc41c0.png',
      '$urlBase/154529019-1015a40f-5294-4e0d-bff6-ee1ee111eaed.png',
      '$urlBase/154529027-8a56e62a-b045-4f7f-9730-e6db9460eb73.png',
      '$urlBase/154529033-55a3b6a8-22f3-49d6-9428-3cdc935b929f.png',
    ],
    skills: [
      'Api Rest',
      'Login y registro',
      'Formularios reactivos',
      'Tablas paginadas',
      'Petición de generar pdfs para su descarga y visualizacón',
      'Integración con Stripe a través de un WebView (plan gratuito por solo 30 días)',
    ],
  ),
];

List<AppInfo> demo_projects2 = [
  AppInfo(
    title: "Control de un potenciostato digital",
    namImg: 'potenciostato.jpg',
    description:
        "Aplicación para Windows para controlar un potenciostato digital para hacer mediciones...",
    imgList: [],
    skills: [],
  ),
  AppInfo(
    title: "Control de un brazo robótico manipulador",
    namImg: 'robot_matlab.png',
    description:
        "Control de posición de un robot de 4 grados de libertad mediante una interfaz gráfica hecha en Matlab",
    imgList: [],
    skills: [],
  ),
  AppInfo(
    title: "Simulación de un brazo robótico manipulador ",
    namImg: 'robot_unity.png',
    description:
        "Simulación de movimientos y trayectorias de un brazo robótico manipulador, a través de Unity 3D",
    imgList: [],
    skills: [],
  ),
];
