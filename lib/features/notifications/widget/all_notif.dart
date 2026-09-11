import 'package:flutter/material.dart';

class AllNotif extends StatefulWidget {
  const AllNotif({super.key});

  @override
  State<AllNotif> createState() => _AllNotifState();
}

class _AllNotifState extends State<AllNotif> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 18.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.deepOrangeAccent.withValues(
                  alpha: 0.1,          
                ),
                child: Icon(
                  Icons.two_wheeler_rounded,
                  color: Colors.orange,
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
                    'Order on the way! 🛵',
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
                      '5m age',
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
                  'Your order from Burger Express is\n with the courier and will arrive in 15 mins.',
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
            SizedBox(
              height: 28.0,
            ),
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.pinkAccent.withValues(
                  alpha: 0.2
                ),
                child: Icon(
                  Icons.local_offer_rounded,
                  color: Colors.pink,
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
                    '50% OFF your next order! 🍕',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      width:10,
                    ),
                    Text(
                      '5m age',
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
                  'Use code HALFPRICE at checkout to\n get 50% discount up to \$10. Valid today only!',
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
             SizedBox(
              height: 28.0,
            ),
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.green.withValues(
                  alpha: 0.2
                ),
                child: Icon(
                  Icons.check_circle_rounded,
                  color: Colors.green,
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
                    'Order Delivered 🎉',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      width:80,
                    ),
                    Text(
                      '5m age',
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
                  'Your order from Pizza Palace has been\n delivered. Enjoy your meal!',
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
           SizedBox(
              height: 28.0,
            ),
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.amber.withValues(
                  alpha: 0.2
                ),
                child: Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
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
                    'Rate your last meat  ⭐',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      width:10,
                    ),
                    Text(
                      '5m age',
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
                  'How was your experience with\n Sushi Master? Tap to leave a quick review.',
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
           SizedBox(
              height: 28.0,
            ),
              Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.red.withValues(
                  alpha: 0.2
                ),
                child: Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.red,
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
                    'Free Delivery Weekend! 🚚',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      width:50,
                    ),
                    Text(
                      '5m age',
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
                 'Enjoy zero delivery fees on all orders above\n \$15 throughout this weekend.',
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
         
        ],
      ),
    );
  }
}