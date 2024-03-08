import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/tabs/quran/quran_tab.dart';
import 'package:islami/widgets/loading_indicator.dart';

class SuraDetailsScreen extends StatefulWidget {

static const String routeName ='suraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List < String > ayat=[];

  @override
  Widget build(BuildContext context) {

    SuraDetailsArgs args=
    ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
   if (ayat .isEmpty)
   {loadSuraFile;}//(args.index);
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
          body: ayat .isEmpty ? LoadingIndicator():

         Container(
           padding: EdgeInsets.all(25),
           margin: EdgeInsets.symmetric(
             vertical:MediaQuery.of(context).size.height *.05 ,
             horizontal:MediaQuery.of(context).size.width *.05  ,

           ),
           decoration: BoxDecoration(
             // color: AppTheme.white,
             borderRadius: BorderRadius.circular(25))
           ,

           child: ListView.builder(
              itemBuilder: (context, index) => Text(
                  ayat[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),

             //  textDirection:TextDecoration.rtl,
               itemCount: ayat.length),
         ),
        ));
  }

    Future<void >loadSuraFile (int index) async {

   String sura= await rootBundle.loadString('assets/files/${index +1}.txt');
       ayat=sura.split('\n');
       setState((){});

  }
}
//class SuraDetailsArgs{
  //int index ;
   //String suraName ;
 //SuraDetailsArgs( this .index, this.suraName);
// }


