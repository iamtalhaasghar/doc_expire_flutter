import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BMIApp());
}

class BMIApp extends StatefulWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  _BMIAppState createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {

  TextEditingController tecWeight = TextEditingController();
  TextEditingController tecHeight = TextEditingController();
  TextEditingController tecResult = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Find out what your Body Mass Index is"),
              Text("Weight:"),
              TextField(
                controller: tecWeight,
                keyboardType: TextInputType.number,
              ),
              Text("Height:"),
              TextField(
                controller: tecHeight,
                keyboardType: TextInputType.number,
              ),
              MaterialButton(child: Text("Calculate BMI"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  double weight = double.parse(tecWeight.text);
                  double height = double.parse(tecHeight.text);
                  double result = (weight / (height * 2));
                  tecResult.text = result.toString();
                },
              ),
              TextField(
                controller: tecResult,
                readOnly: true,
              ),

            ]
          ),

        ),
        appBar: AppBar(
          title: Text("AppBarTitle"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}

