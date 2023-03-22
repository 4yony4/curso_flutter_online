


import 'package:flutter/material.dart';

import '../Vistas/VistaLogin.dart';
import '../Vistas/VistaPrincipal.dart';
import '../Vistas/VistaPrincipalDinamico.dart';

class MiPrimeraApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    VistaPrincipal vistaPrincipal = new VistaPrincipal();
    VistaPrincipalDinamico principalDinamico = new VistaPrincipalDinamico();
    VistaLogin vistaLogin = VistaLogin();
    ThemeData themeData= new ThemeData(brightness: Brightness.dark);
    MaterialApp materialApp = new MaterialApp(
      title: "Hola Flutter",
      theme: themeData,
      //home: vistaLogin,
      initialRoute: "/Login",
      routes: {
        '/Login':(context) => vistaLogin,
        '/Home': (context) => principalDinamico
      },
    );
    return materialApp;
  }

}