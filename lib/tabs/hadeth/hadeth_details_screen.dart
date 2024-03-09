import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {

static const String routeName =' hadeth_details';
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;

     return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill,
          ),
        ),

        child: Scaffold(
          appBar: AppBar(
            title: Text (hadeth.title),
          ),
          body:

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
                  hadeth.content[index],
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                //  textDirection:TextDecoration.rtl,
                itemCount: hadeth.content.length),
          ),
        ));
  }
}
