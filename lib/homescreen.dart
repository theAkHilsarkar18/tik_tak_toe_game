import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tik_tak_toe_game/Modelclass.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}


Icon i1 = Icon(Icons.close,color: Colors.white,size: 50);
Icon i2 = Icon(Icons.circle_outlined,color: Colors.white,size: 50);
Icon? i;

int rnd0to1 = 0;

List<Modeldata> tiktak = [];

class _HomescreenState extends State<Homescreen> {
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3), itemCount : 9,itemBuilder: (context, index) => InkWell(onTap: () {
                    setState(() {

                      for(int i=1; i<=9; i++)
                        {
                          var rnd = Random();
                          rnd0to1 = rnd.nextInt(2);
                        }
                    });
                  },child: boxUi(rnd0to1)),),
            ),
          ),
        ),
      ),
    );
  }

  Widget boxUi(int rndP)
  {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.cyan,
        border: Border(bottom: BorderSide(color: Colors.white,width: 3),right: BorderSide(width: 3,color: Colors.white),),
      ),
      child: Text("$rndP"),
    );
  }


}
