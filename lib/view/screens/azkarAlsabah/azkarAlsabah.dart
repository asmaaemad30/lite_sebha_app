import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lite_sebha_app/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'counterAzkar.dart';


class AzkarAlsabah extends StatefulWidget {
  const AzkarAlsabah({Key? key}) : super(key: key);

  @override
  State<AzkarAlsabah> createState() => _AzkarAlsabahState();
}

class _AzkarAlsabahState extends State<AzkarAlsabah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: Text('أذكار الصباح',
          style: TextStyle(
              color: black,
              fontSize: textFont18,
              fontWeight: FontWeight.w600
          ),
        ),
        leading:IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:SvgPicture.asset(blackVector) ,
        ),

      ),

      body: ListView(
        padding: EdgeInsets.all(24),
        children: [


          CounterAzkar(counter: 10,text: '“((اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا ، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُورُ)). [وإذا أمسى قال: اللَّهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير.]”',),
          CounterAzkar(counter: 10,text: '“(اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلاَّ أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لاَ يَغْفِرُ الذُّنوبَ إِلاَّ أَنْتَ)”',),
          CounterAzkar(counter: 33,text: '“((اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلاَئِكَتِكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلاَّ أَنْتَ وَحْدَكَ لاَ شَرِيكَ لَكَ، وَأَنَّ مُحَمَّداً عَبْدُكَ وَرَسُولُكَ)) [ وإذا أمسى قال: اللَّهم إني أمسيت...]”',),
          CounterAzkar(counter: 99,text: '“((سُبْحَانَ اللَّهِ وَبِحَمْدِهِ))”',),




        ],
      ),

    );
  }
}
