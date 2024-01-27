import 'package:flutter/material.dart';


class ippo extends StatelessWidget {
  const ippo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: (){
                const snackBar = SnackBar(content: Text("do your best daly ! you're the best" ));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20)
                  
                ),
                
              ),
            );
  }
}