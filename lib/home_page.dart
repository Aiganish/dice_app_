import 'dart:math';
import 'dart:developer' as math;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 4;
  int onDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Dice App')),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    final random1 = Random().nextInt(6) + 1;
                    final randoms2 = Random().nextInt(6) + 1;
                    solDice = random1;
                    onDice = randoms2;
                    math.log('Sol jak basilip atat');
                  },
                  child: Image.asset(
                    'assets/images/dice$solDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                width: 200,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      final random1 = Random().nextInt(6) + 1;
                      final random2 = Random().nextInt(6) + 1;
                      onDice = random1;
                      solDice = random2;
                    });
                  },
                  child: Image.asset('assets/images/dice$onDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
