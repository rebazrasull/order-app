import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app_name/config/cstuomerimage/assets.dart';
import 'package:my_app_name/config/cstuomerimage/img_helper.dart';

class TitleS extends StatefulWidget {
  const TitleS({super.key});

  @override
  State<TitleS> createState() => _TitleSState();
}

class _TitleSState extends State<TitleS> {
  List<Map<String, dynamic>> title =[

   ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 28.0,
                child: getSvgImage(asset: Assets.nacks, size: 24),
                // child: SvgPicture.asset(
                //     CustomIcons.nacks,
                //    ),
              ),
              SizedBox(height: 6),
              Text('Title'),
            ],
          ),
        );
      },
    );
  }
}
