import 'dart:math';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

List signO = [
  "O",
  "O",
  "O",
  "O",
  "O",
  "O",
  "O",
  "O",
  "O",
];
List signX = [
  "X",
  "X",
  "X",
  "X",
  "X",
  "X",
  "X",
  "X",
  "X",
];
List signnull = [
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
];
int i = 0;
String x = " ";

List position = [2,5,6,8,3,1,4,0,7];



class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,

          leading:
              Icon(
                Icons.all_inclusive,
                size: 35,
              ),

          title: Text("tiK taK toE",style: TextStyle(fontSize: 25,letterSpacing: 2,fontWeight: FontWeight.w700),),

          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {

                  });
                },
                  child: Icon(Icons.refresh,size: 30)),
            ),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(50),
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {

                      signnull[index] = signX[index];
                      print(index);
                     // position.remove(index);

                      signnull[position[index]] = signO[position[index]];
                      print(position[index]);

                      if((signnull[0] == signnull[1] && signnull[1] == signnull[2] ) )
                        {
                          x = "Winner";
                        }


                    });
                  },
                    child: boxui(signnull[index]),),
                itemCount: signnull.length,
              ),
            ),

            Text("${x}",style: TextStyle(color: Colors.red,fontSize: 30)),
          ],
        ),
      ),
    );
  }

  Widget boxui(String s) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.cyan,
        border: Border(
            right: BorderSide(color: Colors.white, width: 3),
            bottom: BorderSide(color: Colors.white, width: 3)),
      ),
      alignment: Alignment.center,
      child: Text("$s", style: TextStyle(color: Colors.white, fontSize: 50)),
    );
  }
}

