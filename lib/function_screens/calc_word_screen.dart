import 'package:flutter/material.dart';

class CalculatorWords extends StatelessWidget{
  String inputVal ="";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future openDiaLog()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: const Text("Result"),
          content: Text(
              _solveString(inputVal).toString()
          ),
        ))
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Words"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              inputVal = text;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog,
              child: const Text(
                  "Execute"
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

   Map<String, int> _solveString(String words){
      List strList = [];
      for(int i=0;i<words.length;i++){
        strList.add(words[i]);
      }
      print(strList);
      Map<String,int> map={};
      int cnt=1;
      for(String s in strList){
        if(map.containsKey(s)){
          cnt++;
          map[s]=cnt;

        }else{
          map[s]=1;
          cnt=1;
        }
      }

      return map;

  }


}