import 'package:flutter/material.dart';

class TestTest extends StatefulWidget {
  const TestTest({Key? key}) : super(key: key);

  @override
  State<TestTest> createState() => _TestTestState();
}

class _TestTestState extends State<TestTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.indigo,
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Khizar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Icon(
              Icons.add,
            ),
            Image.network(
                "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ],
        ),
      ),
    );
  }
}
