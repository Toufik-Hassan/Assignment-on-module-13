import 'package:flutter/material.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();

    counter = 0;
  }

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text("Counter Value", style: TextStyle(fontSize: 18)),

            Text(
              "$counter",

              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(
                  onPressed: increaseCounter,

                  child: const Text("Increment"),
                ),

                const SizedBox(width: 15),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(value: counter),
                      ),
                    );
                  },

                  child: const Text("Open Details"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
