import 'package:chow_button/src/primary_button.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const ChowApp());
}
class ChowApp extends StatefulWidget {
  const ChowApp({super.key});

  @override
  State<ChowApp> createState() => _ChowAppState();
}

class _ChowAppState extends State<ChowApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const  Text('Chow Button'),),
        body: ChowButton(
          onTap: (){},
          title: 'Button',
          
          ),
      ),
    );
  }
}