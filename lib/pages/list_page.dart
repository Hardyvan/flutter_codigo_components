import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  List<String> heroes = [
    "Batman",
    "Superman",
    "Wonder Woman",
    "Flash",
    "Aquaman",
  ];

  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": [
          "Radiation resistance",
          "Turning tiny",
          "Radiation blast",
        ],
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes",
        ],
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel",
        ],
      },
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": [
          "Radiation resistance",
          "Turning tiny",
          "Radiation blast",
        ],
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes",
        ],
      },
    ],
  };

  void showDetailHeroe(
    BuildContext context,
    Map<String, dynamic> hero,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(hero["name"]),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(hero["image"]),
              Text("Secret Identity: ${hero["secretIdentity"]}"),
              Text("Age: ${hero["age"]}"),
              const SizedBox(height: 10),
              Text("Powers:"),
              ...hero["powers"]
                  .map<Widget>((power) => Text("- $power"))
                  .toList(),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('List Page'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          final hero = teamMap["members"][index];
          return ListTile(
            onTap: () {
              print(hero);
              showDetailHeroe(context, hero);
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(hero["image"]),
            ),
            title: Text(hero["name"]),
            subtitle: Text(hero["secretIdentity"]),
            trailing: const Icon(Icons.view_carousel),
          );
        },
      ),
    );
  }
}
