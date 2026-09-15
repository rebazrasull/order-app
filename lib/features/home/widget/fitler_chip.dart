import 'package:flutter/material.dart';

class Fitlerchip extends StatefulWidget {
  const Fitlerchip({super.key});

  @override
  State<Fitlerchip> createState() => _FitlerchipState();
}

class _FitlerchipState extends State<Fitlerchip> {

   List<Map<String, dynamic>> items =[
    {
      'icon':Icons.favorite_border,
      'name':'Favorites',
      'color':Colors.amber.shade100
      },
    {
      'icon':Icons.history,
      'name':'History',
      'color':Colors.blue.shade100
      },
    {
      'icon':Icons.person_add_alt,
      'name':'Following',
       'color':Colors.red.shade100
    },
      {
      'icon':Icons.receipt_long,
      'name':'Orders',
      'color':Colors.cyan.shade100
    },
   ];
   int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];
        final bool isSelected = selectedIndex == index;
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 7.0
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = isSelected ? null : index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(
                milliseconds: 200,   
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color:isSelected ? item['color'] : Colors.grey[200]
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Icon(
                      item['icon']
                      ),
                     SizedBox
                     (width: 6
                     ),
                    Text(
                      item['name']
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}