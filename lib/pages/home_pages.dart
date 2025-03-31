import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                //color: Colors.redAccent,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                  ),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.17),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),

            Text(
              "Flutter Components",
              style: GoogleFonts.poppins(
                fontSize: 22.0,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(width: 160.0, child: Divider()),

            ListTile(
              leading: Icon(Icons.check_circle_outline,
              color: Color(0xff14213d),),
              title: Text("Hola"),
              subtitle: Text("Hola 2"),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
