import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool activado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn flutter'),
        //para crear el boton atras personalizado, si no lo pones te pone uno por defecto que funciona asi
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('has clicado en el libro');
            },
            icon: const Icon(Icons.book),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein.jpeg'),
            const Divider(color: Colors.black),
            const SizedBox(
              //espacio en blanco
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'this is text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: activado ? Colors.blue : Colors.green,
              ),
              onPressed: () {
                debugPrint('elevated button');
              },
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('outined button');
              },
              child: const Text('outlined button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('text button');
              },
              child: const Text('Text button'),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('gesture action');
              },
              //para que el click sirva en toda la barra y no solo en los widget
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Icon(Icons.local_fire_department),
                  Text('Rw widget'),
                  Icon(Icons.local_fire_department),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: activado,
              onChanged: (bool ans) {
                setState(
                  () {
                    activado = ans;
                  },
                );
              },
            ),
            Checkbox(
              value: activado,
              onChanged: (bool? ans) {
                setState(
                  () {
                    activado = ans!;
                  },
                );
              },
            ),
            Image.network(
                'https://ichef.bbci.co.uk/news/640/cpsprodpb/2094/production/_124704380_gettyimages-517422764-1.jpg'),
          ],
        ),
      ),
    );
  }
}
