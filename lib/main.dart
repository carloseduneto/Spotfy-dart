import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  MeuFormulario createState() {
    return MeuFormulario();
  }
}

class MeuFormulario extends State<MeuApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 80, 80, 80),
              Color.fromARGB(255, 0, 0, 0)
            ],
          )),
          child: spotify()),
    ));
  }

  Widget spotify() {
    return Column(
      children: [titulo(), ultimosAlbuns(), lancamento(), miniplayer(), menu()],
    );
  }
}

Widget lancamento() {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Text(""),
            SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                "assets/ariana1.jpg",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8), // Espaço entre a imagem e o texto
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alinha os textos à esquerda
              children: [
                Text(
                  "NOVO LANÇAMENTO DE",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                Text(
                  "Ariana Grande",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(25, 255, 255, 255),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/Break.jpg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "One Last Time",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Álbum • Ariana Grande",
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      SizedBox(width: 120),
                      Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget miniAlbum(fotoAlbum, nomeAlbum) {
  return Container(
    child: Row(
      children: [
        Image.asset(
          "assets/" + fotoAlbum + ".jpg",
          width: 70,
          height: 70,
        ),
        Padding(
          child: Text(nomeAlbum,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          padding: EdgeInsets.all(6),
        )
      ],
    ),
    decoration: BoxDecoration(color: Color.fromARGB(25, 255, 255, 255)),
    margin: EdgeInsets.all(5),
  );
}

Widget ultimosAlbuns() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: miniAlbum("Artpop", "Artpop"),
            flex: 5,
          ),
          Expanded(
            child: miniAlbum("Born", "Born Whey"),
            flex: 5,
          )
        ],
      ),
      Row(
        children: [
          Expanded(
            child: miniAlbum("Chromatica", "Chromatica"),
            flex: 5,
          ),
          Expanded(
            child: miniAlbum("Disease", "Disease"),
            flex: 5,
          )
        ],
      ),
      Row(
        children: [
          Expanded(
            child: miniAlbum("Fame", "Fame"),
            flex: 5,
          ),
          Expanded(
            child: miniAlbum("Monster", "Monster"),
            flex: 5,
          )
        ],
      ),
    ],
  );
}

Widget titulo() {
  return Row(
    children: [
      Expanded(
          flex: 6,
          child: Text(
            "Boa noite",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          )),
      Expanded(
          flex: 1,
          child: Icon(
            Icons.notifications_none,
            color: Colors.white,
            size: 24.0,
          )),
      Expanded(
          flex: 1,
          child: Icon(
            Icons.history,
            color: Colors.white,
            size: 24.0,
          )),
      Expanded(
          flex: 1,
          child: Icon(
            Icons.settings_outlined,
            color: Colors.white,
            size: 24.0,
          )),
    ],
  );
}

Widget menu() {
  return Row(
    children: [
      Expanded(
          flex: 1,
          child: Column(children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 24.0,
            ),
            Text(
              "Início",
              style: TextStyle(color: Colors.white, fontSize: 8.0),
            )
          ])),
      Expanded(
          flex: 1,
          child: Column(children: [
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 24.0,
            ),
            Text(
              "Buscar",
              style: TextStyle(color: Colors.white, fontSize: 8.0),
            )
          ])),
      Expanded(
          flex: 1,
          child: Column(children: [
            Icon(
              Icons.library_music,
              color: Colors.grey,
              size: 24.0,
            ),
            Text(
              "Biblioteca",
              style: TextStyle(color: Colors.white, fontSize: 8.0),
            )
          ])),
    ],
  );
}

Widget miniplayer() {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(5), // Adiciona o padding corretamente
        decoration: BoxDecoration(
          color: Color(0xAA303C3C),
        ),
        margin: EdgeInsets.only(
            top: 35, bottom: 5), // Define a margem superior corretamente
        child: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/radical.jpg",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Training Season",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Dua Lipa",
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
              ],
            ),
            SizedBox(width: 80),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.computer_outlined,
                  color: Colors.grey,
                  size: 24.0,
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 24.0,
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 24.0,
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
