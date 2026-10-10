import 'package:flutter/material.dart';

class CustomCell extends StatelessWidget {
  final int index;
  final String value;
  final Function(int) tapped;
  final bool isWinner;
  const CustomCell({
    super.key,
    required this.index,
    required this.tapped,
    required this.value,
    required this.isWinner,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        tapped(index);
      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          image: value.isEmpty
              ? null
              : DecorationImage(
                  image: (value == 'x'
                      ? AssetImage("assets/images/x_icon.png")
                      : AssetImage("assets/images/o_icon.png")),
                  fit: BoxFit.cover,
                ),
          border: (isWinner != false
              ? Border.all(width: 10, color: Colors.lightBlue)
              : null),
        ),
      ),
    );
  }
}
