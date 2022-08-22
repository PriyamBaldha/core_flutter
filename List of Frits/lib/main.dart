//import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("📚List of Fruits"),
          titleTextStyle: const TextStyle(fontSize: 28,color:Colors.white,fontWeight: FontWeight.bold),
          backgroundColor: Colors.teal,
          centerTitle: true,



        ),
        body:const Center(
          child: Text.rich(
            TextSpan(
                text: "🍎Apple\n\n",
                style: TextStyle(
                  fontSize: 40,

                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3,
                  letterSpacing: 4
                ),
                children: [
                  TextSpan(
                      text: "🍆Greps\n\n",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 15,
                        decoration: TextDecoration.none,
                      ),
                      children: [
                        TextSpan(
                            text: "🍒Cherry\n\n",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 3,
                              decoration: TextDecoration.none,
                            ),
                            children: [
                              TextSpan(
                                  text: "🍓Strawberry\n\n",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 3,
                                    decoration: TextDecoration.none,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "🥭Mango\n\n",
                                        style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          wordSpacing: 3,
                                          decoration: TextDecoration.none,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: "🍍Pineapple\n\n",
                                              style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.purple,
                                                fontWeight: FontWeight.bold,
                                                wordSpacing: 3,
                                                decoration: TextDecoration.none,
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: "🍋Lemon\n\n",
                                                    style: TextStyle(
                                                      fontSize: 40,
                                                      color: Colors.amber,
                                                      fontWeight: FontWeight.bold,
                                                      wordSpacing: 3,
                                                      decoration: TextDecoration.none,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: "🍉Watermelon\n\n",
                                                          style: TextStyle(
                                                            fontSize: 40,
                                                            color: Colors.green,
                                                            fontWeight: FontWeight.bold,
                                                            wordSpacing: 3,
                                                            decoration: TextDecoration.none,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                                text: "🥥Coconut",
                                                                style: TextStyle(
                                                                  fontSize: 40,
                                                                  color: Colors.brown,
                                                                  fontWeight: FontWeight.bold,
                                                                  wordSpacing: 3,
                                                                  decoration: TextDecoration.none,
                                                                )
                        )]
                  )]


            )],
          )],
        )],

      )],
    )],

  )],
  ),
  ),
  ),
  ),
  ),
  );
}