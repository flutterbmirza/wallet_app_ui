import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconPath;
  final String buttonText;


  const MyButton({Key? key, required this.iconPath, required this.buttonText,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon given
        Container(
          height: 90,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(height: 12,),
        //text
        Text(buttonText, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }
}
