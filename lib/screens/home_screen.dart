import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xo/screens/draw_screen.dart';
import 'package:xo/screens/winner_screen.dart';
import 'package:xo/widgets/custom_cell.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool playerOneTurn = true;
  List<String> cells = ["", "", "", "", "", "", "", "", ""];
  List<int> winningCells = [];
  bool isWinner = false;
  String? winner;
  bool boardLocked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFA949F2), Color(0xFF3304B3)],
            begin: AlignmentGeometry.topCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Player: ",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      playerOneTurn ? "1" : "2",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: (playerOneTurn
                            ? Colors.blue
                            : Colors.yellowAccent),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          VerticalDivider(thickness: 4, color: Colors.black),
                          VerticalDivider(thickness: 4, color: Colors.black),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Divider(thickness: 4, color: Colors.black),
                          Divider(thickness: 4, color: Colors.black),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCell(
                                index: 0,
                                value: cells[0],
                                isWinner: winningCells.contains(0),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 1,
                                value: cells[1],
                                isWinner: winningCells.contains(1),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 2,
                                value: cells[2],
                                isWinner: winningCells.contains(2),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCell(
                                index: 3,
                                value: cells[3],
                                isWinner: winningCells.contains(3),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 4,
                                value: cells[4],
                                isWinner: winningCells.contains(4),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 5,
                                value: cells[5],
                                isWinner: winningCells.contains(5),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCell(
                                index: 6,
                                value: cells[6],
                                isWinner: winningCells.contains(6),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 7,
                                value: cells[7],
                                isWinner: winningCells.contains(7),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              CustomCell(
                                index: 8,
                                value: cells[8],
                                isWinner: winningCells.contains(8),
                                tapped: (index) async {
                                  if (cells[index].isNotEmpty || boardLocked) {
                                    return;
                                  }
                                  if (cells[index].isEmpty) {
                                    setState(() {
                                      insertImg(index);
                                    });

                                    winner = checkWinner();
                                    if (winner != null) {
                                      await Future.delayed(
                                        Duration(seconds: 2),
                                      );
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return WinnerScreen(
                                              winner: winner!,
                                            );
                                          },
                                        ),
                                      );
                                    } else if (isBoardFull()) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return DrawScreen();
                                          },
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void insertImg(int index) {
    if (playerOneTurn == true) {
      cells[index] = 'x';
      playerOneTurn = false;
    } else {
      cells[index] = 'o';
      playerOneTurn = true;
    }
  }

  String? checkWinner() {
    List<List<int>> combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];
    for (int i = 0; i < combinations.length; i++) {
      if (cells[combinations[i][0]] != "" &&
          cells[combinations[i][0]] == cells[combinations[i][1]] &&
          cells[combinations[i][0]] == cells[combinations[i][2]]) {
        winningCells.addAll([
          combinations[i][0],
          combinations[i][1],
          combinations[i][2],
        ]);
        boardLocked = true;
        return cells[combinations[i][0]];
      }
    }
    return null;
  }

  bool isBoardFull() {
    bool result = true;
    for (var element in cells) {
      if (element == "") {
        result = false;
        break;
      }
    }
    return result;
  }
}
