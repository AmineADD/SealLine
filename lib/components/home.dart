import 'package:flutter/material.dart'; 
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home App Bar'),
        centerTitle: true,
        
      ),
      body:  const Text('Home Page'),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.red,
        child: Text("App Bar down"),
      ),
    );
  }
}