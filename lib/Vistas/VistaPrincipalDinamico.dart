


import 'package:flutter/material.dart';

class VistaPrincipalDinamico extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    VistaPrincipalDinamicoState principalDinamicoState= new VistaPrincipalDinamicoState();
    return principalDinamicoState;
  }

}

class VistaPrincipalDinamicoState extends State<VistaPrincipalDinamico>{

  String sLineaBienvenido="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sLineaBienvenido="Bienvenid@s!!!!!!!!!";
  }

  void botonClick(){
    setState(() {
      if(sLineaBienvenido=="Bienvenid@s!!!!!!!!!") {
        sLineaBienvenido = "Adios!!!!";
      }
      else{
        sLineaBienvenido="Bienvenid@s!!!!!!!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curso Fluter IES RF6 Dinamico"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hola desde el curso Flutter IES RF6"),
            Text(sLineaBienvenido),
            ElevatedButton(
                onPressed:botonClick,
                child: Text("Presioname")
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

}