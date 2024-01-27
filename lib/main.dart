import 'package:flutter/material.dart';
import 'package:flutter2/ippo.dart';


void main(){
  runApp(myApp());
}




class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    String goal="i am going to outwork everyone and i'm gonna be a great software engineer in berlin";
    return MaterialApp(

      home: Scaffold(


        body: Center(child: 

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$goal"),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "enter your goal"),
                obscureText: false,
              ),
            ),
            SizedBox(height: 20,) ,
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "enter your total goal"),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20,) ,


            ippo(),
          ],)
        
        
        )
      ),
    );
  }
}


