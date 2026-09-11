import 'package:flutter/material.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  // Populate the grid items with data
  final List<Map<String, dynamic>> _gridItems = const [
    {
      'title': 'Art & Culture',
      'itemCount': '124 items',
      'icon': Icons.palette,
    },
    {
      'title': 'Music & Audio',
      'itemCount': '85 items',
      'icon': Icons.music_note,
    },
    {
      'title': 'Sports & Fitness',
      'itemCount': '42 items',
      'icon': Icons.sports_soccer,
    },
    {
      'title': 'Technology',
      'itemCount': '210 items',
      'icon': Icons.computer,
    },
    {
      'title': 'Food & Drink',
      'itemCount': '95 items',
      'icon': Icons.restaurant,
    },
    {
      'title': 'Travel & Places',
      'itemCount': '63 items',
      'icon': Icons.flight,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _gridItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (BuildContext context, int index) {
        final item = _gridItems[index];

        return Material(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.0),
            onTap: () {
              // Handle item click
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Theme.of(context).primaryColor.withValues(
                        alpha:0.1,
                        ),
                      child: Icon(
                        item['icon'] as IconData,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      item['title'] as String,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      item['itemCount'] as String,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12.0,
                      ),
                    ),
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