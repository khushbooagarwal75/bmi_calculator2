import 'package:bmi_calculator/Screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screen2(),
    );
  }
}

// class Bmi extends StatefulWidget {
//   const Bmi({super.key});
//
//   @override
//   State<Bmi> createState() => _BmiState();
// }
//
// class _BmiState extends State<Bmi> {
//   var age_tc = TextEditingController();
//   var gen_tc = TextEditingController();
//   int age = 0;
//   String gender = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.amber,
//         title: Text("BMI Calculator"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child:
//             Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     label: Text('Enter Your Age'),
//                     labelStyle: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                       borderSide: BorderSide(
//                         color: Colors.amber,
//                         width: 5,
//                       ),
//                     ),
//                   ),
//                   controller: age_tc,
//                   onSubmitted: (value) {
//                     setState(() {
//                       age = int.parse(value);
//                     });
//
//                   },
//                 ),
//                 SizedBox(height: 15),
//                 TextField(
//                   decoration: InputDecoration(
//                     label: Text('Enter Your Gender'),
//                     labelStyle: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                       borderSide: BorderSide(
//                         color: Colors.amber,
//                         width: 5,
//                       ),
//                     ),
//                   ),
//                   controller: gen_tc,
//                   onSubmitted: (value) {
//                     setState(() {
//                       gender = value;
//                     });
//
//                   },
//                 ),
//                 SizedBox(height: 15),
//                 TextButton(
//                   onPressed: () {
//                     // if (age > 2 || age < 20) {
//                     //   Get.to(() => Screen2(), arguments: {
//                     //     "age": age,
//                     //     "gender": gender,
//                     //   });
//                     // }
//                     // else{
//                       Get.to(() => Screen2(),arguments:{"age":age_tc.text,
//                             "gender": gen_tc.text, });
//                     // }
//                   },
//                   child: Text("Next>>"),
//                 ),
//               ],
//             ),
//
//       ),
//     );
//   }
// }
