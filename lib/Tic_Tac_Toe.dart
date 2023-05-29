import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  bool responsive = true;
  bool win = false;
  int scoreX = 0;
  int scoreO = 0;
  bool xOro = false;
  List matchedIndexes = [];
  List xO = ['', '', '', '', '', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 0, 64),
      appBar: AppBar(
        title: const Text(
          "Tic-Tac-Toe",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 127, 123, 130),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      "O",
                      style: TextStyle(
                          color: Color.fromARGB(255, 165, 196, 212),
                          fontSize: 40),
                    ),
                    Text(
                      scoreO.toString(),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 165, 196, 212),
                          fontSize: 20),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      "X",
                      style: TextStyle(
                          color: Color.fromARGB(255, 165, 196, 212),
                          fontSize: 40),
                    ),
                    Text(
                      scoreX.toString(),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 165, 196, 212),
                          fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          )),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (responsive) {
                            if (xO.contains('') == false) {
                              xO.fillRange(0, xO.length, '');
                            } else {
                              if (xOro && xO[index] == '') {
                                xO[index] = 'O';
                                xOro = false;
                              } else if (!xOro && xO[index] == '') {
                                xO[index] = 'X';
                                xOro = true;
                              }
                              if (xO[0] == "X" &&
                                  xO[3] == "X" &&
                                  xO[6] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([0, 3, 6]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[1] == "X" &&
                                  xO[4] == "X" &&
                                  xO[7] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([1, 4, 7]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[2] == "X" &&
                                  xO[5] == "X" &&
                                  xO[8] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([2, 5, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[0] == "X" &&
                                  xO[1] == "X" &&
                                  xO[2] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([0, 1, 2]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[3] == "X" &&
                                  xO[4] == "X" &&
                                  xO[5] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([3, 4, 5]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[6] == "X" &&
                                  xO[7] == "X" &&
                                  xO[8] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([6, 7, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[0] == "X" &&
                                  xO[4] == "X" &&
                                  xO[8] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([0, 4, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[2] == "X" &&
                                  xO[4] == "X" &&
                                  xO[6] == "X") {
                                scoreX++;
                                matchedIndexes.addAll([2, 4, 6]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[0] == "O" &&
                                  xO[3] == "O" &&
                                  xO[6] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([0, 3, 6]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[1] == "O" &&
                                  xO[4] == "O" &&
                                  xO[7] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([1, 4, 7]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[2] == "O" &&
                                  xO[5] == "O" &&
                                  xO[8] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([2, 5, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[0] == "O" &&
                                  xO[1] == "O" &&
                                  xO[2] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([0, 1, 2]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[3] == "O" &&
                                  xO[4] == "O" &&
                                  xO[5] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([3, 4, 5]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[6] == "O" &&
                                  xO[7] == "O" &&
                                  xO[8] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([6, 7, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[0] == "O" &&
                                  xO[4] == "O" &&
                                  xO[8] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([0, 4, 8]);
                                win = true;
                                responsive = !responsive;
                              } else if (xO[2] == "O" &&
                                  xO[4] == "O" &&
                                  xO[6] == "O") {
                                scoreO++;
                                matchedIndexes.addAll([2, 4, 6]);
                                win = true;
                                responsive = !responsive;
                              }
                            }
                          } else {
                            Future.delayed(const Duration(seconds: 5));
                            xO.fillRange(0, xO.length, "");
                            matchedIndexes.clear();
                            responsive = true;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: matchedIndexes.contains(index)
                                ? const Color.fromARGB(255, 55, 255, 138)
                                : const Color.fromARGB(255, 127, 123, 130),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Text(
                            xO[index],
                            style: const TextStyle(
                                fontFamily: "Coiny",
                                fontSize: 64,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
