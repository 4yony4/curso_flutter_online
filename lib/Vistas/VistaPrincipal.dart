
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VistaPrincipal extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return pinta_modo_flutter();
  }

  Widget pinta_modo_flutter(){
    return Scaffold(
      appBar: AppBar(
        title: Text("Curso Fluter IES RF6"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hola desde el curso Flutter IES RF6"),
            Text("Bienvenid@s!!!!!!!!!")
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  Widget pinta_tradicional(){
    AppBar appBar = new AppBar(title: Text("Curso Fluter IES RF6"),);

    Text text1=Text("Hola desde el curso Flutter IES RF6");
    Text text2=Text("Bienvenid@s");
    Column column = new Column(children: [text1,text2],mainAxisAlignment: MainAxisAlignment.center,);
    Center center = Center(child: column,);
    Scaffold scaffold = new Scaffold(appBar: appBar,body: center,);
    return scaffold;
  }

}