import 'dart:math';

import 'package:caesear_decoder/bmi_calc.dart';
import 'package:flutter/material.dart';

class BmiOutput extends StatefulWidget {
  final int weightValue;
  final int age;
  final double height;
  final bool male;
  final bool female;
  const BmiOutput(
      {super.key,
      required this.weightValue,
      required this.age,
      required this.height,
      required this.male,
      required this.female});

  @override
  State<BmiOutput> createState() => _BmiOutputState();
}

class _BmiOutputState extends State<BmiOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 48, 67),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "your BMI",
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 145, 151, 174)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              ((widget.weightValue /
                                      pow(widget.height / 100, 2)))
                                  .toString(),
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 239, 246, 238),
                                  fontSize: 30)),
                        ),
                        if ((widget.weightValue /
                                    pow(widget.height / 100, 2)) >=
                                18.5 &&
                            (widget.weightValue /
                                    pow(widget.height / 100, 2)) <=
                                24.9)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Normal!",
                                style: TextStyle(
                                    color: Colors.green.shade800, fontSize: 30),
                              ),
                              const Text(
                                  "I congratulate you on keeping your body in optimum condtion.",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 239, 246, 238),
                                      fontSize: 30))
                            ],
                          )
                        else if ((widget.weightValue /
                                pow(widget.height / 100, 2)) <
                            18.5)
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Underweight!",
                                  style: TextStyle(
                                      color: Color.fromRGBO(194, 73, 25, 1),
                                      fontSize: 30)),
                              Text(
                                "try and eat more!\nbecause being Underwieght can cause you a lot of problems!",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 239, 246, 238),
                                    fontSize: 30),
                              )
                            ],
                          )
                        else if ((widget.weightValue /
                                pow(widget.height / 100, 2)) >
                            24.9)
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Overweight!",
                                style: TextStyle(
                                    color: Colors.red.shade900, fontSize: 30),
                              ),
                              const Text(
                                  "Try and Exercise!\n the sound mind is in the sound body!")
                            ],
                          ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 221, 4, 37)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("RECALCULATE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 30))),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
