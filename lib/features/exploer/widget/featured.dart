import 'package:flutter/material.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
     padding:  EdgeInsets.symmetric(
      horizontal: 16.0,
      ),
      itemBuilder: (BuildContext context, int index) { 
        return Padding(
          padding:EdgeInsets.all(8.0),
          child: Container(
             width:210,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.grey.shade100,
            border: Border.all(
              color: Colors.grey,
              width: 0.1,
            ), 
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfSSy0Rq8K850svP9NMMaHFZNay9YewYL3-CNTsFu3Cw&s=10',
                     )
                    ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.0,
                        vertical: 12.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 7.0,      
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey
                          )
                        ),
                        child: Text(
                          'Featured'
                          ),
                      ),
                    ),
                    Spacer(),
                   Padding(
                     padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0,

                     ),
                     child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                           'Discover Local Events',
                           maxLines: 2,
                           overflow: TextOverflow.ellipsis,
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 15.0,
                             fontWeight: FontWeight.bold
                           ),
                           ),
                      Text(
                        'Explore top activities nearby',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        ),
                      ],
                     ),
                   )
                  ],
                )

              ],
            ),
          ),
        );
       },
      );
  }
}