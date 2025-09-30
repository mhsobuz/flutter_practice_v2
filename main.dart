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
      backgroundColor: Colors.teal,

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 1; i <= 20; i++)
              Container(
                margin: EdgeInsets.all(12), // margin: Outside of Box
                padding: EdgeInsets.all(16), // padding: Inside of Box
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Border width
                    width: 2, // Border color
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Colors.red, // Container fill color
                ),
                height: 200,
                width: double.infinity,
                child: Text("Red Container $i", style: TextStyle(fontSize: 24)),
              ),
          ],
        ),
      ),
    );
  }
}
