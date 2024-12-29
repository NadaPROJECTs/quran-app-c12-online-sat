import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_ast/core/assets_manager.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(AssetsManager.head_sebha_logo),
                  Padding(
                    padding:  EdgeInsets.only(top: size.height*0.036),
                    child: Image.asset(
                      AssetsManager.body_sebha_logo,
                      height: size.height*0.34,
                    ),
                  )
                ],
              ),
              Text("عدد التسبيحات" ,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,

                ),)
            ],
            ),
        );
    }
}