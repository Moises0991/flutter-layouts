import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Imagen de voldemort empoderado',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Saga Harry Potter',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('99'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.favorite, 'Favoritos'),
        _buildButtonColumn(color, Icons.add_a_photo, 'Agregar'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Voldemort, cuyo verdadero nombre era Tom Riddle, es el principal '
        'antagonista de la saga Harry Potter, un perfecto villano que siembra el '
        'terror y la oscuridad por donde pasa. Voldemort quiere exterminar a '
        'todo aquel que no sea “sangre limpia”, es decir, hijo de magos. '
        'Defiende que los “sangre sucia” (hijos de muggles) deberían desaparecer '
        'y no tener acceso a Hogwarts. '
        '',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Actividad 2',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Moisés Soler Zetina'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/background.jpg',
              // 'images/alambre.jpg',
              // width: 720,
              // height: 899,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
