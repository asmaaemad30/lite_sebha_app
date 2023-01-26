import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lite_sebha_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(

         children: [
           Text('الأحد 25,سبيتمبر',
             style: TextStyle(
               color: black,
               fontSize: textFont16,
               fontWeight: FontWeight.w600,

             ),
           textAlign: TextAlign.right,),
           Text('13 صفر,1444',
             style: TextStyle(
               color: green3,
               fontSize: textFont14,
               fontWeight: FontWeight.w500,


             ),
           textAlign:TextAlign.right,),
           Card(
             color: green3,
             shadowColor: green3.withOpacity(0.1),
             elevation: 5,
             child: Padding(
               padding: const EdgeInsets.all(16),
               child: Column(
                 children: [
                   Center(child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                        Text('الزقازيق, الشرقية',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: textFont14,
                          color: white
                        ),),
                         SvgPicture.asset(location)
                       ],
                     ),),
                   Container(
                     alignment: Alignment.centerRight,
                     child: Text('متبقي على',
                       style: TextStyle(
                         color: white,
                         fontSize: textFont14,
                         fontWeight: FontWeight.w500
                       ),
                         ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,

                     children: [
                       Row(
                         children: [
                           Text(('دقيقة'),
                             style: TextStyle(
                                 color: white,
                                 fontSize: textFont14,
                                 fontWeight: FontWeight.w500
                             ),
                           ),
                           Text(('15:20'),
                             style: TextStyle(
                                 color: white,
                                 fontSize: textFont34,
                                 fontWeight: FontWeight.w600
                             ),
                           ),

                         ],
                       ),
                       Text('صلاة الظهر',
                         style: TextStyle(
                             color: white,
                             fontSize: textFont34,
                             fontWeight: FontWeight.w600
                         ),)

                     ],
                   )
                 ],
               ),
             ),
           ),
           SizedBox(height: 32),
           Card(
               color: white,
               shadowColor: white.withOpacity(0.1),
               elevation: 5,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('مواعيد الصلاة',
                           style: TextStyle(
                             color: white,
                             fontSize: textFont18,
                             fontWeight: FontWeight.w600,

                           ),
                           ),
                         SvgPicture.asset(mosque)
                       ],

                     ),
                     width: MediaQuery.of(context).size.width/2.5,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(10),
                         bottomLeft: Radius.circular(10)
                       ),
                       color: green3
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('4:41 ص',
                           style: TextStyle(
                               color: gray,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('الفجر',
                         style: TextStyle(
                           color: gray,
                           fontWeight: FontWeight.w600,
                           fontSize: textFont16
                         ),),
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: const [
                         Text('6:09 ص',
                           style: TextStyle(
                               color: gray,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('الشروق',
                           style: TextStyle(
                               color: gray,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),),


                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('11:39 ص',
                           style: TextStyle(
                               color: green3,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('الظهر',
                           style: TextStyle(
                               color: green3,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),),


                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('2:45 م',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('العصر',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),),


                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('5:08 م',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('المغرب',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),),


                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('6:27 م',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),
                           textDirection: TextDirection.rtl,),
                         Text('العشاء',
                           style: TextStyle(
                               color: black,
                               fontWeight: FontWeight.w600,
                               fontSize: textFont16
                           ),),


                       ],
                     ),
                   ),

                 ],
               ),
             ),
           SizedBox(height: 32),
           Card(
             child: Padding(
               padding: const EdgeInsets.all(16),
               child: Column(
                 children: [
                   Container(
                     alignment: Alignment.centerRight,
                     child: Text('دعاء اليوم',
                     style: TextStyle(
                       color: green3,
                       fontSize: textFont14,
                       fontWeight: FontWeight.w500
                     ),
                     textAlign: TextAlign.right,),
                   ),
                   Container(
                     alignment: Alignment.centerRight,

                     child: Text('(اللَّهُمَّ إنِّي أعُوذُ بكَ مِنَ الهَمِّ والحَزَنِ، والعَجْزِ والكَسَلِ، والبُخْلِ، والجُبْنِ، وضَلَعِ الدَّيْنِ، وغَلَبَةِ الرِّجالِ)',
                       style: TextStyle(
                           color: black,
                           fontSize: textFont16,
                           fontWeight: FontWeight.w600
                       ),
                       textAlign: TextAlign.right,
                     textDirection: TextDirection.rtl,),

                   ),

                 ],
               ),
             ),
           ),
         SizedBox(height: 5),


         ],
        ),
      ),

    );
  }
}
