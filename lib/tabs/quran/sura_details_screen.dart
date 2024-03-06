import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/quran_tab.dart';

class SuraDetailsScreen extends StatelessWidget {

static const String routeName ='suraDetails';
  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args=
    ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    loadSuraFile(args.index);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill,
          ),
        ),

        child: Scaffold(
          appBar: AppBar(
            title: Text (args.suraName),
          ),
          body: Container(),
        ));
  }
  void loadSuraFile (int index){}
  //read file logic
}
