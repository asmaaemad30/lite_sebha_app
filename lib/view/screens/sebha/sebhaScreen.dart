import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lite_sebha_app/constants.dart';


class sebhaScreen extends StatefulWidget {
  const sebhaScreen({Key? key}) : super(key: key);

  @override
  State<sebhaScreen> createState() => _sebhaScreenState();
}

class _sebhaScreenState extends State<sebhaScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Text('السبحة الإلكترونية',
          style: TextStyle(
            color: black,
            fontSize: textFont26,
            fontWeight: FontWeight.w600
          ),
        ),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: green1,
                padding: EdgeInsets.all(92),
              ),
                onPressed: (){
                  setState(() {
                    count++;
                  });
                },
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text('$count',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w600,
                      fontSize: textFont82,

                    ),
                    ),
                    Text('سبح',
                    style: TextStyle(
                      color:darkgreen,
                      fontSize: textFont18,
                      fontWeight: FontWeight.w600
                    ),
                    )
                  ],
                ),

            ),
            SizedBox(height:32),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: white,
                padding: EdgeInsets.all(22)
              ),
                onPressed:(){
                  setState(() {
                    count=0;
                  });
                },
                child:SvgPicture.asset(reset),

         ),

         ],
        ),
      ),

    );
  }
}
