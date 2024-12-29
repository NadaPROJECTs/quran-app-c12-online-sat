
import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
   SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String>Azkar=[
    'سبحان الله ',
    "الحمد لله",
    "الله اكبر"
  ];
  int counter=0;
  int index=0;
  double angle=0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var localization = AppLocalizations.of(context);
    return Center(
        child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(AssetsManager.head_sebha_logo),
                  Padding(
                    padding:  EdgeInsets.only(top: size.height*0.036),
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        AssetsManager.body_sebha_logo,
                        height: size.height*0.34,
                      ),
                    ),
                  )
                ],
              ),
              Text( localization!.number_sebha,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,

                ),),
              Spacer(flex: 1,),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 18),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(23)
                ),
                child:  Text(counter.toString(),style:Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24) ,),
              ),
              Spacer(flex: 2,),

              InkWell(
                onTap: onZekerClicked,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 12),
                  decoration: BoxDecoration(
                      color: Theme.of(context).dividerColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child:  Text("${Azkar[index]} ",style:Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 25 ,color: Theme.of(context).colorScheme.onPrimary) ,),
                ),
              ),
              Spacer(flex: 3,),

            ],
            ),
        );
    }
  onZekerClicked(){
    angle+=0.10;
    if(counter<33)
      {
        counter++;

      }else
        {
          counter=0;
          index++;
          if(index==Azkar.length)
            {
              index=0;
            }
        }
     setState(() {

     });
  }


}

