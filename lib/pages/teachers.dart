import 'package:flutter/material.dart';

class Teachers extends StatelessWidget {
  const Teachers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(247, 121, 134, 203),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, '/'); // Navigate back to MainApp
          },
          color: Colors.white,
        ),
        title: const Text(
          'Teachers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/rithadric.jpg'),
              radius: 18,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Teachers(),
  ));
}
