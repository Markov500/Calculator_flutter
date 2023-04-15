import 'package:flutter/material.dart';

class CalculatorBtn extends StatelessWidget {
  final String value;
  final addUserInput;
  final String userInputText;
  const CalculatorBtn(
      {super.key,
      required this.value,
      required this.addUserInput,
      required this.userInputText});

  getColor(String text) {
    if (text == "/" ||
        text == "*" ||
        text == "+" ||
        text == "-" ||
        text == "C" ||
        text == "(" ||
        text == "C" ||
        text == ")") {
      return const Color.fromARGB(255, 252, 100, 100);
    }
    return Colors.white;
  }

  getBgColor(String text) {
    if (text == "AC") {
      return const Color.fromARGB(255, 252, 100, 100);
    }
    if (text == "=") {
      return Color.fromARGB(153, 100, 252, 100);
    }
    return const Color(0xFF1d2630);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromARGB(204, 123, 128, 132),
      onTap: () {
        addUserInput(value);
      },
      child: Ink(
        decoration: BoxDecoration(
            color: getBgColor(value),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 0.5,
                  offset: const Offset(-3, -3))
            ]),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: getColor(value)),
          ),
        ),
      ),
    );
  }
}
