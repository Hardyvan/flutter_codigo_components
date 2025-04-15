import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Input Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16.0,
              ),
              maxLines: 2,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "Direccion",
                label: Text("Direccion label"),
                icon: Icon(Icons.location_on),
                suffixIcon: Icon(Icons.check_circle_outline),
                prefixIcon: Icon(Icons.star),
              ),
            ),
            SizedBox(
              height: 14.0,

            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar producto",
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 3.0,

                  )

                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                      width: 3.0,

                    )

                ),

              ),

            onChanged: (String value){
                print(value);
            },


            ),

          ],
        ),
      ),
    );
  }
}
