import 'package:flutter_projects/bmi_calc_output.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  int weightValue = 30;
  int age = 18;
  double height = 160;
  bool male = false;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 48, 67),
      appBar: AppBar(
        title: const Text('Bmi Calculator!'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 5), blurRadius: 5)
                      ],
                      color: Color.fromARGB(255, 145, 151, 174)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "weight",
                        style: TextStyle(
                            color: Color.fromARGB(255, 239, 246, 238),
                            fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weightValue.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 30),
                          ),
                          const Text(
                            "kg",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 10),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 240, 45, 58)),
                              ),
                              onPressed: () {
                                setState(() {
                                  weightValue += 1;
                                });
                              },
                              child: const Icon(Icons.add)),
                          ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 240, 45, 58)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (weightValue != 0) {
                                    weightValue -= 1;
                                  }
                                });
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(fontSize: 12),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  width: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, 5), blurRadius: 5)
                      ],
                      color: Color.fromARGB(255, 145, 151, 174)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "age",
                        style: TextStyle(
                            color: Color.fromARGB(255, 239, 246, 238),
                            fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            age.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 30),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 240, 45, 58)),
                              ),
                              child: const Icon(Icons.add)),
                          ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 240, 45, 58)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (age != 0) {
                                    age -= 1;
                                  }
                                });
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(fontSize: 12),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 145, 151, 174),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(
                          color: Color.fromARGB(255, 239, 246, 238),
                          fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toInt().toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 239, 246, 238),
                              fontSize: 30),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 239, 246, 238),
                                  fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    Slider(
                        activeColor: const Color.fromARGB(255, 221, 4, 37),
                        inactiveColor: const Color.fromARGB(162, 240, 45, 58),
                        value: height,
                        min: 40,
                        max: 230,
                        onChanged: (newheight) {
                          setState(() {
                            height = newheight.round().toDouble();
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        male = true;
                        female = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: male == false
                              ? const Color.fromARGB(255, 145, 151, 174)
                              : const Color.fromARGB(255, 240, 45, 58),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.male_rounded,
                            color: Color.fromARGB(255, 239, 246, 238),
                            size: 40,
                          ),
                          Text(
                            "MALE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        female = true;
                        male = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: female == false
                              ? const Color.fromARGB(255, 145, 151, 174)
                              : const Color.fromARGB(255, 240, 45, 58),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.female_rounded,
                            color: Color.fromARGB(255, 239, 246, 238),
                            size: 40,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 239, 246, 238),
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
          Container(
              width: double.infinity,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 221, 4, 37)),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BmiOutput(
                              weightValue: weightValue,
                              age: age,
                              height: height,
                              male: male,
                              female: female,
                            )));
                  },
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(
                        color: Color.fromARGB(255, 239, 246, 238),
                        fontSize: 50),
                  )))
        ],
      ),
    );
  }
}
