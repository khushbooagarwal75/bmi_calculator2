import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  late String bmi;
  double val = 0.0;
  Color col = Colors.white;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    val = double.parse(Get.arguments['bmi']);
    val = double.parse(val.toStringAsPrecision(5));
    if (val < 18.5) {
      bmi = "underweight";
      col = Colors.green.shade400;
    } else if (val >= 18.5 && val <= 24.9) {
      bmi = "healthy weight";
      col = Colors.green.shade700;
    } else if (val >= 25.0 && val <= 29.9) {
      bmi = "overweight";
      col = Colors.orange.shade400;
    } else {
      double diff = val - 30;
      diff = double.parse(val.toStringAsPrecision(5));
      bmi = "obesity (you need to drop your bmi about $diff";
      col = Colors.orange.shade900;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: col,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Bmi Says you are $bmi ($val)",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
