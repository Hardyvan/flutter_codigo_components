import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext mandarina) {
    showDialog(
      context: mandarina,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Titulo del Alert"),
          backgroundColor: Colors.white,
          content: Text(
            "HOla este es el contenido de mi alert, este es texto de prueba",
          ),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Cancelar",),),
            TextButton(onPressed: () {

            }, child: Text("Aceptar",),),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Aler 1"),
            ),
          ],
        ),
      ),
    );
  }
}
