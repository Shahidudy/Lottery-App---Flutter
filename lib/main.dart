import 'package:flutter/material.dart';
import 'dart:math';

int x = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 207, 240, 180),
          appBar: AppBar(
            title: const Text("Lottery App"),
            centerTitle: true,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("asset/images/luckey2.jpg"),
            ),
            const Center(
              child: Text(
                "Lottery Winning Number is 5",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            x == 5
                ? Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.green[50]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You Won",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700],
                          ),
                        ),
                        // Text("Your Number is 5"),
                      ],
                    ),
                  )
                : Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.red[50]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sorry, Your Got\n $x \ntry again next Time",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[700],
                          ),
                        ),
                        // Text("Your Number is $x"),
                      ],
                    ),
                  )
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                x = random.nextInt(6);
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ),
      ),
    );
  }
}
