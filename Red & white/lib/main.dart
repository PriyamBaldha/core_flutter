//import 'package:flutter/cupertino.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Red & White"),
          titleTextStyle: const TextStyle(fontSize: 28,color:Colors.white,fontWeight: FontWeight.bold),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: "          G",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                letterSpacing: 3,
                fontWeight: FontWeight.bold
              ),
              children:[
                TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,

                  )
                ),

            TextSpan(
              text: "APHICS\n",
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,

          ),
          ),
            TextSpan(
            text: "   FLUTT",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),

          ),
            TextSpan(
            text: "E",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),
          ),
            TextSpan(
              text: "R\n",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "        AN",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "D",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
            text: "ROID\n",
            style: TextStyle(
                color: Colors.green,
                fontSize: 25,
            )
            ),
            TextSpan(
              text: "DESIGN",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: " &",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
              text: " DEVELOP\n",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "           W",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
              text: "EB\n",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "       FAS",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "H",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
              text: "ION\n",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: " ANIMAT",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "I",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
              text: "ON\n",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "            I",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "T",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            ),
            TextSpan(
              text: "A-CS+\n",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "       GAM",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
              )
            ),
            TextSpan(
              text: "E",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
              )
            )]

          ),

        ),


),

  ),
  ),
  );
}