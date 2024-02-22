import 'package:bmi_calculator/ans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  Screen2({super.key});

  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h = 0, w = 0, bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Enter Your Height(in cm) '),
                labelStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 5,
                  ),
                ),
              ),
              controller: height,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                label: Text('Enter Your Weight'),
                labelStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 5,
                  ),
                ),
              ),
              controller: weight,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // if (Get.arguments['age'] > 2 && Get.arguments['age'] < 20) {
                // //   Get.to(() => Screen2(), arguments: {
                // //     "age": age,
                // //     "gender": gender,
                // //   });
                //   if ( Get.arguments['gender'] =="f")
                //   {
                //
                //   }
                // }
                // else{
                h = (double.parse(height.text) / 100) as double;
                w = double.parse(weight.text);

                bmi = (w / (h * h)) as double;

                // bmi=bmi.toStringAsPrecision(2) as double;
                Get.to(() => Check(), arguments: {
                  'bmi': bmi.toString(),
                });

                // }
              },
              child: Text("Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}
