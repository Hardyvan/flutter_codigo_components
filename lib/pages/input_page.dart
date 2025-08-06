import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isInvisible = true;
  String textGeneral = "";
  final TextEditingController _controller = TextEditingController(
    text: "Ramon",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Input Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              const SizedBox(height: 14.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent,
                      width: 3.0,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.redAccent,
                      width: 3.0,
                    ),
                  ),
                ),
                onChanged: (String value) {
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      offset: const Offset(4, 4),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar producto...",
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black38,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(2.5),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                  suffixIcon: IconButton(
                    icon:
                        isInvisible
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.remove_red_eye_outlined),
                    onPressed: () {
                      setState(() {
                        isInvisible = !isInvisible;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _controller,
                style: GoogleFonts.poppins(),
                decoration: InputDecoration(counterText: ""),
                onTap: () {
                  print("ON TAPP!!!!");
                },
                onChanged: (String text) {
                  print(text);
                  textGeneral = text;
                },
                keyboardType: TextInputType.text,
                cursorColor: Colors.pinkAccent,
                readOnly: false,
                onSubmitted: (String value) {
                  print(value);
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  print(_controller.text);
                },
                child: Text("Obtener valor del text"),
              ),
              ElevatedButton(
                onPressed: () {
                  _controller.clear();
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
