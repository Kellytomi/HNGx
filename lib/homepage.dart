import 'package:flutter/material.dart';
import 'package:hng_project/main.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Slack Profile'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 47, 57, 171), Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 150.0,
                backgroundImage: NetworkImage(
                  'https://ca.slack-edge.com/T05FFAA91JP-U05QVF38BBR-e0993e5734d3-512',
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Etoma-etoto Odi',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const WebViewApp(), // Open the WebViewApp
                    ),
                  );
                },
                child: const Text('Open GitHub'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
