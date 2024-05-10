import 'package:flutter/material.dart';
import 'package:chow_button/chow_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ChowButton(
          onTap: () {
            print('Tapped');
          },
          title: 'Proceed',
          height: 50,
          loading: false,
          disabled: false,
          textStyle: const TextStyle(fontSize: 16),
          color: Colors.orange,
          width: double.infinity,
          icon: true,
          iconWidget: const Icon(Icons.pause),
        ),
      ),
    );
  }
}
