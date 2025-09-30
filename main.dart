import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold background color
      backgroundColor: Colors.white,

      // AppBar Properties
      // ======================
      appBar: AppBar(
        title: Text(
          "My First App",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      // Body Properties
      // =======================
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 2, // width/height
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            child: Text("Hello,", style: TextStyle(fontSize: 24)),
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            child: Text("How", style: TextStyle(fontSize: 24)),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            child: Text("are", style: TextStyle(fontSize: 24)),
          ),
          Container(
            color: Colors.teal,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(12),
            child: Text("you", style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
