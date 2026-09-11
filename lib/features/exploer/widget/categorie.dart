import 'package:flutter/material.dart';

class Categorie extends StatefulWidget {
  const Categorie({super.key});

  @override
  State<Categorie> createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  final List<String> _categories = [
    'All',
    'Trending',
    'Popular',
    'Recommended',
    'New Releases',
  ];
  int _selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
     padding:  EdgeInsets.symmetric(
      horizontal: 16.0,
      ),
       itemCount: _categories.length,
       itemBuilder: (BuildContext context, int index) { 
        final isSelected =_selectedCategoryIndex ==index;
        return Padding(
          padding:  EdgeInsets.only(
            right: 8.0
            ),
          child: ChoiceChip(
            label: Text(
              _categories[index]
              ),
             selected: isSelected,
             onSelected: (selected) {
               if (selected) {
                setState(()=> _selectedCategoryIndex=index);
               }
               
             },
             ),
        );
        }
        );
  }
}