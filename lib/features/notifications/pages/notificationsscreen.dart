import 'package:flutter/material.dart';
import 'package:my_app_name/features/notifications/widget/all_notif.dart';
import 'package:my_app_name/features/notifications/widget/order_updates.dart';

class Notificationsscreen extends StatefulWidget {
  const Notificationsscreen({super.key});

  @override
  State<Notificationsscreen> createState() => _NotificationsscreenState();
}

class _NotificationsscreenState extends State<Notificationsscreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
         backgroundColor: Colors.white,
           appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              'Notification',
               maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
              ),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[600],
              indicatorColor: Colors.black,         
              indicatorWeight: 3,
             // overlayColor: WidgetStateColor.transparent,
             overlayColor: WidgetStateProperty.all(Colors.transparent),
              labelStyle:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
               ),
              tabs: [
              Tab(
                text: 'All',
                ),
                Tab(
                  text: 'Orders',
                  ),
                  Tab(
                    text: 'Offers',
                    )
            ]),
           ),
        body: TabBarView(
          children: [
            AllNotif(),
            OrderUpdates(),
            Center(child: Text('Special Offers')),
          ]
          )
      ),
    );
  }
}