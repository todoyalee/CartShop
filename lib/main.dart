import 'package:flutter/material.dart';



void main(){
  runApp(myApp());
}


class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool active=false;

  void add(){

    setState(() {
      active=!active;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: GestureDetector(
        onTap: add,
      
        child:Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: active ? Colors.green : Colors.grey[300]
          ),
          child: Center(child: Text(active ? "active " : "false",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        )
        
      ),
    );
  }
}