import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth_tab.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/tabs/radio/radio_tab.dart';
import 'package:islami/tabs/sebha/sebha_tab.dart';
import 'package:islami/tabs/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {

static const String routeName ='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget>tabs =[



    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),

  ];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return
       Container(

         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/images/default_bg.png'),
             fit: BoxFit.fill,
           ),
         ),
         child: (Scaffold(
          appBar: AppBar(
           // backgroundColor: Colors.transparent,
            title: Text ('إسلامي',style: TextStyle(color: Colors.black)),
          ),
         // extendBodyBehindAppBar: true,
          body:
          tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex =index;
            setState(() {

            });
          },
          items: [ BottomNavigationBarItem(
              icon:ImageIcon(AssetImage('assets/images/moshaf_gold.png') )
              ,label:'Quran' ),

            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/hadeth.png'))
                ,label:'Hadeth' ),

            BottomNavigationBarItem(
                icon:ImageIcon(AssetImage('assets/images/sebha.png') )
                ,label:'Sebha' ),

            BottomNavigationBarItem(
              icon:ImageIcon(AssetImage('assets/images/radio.png'))
              ,label:'Radio' ),

            BottomNavigationBarItem(
                icon:Icon(Icons.settings_outlined)
                ,label:'Settings' ),

          ],

      ),

      )


    ),
       );
  }
}
