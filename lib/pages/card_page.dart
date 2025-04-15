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
      body: SingleChildScrollView(
        child: Column(
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
              margin: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),

              child: Row(
                children: [
                  Image.asset(
                    'assets/images/imagex1.png',
                    height: 120.0,
                  ),
                  SizedBox(width: 4.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fiorella de las nieves azules",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          "Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.",

                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //card 3
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 14.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    blurRadius: 12.0,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum",

                      maxLines: 6,
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.network(
                      "https://images.pexels.com/photos/30411875/pexels-photo-30411875/free-photo-of-retrato-de-una-mujer-joven-con-flores-de-cosmos-en-hanoi.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
