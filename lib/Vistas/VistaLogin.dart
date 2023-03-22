
import 'package:flutter/material.dart';

class VistaLogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VistaLoginState();
  }
  
}

class VistaLoginState extends State<VistaLogin>{
  late TextEditingController controllerUsuario;
  TextEditingController controllerPass=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerUsuario=TextEditingController();
  }

  void loginClick(){
    if(controllerUsuario.text=="Yony" && controllerPass.text=="123456"){
      //print("Login con exito");
      //_showMyDialog("Login con exito");

      Navigator.of(context).pushNamed("/Home");
    }
    else{
      _showMyDialog("ha fallado el login");
      //print("ha fallado el login");
    }

  }

  void cancelClick(){


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                helperText: "Usuario",
                icon:  Icon(Icons.account_box_outlined)
              ),
              controller: controllerUsuario,
            ),
            TextField(
              decoration: InputDecoration(
                  helperText: "Contraseña",
                  icon:  Icon(Icons.password)
              ),
              controller: controllerPass,
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: loginClick, child: Text("Login")),
                ElevatedButton(onPressed: cancelClick, child: Text("Salir"))
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog(String texto) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alerta Login'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(texto),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  
}