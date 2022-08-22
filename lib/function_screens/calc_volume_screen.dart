

import 'package:flutter/material.dart';

const pi =  3.141592653589793;

class CalculatorVolume extends StatelessWidget{

  double inputVal = 0.0, height=0.0, width=0.0, length = 0.0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future openDiaLog1()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Result"),
          content: Text(
              _calcCubeVolume(inputVal).toString()
          ),
        ))
    ;
    Future openDiaLog2()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Result"),
          content: Text(
              calcRectangularPrismVolume(length,width,height).toString()
          ),
        ))
    ;
    Future openDiaLog3()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Result"),
          content: Text(
              calcCylinderVolume(inputVal,height).toString()
          ),
        ))
    ;
    Future openDiaLog4()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Result"),
          content: Text(
              calcShpereVolume(inputVal).toString()
          ),
        ))
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Volume"),
      ),
      body: SingleChildScrollView (
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Cube"),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'width',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              inputVal = double.tryParse(text)!;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog1,
              child: const Text(
                  "Calc"
              )),
          SizedBox(height: 150,),
          Text("RectangularPrism"),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'length',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              length = double.tryParse(text)!;
            },
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'height',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              height = double.tryParse(text)!;
            },
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'width',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              width = double.tryParse(text)!;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog2,
              child: const Text(
                  "Calc"
              )),
          SizedBox(height: 150,),
          Text("Cylinder"),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'radius',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              inputVal = double.tryParse(text)!;
            },
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'height',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              height = double.tryParse(text)!;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog3,
              child: const Text(
                  "Calc"
              )),
          SizedBox(height: 150,),
          Text("Shpere"),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'radius',
            ),
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              inputVal = double.tryParse(text)!;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog4,
              child: const Text(
                  "Calc"
              ))
        ],
      ),
    )
    );





  }



  double _calcCubeVolume(double val){
    return val*val*val;
  }

  double calcRectangularPrismVolume(double length, double width, height){
    return length*width*height;
  }
  double calcCylinderVolume(double r, double height){
    return pi*r*r*height;
  }
  double calcShpereVolume(double r){
    return 4/3*pi*r*r*r;
  }


}