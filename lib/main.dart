import 'package:flutter/material.dart';


void main() {
  runApp(myApp());
}


class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool truth=false;


void add(){
setState(() {
  
  if(truth){
    truth=false;
  }else {
    truth=true;
  }
});

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("hard work always pays off , you're gonna  be a great software engineer daly ! "),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(decoration: InputDecoration(hintText: "enter your goal "
              ),
              obscureText: false,
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(decoration: InputDecoration(hintText: "enter your motive "
              ),
              obscureText: true,
              ),
            ),
            SizedBox(height: 10,),
            IconButton( icon:truth 
            ? Icon(Icons.star)
            :Icon(Icons.star_border),
            color: Colors.red,
            onPressed: ()=>add(),

            )

          ]),
        ),
      )
    );
  }
}