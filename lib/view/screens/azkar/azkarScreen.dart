import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lite_sebha_app/constants.dart';
import 'package:lite_sebha_app/view/screens/azkarAlsabah/azkarAlsabah.dart';
import '';
class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          centerTitle: true,
          title: Text('الأذكار',
            style: TextStyle(
                color: black,
                fontSize: textFont26,
                fontWeight: FontWeight.w600
            ),
          ),

        ),

      body: ListView(
        padding: EdgeInsets.all(24),
        children: [

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
               return AzkarAlsabah();
              }
              )
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Stack(
                children: [
                  Image.asset(morning,
                   width: MediaQuery.of(context).size.width,),

                  Positioned(
                    bottom: 20,
                    right: 20,
                    child:  Center(
                      child: Text('أذكار الصباح',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: textFont18,
                          color: white
                      ),),
                    ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Image.asset(night,
                width: MediaQuery.of(context).size.width,),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child:Text('أذكار المساء',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: textFont18,
                          color: white
                      ),), )
              ],
            ),
          ),
          Container(
            child: Text('أذكار متنوعة',
            style: TextStyle(
              fontSize: textFont18,
              fontWeight: FontWeight.w600,
              color: black,
            ),),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.all(24),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Image.asset(midnight,
                  width: MediaQuery.of(context).size.width,),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child:Text('أذكار قيام الليل',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: textFont18,
                        color: white
                    ),), )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Image.asset(pray,
                  width: MediaQuery.of(context).size.width,),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child:Text('أذكار الصلاة',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: textFont18,
                        color: white
                    ),), )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Image.asset(bedtime,
                  width: MediaQuery.of(context).size.width,),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child:Text('أذكار النوم',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: textFont18,
                        color: white
                    ),), )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Image.asset(random,
                  width: MediaQuery.of(context).size.width,),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child:Text('أدعية متنوعة',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: textFont18,
                        color: white
                    ),), )
              ],
            ),
          ),
        ],
      ),

     

      );

  }
}

