// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  int sCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              flexibleSpace: Image(
                image: AssetImage("assets/bar.jpeg"),
                fit: BoxFit.cover,
              ),
              title: Text("فَذَكِّرْ إِن نَّفَعَتِ الذِّكْرَى",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30)),
              centerTitle: true,
            ),
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/masged.jpeg"),
                    fit: BoxFit.cover),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                        height: 100,
                        width: 380,
                        alignment: Alignment.topRight,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFCA9E6D), blurRadius: 20)
                          ],
                          color: Color(0xFFCA9E6D),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                        ),
                        child: Text(
                            "  الدعاءُ بعدَ التسبيح : \n"
                                " * لا إله إلا الله وحده لا شريك لهُ , لهُ الملك ,  \n"
                                "   ولهُ الحمدُ , يُحى ويُميت , وهو على كلِ شئٍ قديرُ *",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                                shadows: [
                                  Shadow(blurRadius: 15,
                                      color: Colors.orange)
                                ]))),
                  ),
                  SizedBox(
                    height: 135,
                  ),
                  if (counter >= 0 && counter <= 33)
                    Text("سبحان الله",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                            shadows: [
                              Shadow(blurRadius: 15, color: Colors.orange)
                            ])),
                  if (counter >= 34 && counter <= 66)
                    Text("الحمد لله",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                            shadows: [
                              Shadow(blurRadius: 15, color: Colors.orange)
                            ])),
                  if (counter >= 67 && counter < 99)
                    Text("الله أكبر",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                            shadows: [
                              Shadow(blurRadius: 15, color: Colors.orange)
                            ])),
                  if (counter >= 99)
                    Text("الله أكبر",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.white,
                            shadows: [
                              Shadow(blurRadius: 15, color: Colors.orange)
                            ])),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFAFEFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Center(
                        child: Text(
                          "عدد التسبيحات ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF74263E),
                            shadows: [
                              Shadow(blurRadius: 15, color: Colors.orange)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("$counter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white70,
                          shadows: [
                            Shadow(blurRadius: 15, color: Colors.orange)
                          ])),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image: AssetImage("assets/bar.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      //   border: Border.all(color:Color(0xFFCA9E6D),width: 4,)
                    ),
                    child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counter++;
                                if (counter > 33 && counter <= 34) {
                                  Vibration.vibrate(duration: 100);
                                }
                                if (counter > 66 && counter <= 67) {
                                  Vibration.vibrate(duration: 100);
                                }
                                if (counter > 99) {
                                  Vibration.vibrate(duration: 1000);
                                  counter = 0;
                                  sCounter++;
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(30),
                                side: BorderSide(
                                    width: 2, color: Colors.white70)
                            ),
                            child: Text("إضغط",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xFFCA9E6D),
                                    fontWeight: FontWeight.bold)))),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Vibration.vibrate(duration: 500);
                            setState(() {
                              counter = 0;
                              sCounter = 0;
                            });
                          },
                          child: Text("البدء من جديد",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white70,
                                  shadows: [
                                    Shadow(blurRadius: 15,
                                        color: Colors.orange)
                                  ])),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text("$sCounter : عدد الدورات ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white70,
                                shadows: [
                                  Shadow(blurRadius: 15,
                                      color: Colors.orange)
                                ])),
                      ],
                    ),
                  ),
                ],
              ),
            )));}}
