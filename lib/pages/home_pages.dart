import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/pages/alert_page.dart';
import 'package:flutter_codigo_components/pages/avatar_page.dart';
import 'package:flutter_codigo_components/pages/card_page.dart';
import 'package:flutter_codigo_components/pages/grid_page.dart';
import 'package:flutter_codigo_components/pages/input_page.dart';
import 'package:flutter_codigo_components/pages/list_page.dart';
import 'package:flutter_codigo_components/pages/selection_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/13182833/pexels-photo-13182833.jpeg?_gl=1*5dxtp4*_ga*MzA0NTMwMjEyLjE3MjU5MzE4MTk.*_ga_8JE65Q40S6*czE3NTg3NDU4NDkkbzkkZzEkdDE3NTg3NDU4ODkkajIwJGwwJGgw",
                    ),
                    fit:
                        BoxFit
                            .cover, // 👈 Esto asegura que la imagen se vea cuadrada
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.17),
                      offset: const Offset(4, 4),
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
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(title: "Cards", toPage: CardPage()),
              ItemComponentWidget(
                title: "Imputs",
                toPage: InputPage(),
              ),
              ItemComponentWidget(
                title: "Selection",
                toPage: SelectionPage(),
              ),
              ItemComponentWidget(title: "List", toPage: ListPage()),
              ItemComponentWidget(
                title: "Grid View",
                toPage: GridPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  final String title;
  final Widget toPage;

  const ItemComponentWidget({
    required this.title,
    required this.toPage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 7.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 12,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color(0xff14213d),
        ),
        title: Text(title, style: GoogleFonts.poppins()),
        subtitle: Text(
          "Ir al detalle del $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
