import 'package:flutter/material.dart';

class StatiTem extends StatefulWidget {
  const StatiTem({super.key});

  @override
  State<StatiTem> createState() => _StatiTemState();
}

class _StatiTemState extends State<StatiTem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '24',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
              ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Order',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12.0
              ),
              ),     
          ],
        ),
        SizedBox(
          width: 42.0,
        ),
         Container(
          height: 30,
          width: 1,
          color: Colors.grey[300]
         ),
            SizedBox(
          width: 42.0,
        ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '\$45.50',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
              ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Wallet',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12.0
              ),
              ),     
          ],
        ),
          SizedBox(
          width: 42.0,
        ),
         Container(
          height: 30,
          width: 1,
          color: Colors.grey[300]
         ),
              SizedBox(
          width: 42.0,
        ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '1,250',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
              ),
              ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Points',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12.0
              ),
              ),     
          ],
        ),
       

      ],
    );
  }
}