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
          //card 1
          Container(
            margin: const EdgeInsets.all(18.0),
            padding: const EdgeInsets.all(11.0),

            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.07),
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(4, 4),
                  blurRadius: 10.0,
                ),
                const BoxShadow(
                  color: Colors.white,
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
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  width: double.infinity,
                  //height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(
                          0.07,
                        ),
                        blurRadius: 10,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
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

          //card 2
          Container(
            color: Colors.blue,

            child: Row(
              children: [
                Image.asset(
                  'assets/images/imagex1.png',
                  height: 120.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Fiorella de las nieves azules",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize:15.0,
                        fontWeight: FontWeight.bold,
                      ),
                        ),
                      Text("Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.",

                      overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(
                          color: Colors.black54,

                        )


                      ),


                    ],

                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
