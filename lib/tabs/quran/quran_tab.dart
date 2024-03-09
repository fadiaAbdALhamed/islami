import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/sura_details_screen.dart';

class QuranTab extends StatelessWidget {

List< String> suraNames = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {

    return Column(

      children: [
        Image .asset('assets/images/qur2an_screen_logo.png',
        ),

         SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
                    arguments: SuraDetailsArgs(index, suraNames[index]),
                    );
                  },
                  child: Text(suraNames[index],
                  style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,),
                ),

          itemCount: suraNames.length,
            separatorBuilder: (context, index) =>SizedBox(height: 2),
          ),
        )
      ],

    );

  }

}

class SuraDetailsArgs{
  int index;
  String suraName;
  SuraDetailsArgs(this .index,this .suraName);
}