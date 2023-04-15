import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/btn_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "";
  String result = "0";
  final List<String> listButton = [
    "AC",
    "(",
    ")",
    "/",
    "7",
    "8",
    "9",
    "*",
    "4",
    "5",
    "6",
    "+",
    "1",
    "2",
    "3",
    "-",
    "C",
    "0",
    ".",
    "=",
  ];

  void handelUserInput(String value) {
    setState(() {
      userInput += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3 - 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  userInput,
                  style: const TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: listButton.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CalculatorBtn(
                  value: listButton[index],
                  addUserInput: handelUserInput,
                  userInputText: userInput,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
