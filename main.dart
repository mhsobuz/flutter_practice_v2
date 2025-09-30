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
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 4,
        ),
        itemCount: 28,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.teal,
            child: Center(child: Text(index.toString())),
          );
        },
      ),
    );
  }
}
