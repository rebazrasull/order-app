import 'package:flutter/material.dart';
import 'package:my_app_name/config/cstuomerimage/assets.dart';
import 'package:my_app_name/config/cstuomerimage/img_helper.dart';

 class FoodsItemModel {
   final String imageUrl;
    final String title;
    final  String money;

    const FoodsItemModel({
      required this.imageUrl,
       required this.title,
        required this.money
          }
       );
    }

class Productcard extends StatefulWidget {
  const Productcard({super.key});

  @override
  State<Productcard> createState() => _ProductcardState();
}

class _ProductcardState extends State<Productcard> {
    final List <FoodsItemModel> _foodItem = [

      FoodsItemModel(
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSez5LmDZSNrcV7cVP0kDWNLlB96FVSr96resoxDSSHYQ&s=10',
         title: 'Samosa',
          money: '\$600'
          ),
           FoodsItemModel(
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSX_rfHEZCZUwdEohg7cHWxVGP6C1XVAg5wXA7JD8HaA&s=10',
         title: 'Pizza',
          money: '\$800'
          ),
           FoodsItemModel(
        imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaa-WMTgXvpDqQZ35ZJR3zAmbU1wLbN6pAjnHndLVXAQ&s=10',
         title: 'Hamberger',
          money: '\$1000'
          ),

    ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _foodItem.length, 
      itemBuilder: (BuildContext context, int index) {
         final item = _foodItem[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey.shade100
                ),
              // child:  getSvgImage(
              //   asset: item.imageUrl,
              // )
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12.0),
                child: Image.network(
                  item.imageUrl
                  )
                ),
               ),
              SizedBox(
                height: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 43.0,
                    ),
                    child: Text(
                        item.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0
                         ),
                        ),
                  ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 43.0,
                        ),
                        child: Text(
                          item.money,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0
                          ),
                          ),
                      )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}