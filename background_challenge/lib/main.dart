import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Stack(children: [
          _backgroundImage(),
          _centerText()
        ]),
      ),
    );
  }
}

Widget _backgroundImage() {
  return const Image(
    image: AssetImage("assets/images/spiderman.jpg"),
    width: double.infinity,
    height: double.infinity,
    fit: BoxFit.cover,
  );
}

Widget _centerText() {
  return Center(
    child: Container(
      height: 100,
      color: const Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text("Spider-man", style: TextStyle(color: Colors.white, fontSize: 32)),
        ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
