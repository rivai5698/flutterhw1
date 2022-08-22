import 'package:flutter/material.dart';
import 'package:untitled/function_screens/calc_fibo_screen.dart';
import 'package:untitled/function_screens/calc_volume_screen.dart';
import 'package:untitled/function_screens/calc_word_screen.dart';

import 'function_screens/phone_vali_screen.dart';

void main() {
  runApp( MyFuncApp());
}

class MyFuncApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Functions",
      home:  MyFuncHomePage(),
    );
  }

}

class MyFuncHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row (
          children: [
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhoneValidator()),
              );
            },
                child: const Text(
                  "Phone validator"
                )),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalculatorVolume()),
              );
            },
                child: const Text(
                    "Volume calculator"
                )),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalculatorFibo()),
            );},
                child: const Text(
                    "Fibonacci"
                )),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalculatorWords()),
            );},
                child: const Text(
                    "Dictionary"
                )),

          ],
    );
  }

}


