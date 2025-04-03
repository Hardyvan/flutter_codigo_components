import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Card Page"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(18.0),
            padding: const EdgeInsets.all(11.0),

            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.07),
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent,
                  offset: const Offset(4, 4),
                  blurRadius: 10.0,
                ),
                const BoxShadow(
                  color: Colors.redAccent,
                  offset: Offset(-5, -5),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Este generador usa un diccionario de palabras en latín para construir pasajes de texto Lorem Ipsum que cumpla con su longitud deseada. La duración y la puntuación dispesar de la oración y el párrafo se calculan usando una distribución Gaussiana, basada en análisis de textos mundiales reales. Esto asegura que el texto Lorem Ipsum generado es único, libre de repeticiones y también se parece a un texto legible todo lo posible.",
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.60),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  padding: const EdgeInsets.symmetric(vertical: 12.0) ,
                  width: double.infinity,
                  //height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.07),
                        blurRadius: 10,
                        offset: const Offset(4, 4)
                      )

                    ]
                  ),
                  alignment: Alignment.center,
                  child:  const Text(
                    "Follow me",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
