class AppInfo {
  final String? title, description, namImg;

  AppInfo({
    this.title,
    this.description,
    this.namImg,
  });
}

List<AppInfo> apps = [
  AppInfo(
    title: "Gastos",
    namImg: '01-gastos.jpg',
    description: 'Proyecto personal que comencé a realizar cuando estaba dando mis primeros pasos en FLutter. ' +
        'Consiste en registar los gastos diarios y compararlos con el salario. ' +
        'Permite guardar diferentes tipos de gastos en una BD local con sqLite. Tiene también un apartado de Estadísticas ' +
        'donde se puede ordenar de mayor a menor y de menor a mayor las categorías según los gastos. Además permite mostrar ' +
        ' esa información en un gráfico de barra o circular.',
    // description:
    //     "App Móvil y Web para gestionar las citas de una Clínica Médica. Cuenta con los siguientes roles: ADMINISTRADOR, DOCTOR, TECNICOS, SECRETARIA, PACIENTE, cada uno bien definido. La app cuenta con validadción de número de teléfono por OTP con Firebase, notificaciones Push con FCM de Firebase. Tiene un Dashboard administrativo, donde se puede: CAMBIAR DATOS DE LA EMPRESA (NOMBRE, DIRECCION, TELEFONOS, ETC), CAMBIAR LOGO, CREACION DE USUARIOS, CREACION DE ROLES, CEEACION DE HORARIOS,CREACION DE CITAS, CREACION DE CATEGORIAS Y SUB CATEGORIAS,GENERAR INFORMES. ",
  ),
  AppInfo(
    title: 'Control Remoto Cajita HD',
    namImg: '02-control_remoto.jpg',
    description:
        'Aplicacion (Proyecto personal) para controlar con el sensor infrarrojo de algunos teléfonos una Cajita de TV Digtal. Para obtener ' +
            'los códigos de cada botón del mando, utilicé el mando original de la Cajita, un Arduino y un receptor infrarrojo, luego programé ' +
            'el arduino para obtener el codigo Hexagesimal de cada botón del mando, para posteriormente usarlo en FLutter.',
  ),
  AppInfo(
    title: 'Mi amor por ti',
    namImg: '03-amor.jpg',
    description:
        'Regalo que le hice a mi novia el 14 de febrero de 2021. Donde entre otras cosas, hice un reproductor de música (assets) ' +
            'y un juego de preguntas.',
  ),
  AppInfo(
      title: "SueltaloYa",
      namImg: "04-sueltaloya.png",
      description:
          'Red social para donar articulos usados. Destacar de esta app, que se usó mapas (MapBox) para ver los 5 productos más cercanos a la ubicación del usuario, ' +
              'reproducción de videos.'),
  AppInfo(
    title: 'App para citas de dentistas',
    namImg: '05-dentist.jpg',
    description:
        'Maquetación de una app para agendar citas de una Clínica de Estomatología',
  ),
  AppInfo(
    title: 'P4 Droid',
    namImg: '06-p4_droid.jpg',
    description:
        'Maquetación de una app para gestionar el horario docente de las carreras de la Universidad de Oriente. ',
  ),
  AppInfo(
    title: 'P4 Droid',
    namImg: '07-calentador.jpg',
    description:
        'Maquetación de una app para gestionar el horario docente de las carreras de la Universidad de Oriente. ',
  ),
  AppInfo(
    title: 'Rotina de refeicoes',
    namImg: '08-alimentador.jpg',
    description: 'App para controlar un alimentador automático de mascotas. ' +
        'Para ello se controla vía WIFI de forma local (por Websockets) a un circuito electrónico gobernado por ESP32 cuya programación también fue realizada por mi. ' +
        'En ella se controlan 2 parámetros: peso diario y peso por comida',
  ),
  AppInfo(
    title: 'Consecionario de autos',
    namImg: '09-consecionario.jpg',
    description: 'App para administrar un consecionario de autos. ' +
        'Destacar:' +
        '-Tablas con paginacion' +
        'En ella se controlan 2 parámetros: peso diario y peso por comida',
  ),
];

List<AppInfo> demo_projects2 = [
  AppInfo(
    title: "Control de un potenciostato digital",
    namImg: 'potenciostato.jpg',
    description:
        "Aplicación para Windows para controlar un potenciostato digital para hacer mediciones...",
  ),
  AppInfo(
    title: "Control de un brazo robótico manipulador",
    namImg: 'robot_matlab.png',
    description:
        "Control de posición de un robot de 4 grados de libertad mediante una interfaz gráfica hecha en Matlab",
  ),
  AppInfo(
    title: "Simulación de un brazo robótico manipulador ",
    namImg: 'robot_unity.png',
    description:
        "Simulación de movimientos y trayectorias de un brazo robótico manipulador, a través de Unity 3D",
  ),
];
