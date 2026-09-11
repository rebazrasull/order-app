import 'package:flutter/material.dart';
import 'package:my_app_name/features/shopping/widget/shopping.dart';

class Shoppingbagscreen extends StatefulWidget {
  const Shoppingbagscreen({super.key});

  @override
  State<Shoppingbagscreen> createState() => _ShoppingbagscreenState();
}

class _ShoppingbagscreenState extends State<Shoppingbagscreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Shopping',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
        actions: [
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.green.shade300,
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Badge(
                      alignment: Alignment(0.6, -0.7),
                      smallSize: 10,
                      backgroundColor: Colors.deepOrange,
                      child: Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.green.shade300,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 14.0
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  color: Colors.blue,
                  child:  SizedBox(
                    height: deviceHeight*0.6, 
                    child: Shopping(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}