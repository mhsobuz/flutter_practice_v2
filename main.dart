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
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          ],
          elevation: 4, // AppBar Shadow
          bottom: TabBar(
            tabs: [
              Tab(text: "Home"),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),

        // Body Properties
        // =======================
        body: TabBarView(
          children: [
            Center(child: Text("Home Screen")),
            Center(child: Text("Icon Screen")),
            Center(child: Text("Setting Screen")),
          ],
        ),
      ),
    );
  }
}
