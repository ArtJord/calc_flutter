import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculadora Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resultado = '0';

  void _onPressed(String buttonText) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 24),
              controller: TextEditingController(text: resultado),
            ),
            Expanded(
  child: Row(
    children: [
      ElevatedButton(
        onPressed: () => _onPressed('7'),
        child: Text('7'),
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