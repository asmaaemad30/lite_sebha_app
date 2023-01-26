import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lite_sebha_app/constants.dart';

class CounterAzkar extends StatefulWidget {
  int counter ;
  String text;
  bool cardVisible=true;



  CounterAzkar(
  {
    required this.counter,
    required this.text,

  }
      );

  @override
  State<CounterAzkar> createState() => _CounterAzkarState();
}

class _CounterAzkarState extends State<CounterAzkar> {

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:widget.cardVisible ,
      child: InkWell(
        onTap: () {
          if (widget.counter > 0) {
            setState(() {
              widget.counter--;
              if(widget.counter==0){
                setState(() {
                  widget.cardVisible=false;
                });
              }
            });
          }
        },
        child: Card(
          color: white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  '${widget.text}',
                  style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontSize: textFont16
                  ),

                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,),

                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    width: 23,
                    height: 26,
                    child: Center(
                      child: Text('${widget.counter}',
                        style: TextStyle(
                            color: white,
                            fontSize: textFont14,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                    decoration: BoxDecoration(
                      color: green3,
                      borderRadius: BorderRadius.all(Radius.circular(5)),

                    ),
                    alignment: Alignment.bottomLeft,


                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}