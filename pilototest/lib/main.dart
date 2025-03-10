import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Esse widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeiro Flutter Demonstração',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF2C2C2C), // Fundo do body cinza escuro
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, // Cor preta para a AppBar
          foregroundColor: Colors.white,  // Texto branco na AppBar
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black, // Cor preta para o botão flutuante
          foregroundColor: Colors.white,  // Ícone branco no botão
        ),
      ),
      home: const MyHomePage(title: 'Aprendendo a mexer com Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Esse widget é a tela principal do aplicativo.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // O `setState` avisa ao Flutter que algo mudou no estado,
      // fazendo com que o método `build` seja chamado de novo.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white), // Texto branco no AppBar
        ),
      ),
      body: Container(
        color: const Color(0xFF2C2C2C), // Fundo cinza escuro
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Quantidade de cliques:',
                style: TextStyle(color: Colors.white), // Texto branco
              ),
              const SizedBox(height: 12), // Espaço entre os elementos
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black, // Fundo do contador preto
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '$_counter',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Texto branco dentro do contador
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
