import 'package:flutter/material.dart';
import 'package:my_app_name/features/profile/widget/food_settngs.dart';
import 'package:my_app_name/features/profile/widget/general_settings.dart';
import 'package:my_app_name/features/profile/widget/statI_tem.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Profile',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
          actions: [   

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12
              ),
              child: IconButton(
                onPressed: () {
                
              },
               icon: Icon(
                Icons.edit_outlined,
                color: Colors.black,
              
                )
               ),
            )
          ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.only(
            bottom: 24.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange.shade100,
                      radius: 36.0,
                      child: Icon(
                        Icons.person,
                        color: Colors.orangeAccent,
                        size: 40.0,
                        ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Rebaz Rasull Abaas',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'rebzrasull@gmail.com',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                              ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                '+1 234 567 890',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                                ),
                        ],
                      )
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 42.0,
                  vertical: 18.0
                ),
                child: StatiTem(),
              ),
              SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'FOOD SETTNGS',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
              ),
                SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                child: FoodSettngs(),
              ),
                SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'GENERAL SETTINGS',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
              ),
                SizedBox(
                height: 12.0,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0,
                ),
                child: GeneralSettings(),
              ),
              SizedBox(
                height: 12.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        GestureDetector(
                          onTap: () {
                         showDialog(
                            context: context,
                       builder: (BuildContext context) {
                      return AlertDialog(
                    title: Text(
                      'Log out',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    content: Text(
                      'Are you sure you want to log out?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0
                      ),
                      ),
                  actions: [
                     TextButton(
                      onPressed: () {
                    Navigator.of(context).pop(); // Close dialog
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                      ),
                  ),
                              ),
                              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog
                               
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold
                      ),
                  ),
                              ),
                            ],
                          );
                        },
                      );
                          },
                          child: Text(
                            'Log Out',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                            ),
                        )
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Version 1.1.2',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0
                    ),
                    )
                ],
              ),
            
            ],
            
          ),
        ),
      ),
    );
  }
}