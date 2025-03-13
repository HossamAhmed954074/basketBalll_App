import 'package:basketball_app/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: CustomText(
            text: 'Points Counter',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: CounterC(),
      ),
    );
  }
}

class CounterC extends StatefulWidget {
  const CounterC({super.key});

  @override
  State<CounterC> createState() => _CounterCState();
}

class _CounterCState extends State<CounterC> {
  int counterTeamA = 0;
  int counterTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CustomText(
                  text: 'Team A',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Text(counterTeamA.toString(),
                      style: TextStyle(
                        fontSize: counterTeamA > 90 ? 80 : 100,
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 1 point',
                  onPressed: () {
                    setState(() {
                      counterTeamA++;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 2 point',
                  onPressed: () {
                    setState(() {
                      counterTeamA += 2;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 3 point',
                  onPressed: () {
                    setState(() {
                      counterTeamA += 3;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
              ],
            ),
            SizedBox(
              height: 450,
              child: VerticalDivider(
                color: Colors.black,
                indent: 20,
              ),
            ),
            Column(
              children: [
                Text(
                  'Team B',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Text(
                    counterTeamB.toString(),
                    style: TextStyle(
                      fontSize: counterTeamB > 90 ? 90 : 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 1 point',
                  onPressed: () {
                    setState(() {
                      counterTeamB++;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 2 point',
                  onPressed: () {
                    setState(() {
                      counterTeamB += 2;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  label: 'Add 3 point',
                  onPressed: () {
                    setState(() {
                      counterTeamB += 3;
                    });
                  },
                  textColor: Colors.black,
                  backgroundColor: Colors.orange,
                  size: Size(100, 50),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        CustomButton(
          label: 'Reset',
          onPressed: () {
            setState(() {
              counterTeamA = 0;
              counterTeamB = 0;
            });
          },
          textColor: Colors.black,
          backgroundColor: Colors.orange,
          size: Size(200, 50),
        ),
      ],
    );
  }
}
