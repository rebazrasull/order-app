import 'package:flutter/material.dart';
import 'package:my_app_name/features/exploer/widget/browse.dart';
import 'package:my_app_name/features/exploer/widget/categorie.dart';
import 'package:my_app_name/features/exploer/widget/featured.dart';

class Explorescreen extends StatefulWidget {
  const Explorescreen({super.key});

  @override
  State<Explorescreen> createState() => _ExplorescreenState();
}

class _ExplorescreenState extends State<Explorescreen> {
  @override
  Widget build(BuildContext context) {
      final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Explore',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hint: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'San Francisco',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text(
                                  'Sep - 15 . 1 room . 2 guesls',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0
                                  ),
                                  ),      
                            ],
                          ),
                        ),
                         prefixIcon:  Icon(
                        Icons.search,
                         color: Colors.grey
                         ),
                        
                        fillColor:Colors.grey.shade100,
                        filled: true ,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none
                        ),
                        suffixIcon: Icon(
                          Icons.edit_outlined
                          ),
                      ),  
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: deviceHeight*0.04 ,
                  color: Colors.amber,
                  child: Categorie(),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  height: deviceHeight*0.05,
                  color: Colors.blue,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0
                    ),
                    child: Text(
                      'Featured Higihlights',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                         fontSize: 17.0,
                         fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: deviceHeight*0.2,
                  color: Colors.amber,
                  child: Featured(),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Browse Categories',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Spacer(),
                          Text(
                            'see All',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.deepPurpleAccent.shade100,
                              fontSize: 14.0,
                            ),
                            )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:12.0,
                ),
                Browse(),     
              ],
            ),
          )
          ),
      ),
    );
  }
}