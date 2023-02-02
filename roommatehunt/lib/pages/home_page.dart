import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roommatehunt/pages/quiz_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Hi Email!', 
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),),
              Text("Please take the quiz so we can find a roommate for you whose interests align with yours",style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              
            ),),
              
              // ElevatedButton(onPressed:() { },
              // child: null,
              // ),
              
    ],
  ),
)




      )
    );
  }
}
