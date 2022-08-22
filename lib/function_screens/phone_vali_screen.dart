import 'package:flutter/material.dart';

class PhoneValidator extends StatelessWidget{
    String phoneVal ="";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future openDiaLog()=> showDialog(
        context: context,
        builder: (context)=>AlertDialog(
          title: Text("Result"),
          content: Text(
              _noticeResult(phoneVal)
          ),
        ))
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone validator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.continueAction,
            onChanged: (text) async {
              phoneVal = text;
            },
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: openDiaLog,
              child: const Text(
                  "Check"
              ))
        ],
      ),
    );





  }



  String _noticeResult(String phoneNumber){
    print(phoneNumber);
    if(_phoneValidator(phoneNumber)) return "True";
    return "False";
  }

  bool _phoneValidator(String? phoneNumber){
    if (phoneNumber == null) return false;
    final regExp = RegExp('(0)(3|5|7|8|9)+([0-9]{8})');
    return regExp.hasMatch(phoneNumber);
  }


}