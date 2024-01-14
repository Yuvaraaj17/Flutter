import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String msg='';
  final _FormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(
            key: _FormKey,
            validator: ((value){
              if(value.toString().isEmpty){
                return "Value should not be empty";
              }
              else{
                return null;
              }
            }),
            onChanged: ((value){
              setState(() {
                msg=value.toString();
              });;
            }),

          ),
          Text("Message is:"+msg)
        ],
      ),
    );
  }
}
