import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Recordatorios",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Welcome to",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
          ),
          Text(
            "Reminders",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
          ),
          SizedBox(height: 35),
          _iconos(
            icon: Icons.flag,
            titulo: 'Quick Creation',
            texto: 'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
            color: Colors.green,
          ),
          SizedBox(height: 32),
          _iconos(
            icon: Icons.local_grocery_store,
            titulo: 'Grocery Shopping',
            texto: 'Create a Grocery List that automatically sorts items you add by category.',
            color: Colors.orange,
          ),
          SizedBox(height: 32),
          _iconos(
            icon: Icons.people,
            titulo: 'Easy Sharing',
            texto: 'Collaborate on a list, and even assign individual tasks.',
            color: Colors.yellow[700]!,
          ),
          SizedBox(height: 32),
          _iconos(
            icon: Icons.list,
            titulo: 'Powerful Organization',
            texto: 'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
            color: Colors.lightBlue,
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0), // Padding horizontal para el botón
            child: SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 149, 229),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Bordes redondeados
                ),
              ),
              child: const Text('Continue',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)
              )
            ),
            )
          ),
        ],
      )
    );
  }
}

  Widget _iconos({
    required IconData icon,
    required String titulo,
    required String texto,
    required Color color,
    Color? textoColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0), // Padding para las filas
      child: Row(
        children: <Widget>[
          Icon(icon, size: 35,color: color,),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
                ),
                Text(
                  texto,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color : textoColor ?? Colors.grey[600],),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
