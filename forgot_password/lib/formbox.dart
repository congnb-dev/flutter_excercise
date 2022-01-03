import 'package:flutter/material.dart';

class FormBox extends StatefulWidget {
  var title;
  var index;
  var sized;
  FormBox(var title, var index, var sized, bool bool){
    this.title = title;
    this.index = index;
    this.sized = sized;
  }
  @override
  _FormBoxState createState() => _FormBoxState();
}

class _FormBoxState extends State<FormBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*widget.sized,
      margin: EdgeInsets.only(bottom: 10.0),
      child: TextField(
        obscureText: widget.index == 0?true:false,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              width: 4.0,
              style: BorderStyle.none,
            ),
          ),
          hintStyle: TextStyle(fontSize: 20,color: Colors.grey,),
          hintText: widget.title,
          contentPadding: EdgeInsets.all(20),
          labelText: widget.title,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}