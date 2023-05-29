import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

var text = '';
var putput = '';
Parser player = Parser();
Expression exp = player.parse(putput);
final controller = TextEditingController();

Widget buttonBuilder(text, col) {
  return OutlinedButton(
    style: const ButtonStyle(
      shape: MaterialStatePropertyAll(CircleBorder()),
    ),
    onPressed: () {
      if (text == '=') {
        exp = player.parse(putput);
        var eval = exp.evaluate(EvaluationType.REAL, ContextModel());
        controller.text = eval.toString();
      } else {
        putput = putput + text;
        controller.text = putput;
      }
    },
    child: Text(
      text,
      style: TextStyle(color: col, fontWeight: FontWeight.w700, fontSize: 20),
    ),
  );
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('calculator'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        readOnly: true,
                        textAlign: TextAlign.center,
                        controller: controller,
                        cursorColor: const Color.fromARGB(255, 210, 118, 31),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.orange,
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: buttonBuilder(
                          '(', const Color.fromARGB(255, 210, 118, 31))),
                  Expanded(
                      child: buttonBuilder(
                          ")", const Color.fromARGB(255, 210, 118, 31))),
                  Expanded(
                      child: buttonBuilder(
                          '^', const Color.fromARGB(255, 210, 118, 31))),
                  Expanded(
                      child: buttonBuilder(
                          '\u221A', const Color.fromARGB(255, 210, 118, 31))),
                  Expanded(
                      child: buttonBuilder(
                          '/', const Color.fromARGB(255, 210, 118, 31)))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: buttonBuilder(
                          '9', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '8', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '7', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      flex: 1,
                      child: buttonBuilder(
                          '+', const Color.fromARGB(255, 210, 118, 31)))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: buttonBuilder(
                          '6', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '5', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '4', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                    flex: 1,
                    child: buttonBuilder(
                        '-', const Color.fromARGB(255, 210, 118, 31)),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: buttonBuilder(
                          '3', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '2', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '1', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: buttonBuilder(
                          '*', const Color.fromARGB(255, 210, 118, 31)))
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: buttonBuilder(
                          '0', const Color.fromRGBO(255, 255, 255, 1))),
                  Expanded(
                      child: OutlinedButton(
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        minimumSize:
                            MaterialStatePropertyAll(Size.fromHeight(60))),
                    onPressed: () {
                      setState(() {
                        putput = putput.substring(putput.length);
                        controller.text = putput;
                      });
                    },
                    child: const Text(
                      'C',
                      style:
                          TextStyle(color: Color.fromARGB(255, 210, 118, 31)),
                    ),
                  )),
                  Expanded(
                    child: OutlinedButton(
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(CircleBorder()),
                            minimumSize:
                                MaterialStatePropertyAll(Size.fromHeight(60))),
                        onPressed: () {
                          setState(() {
                            putput = putput.substring(0, putput.length - 1);
                            controller.text = putput;
                          });
                        },
                        child: const Icon(
                          Icons.backspace,
                          color: Color.fromARGB(255, 210, 118, 31),
                        )),
                  ),
                  Expanded(
                      child: buttonBuilder(
                          '=', const Color.fromARGB(255, 210, 118, 31)))
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
