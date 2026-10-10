import 'package:flutter/material.dart';
import 'package:xo/screens/home_screen.dart';

class WinnerScreen extends StatelessWidget {
  final String winner;
  const WinnerScreen({super.key, required this.winner});

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

        child: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Player ",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      winner == "x" ? "1 " : "2 ",
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: winner == "x"
                            ? Colors.blue
                            : Colors.yellowAccent,
                      ),
                    ),
                    Text(
                      "Won!",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellowAccent,
                    ),
                    child: Text("Restart"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
