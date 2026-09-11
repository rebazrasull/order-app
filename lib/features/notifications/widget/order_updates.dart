import 'package:flutter/material.dart';

class OrderUpdates extends StatefulWidget {
  const OrderUpdates({super.key});

  @override
  State<OrderUpdates> createState() => _OrderUpdatesState();
}

class _OrderUpdatesState extends State<OrderUpdates> {
   final List<Map<String,dynamic>> _upates =[
    
    {
      'backgroundColor':Colors.deepOrangeAccent.withValues(
        alpha: 0.1,          
        ),
      'title':'Order on the way! 🛵',
      'icon':Icons.two_wheeler_rounded,
      'iconcolor':Colors.orange,
      'time':'5m ago',
      'subtitle': 'Your order from Burger Express is\n with the courier and will arrive in 15 mins.'
    },
    {
      'backgroundColor':Colors.green.withValues(
        alpha: 0.2 
      ),
      'title':'Order Delivered 🎉',
      'icon':Icons.check_circle_rounded,
      'iconcolor':Colors.green,
      'time':'5m ago',
      'subtitle': 'Your order from Pizza Palace has been\n delivered. Enjoy your meal!'
    }
   ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _upates.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 12.0
      ),
      itemBuilder: (BuildContext context, int index) { 
         final upates = _upates[index];
        return Card(
           clipBehavior: Clip.antiAlias,
          color: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(18.0),
          ) ,
          child:  InkWell(
            onTap: () {
              
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 23.0,
                    backgroundColor: upates['backgroundColor'],
                    child: Icon(
                      upates['icon'],
                      color: upates['iconcolor'],
                      ),
                  ),
                   SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        upates['title'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(
                          width:40,
                        ),
                        Text(
                          upates['time'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0
                          ),
                          )
                    ],
                  ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      upates['subtitle'],
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade600
                      ),
              
                    )
                ],
              ),
                ],
              ),
            ),
          ),
        );

        },
       );
  }
}