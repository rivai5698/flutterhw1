import 'package:flutter/material.dart';

class CalculatorFibo extends StatelessWidget{
  int inputVal =0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future openDiaLog()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: const Text("Result"),
          content: Text(
              _checkFibo(inputVal).toString()
          ),
        ))
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Fibonacci"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              inputVal = int.tryParse(text)!;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog,
              child: const Text(
                  "Calc"
              ))
        ],
      ),
    );





  }



  // String _noticeResult(String phoneNumber){
  //   print(phoneNumber);
  //   if(_phoneValidator(phoneNumber)) return "True";
  //   return "False";
  // }

  int _checkFibo(int? pos){
    if(pos == null) return 0;
    if (pos == 1 ) return 0;
    if (pos == 2||pos ==3) return 1;
    return _checkFibo(pos-1) + _checkFibo(pos-2);

  }


}