import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
   
   class ImageItemModel{
    final String imageUrl;
    final String title;

    const ImageItemModel(
      {
      required this.imageUrl,
       required this.title
       }
    );
   }

class TitleS extends StatefulWidget {
  const TitleS({super.key});

  @override
  State<TitleS> createState() => _TitleSState();
}

class _TitleSState extends State<TitleS> {
      final List <ImageItemModel> _imageItem=[
    ImageItemModel(
      imageUrl: 'icons/grapes.png',
       title: 'Grapes'
      
      
        ),
         ImageItemModel(
          imageUrl: 'icons/Broccoli.png',
           title: 'Broccoli'
   
        ),
         ImageItemModel(
          imageUrl: 'icons/cherry.png',
           title: 'Cherry'
     
        ),
        
         ImageItemModel(
          imageUrl: 'icons/orange.png',
           title: 'Orange'
     
        ),

         ImageItemModel(
          imageUrl: 'icons/cherry.png',
           title: 'Cherry'
     
        ),

          ImageItemModel(
          imageUrl: 'icons/banana.png',
           title: 'Banana'
     
        ),

   
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _imageItem.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      itemBuilder: (BuildContext context, int index) {
        final item = _imageItem[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 28.0.r,
                // child: getSvgImage(
                //   asset: Assets.nacks, 
                //   size: 32.r,
                  
                //   ),
                child: Image(image: AssetImage(item.imageUrl),),
              ),
              Text(item.title),
            ],
          ),
        );
      },
    );
  }
}
