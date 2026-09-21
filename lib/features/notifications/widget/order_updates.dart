import 'package:flutter/material.dart';

class OrderUpdates extends StatefulWidget {
  const OrderUpdates({super.key});

  @override
  State<OrderUpdates> createState() => _OrderUpdatesState();
}

class _OrderUpdatesState extends State<OrderUpdates> {
  final List<Map<String, dynamic>> _updates = [
    {
      'backgroundColor': Colors.deepOrangeAccent.withValues(alpha: 0.1),
      'title': 'Order on the way! 🛵',
      'icon': Icons.two_wheeler_rounded,
      'iconcolor': Colors.orange,
      'time': '5m ago',
      'subtitle': 'Your order from Burger Express is\nwith the courier and will arrive in 15 mins.',
    },
    {
      'backgroundColor': Colors.green.withValues(alpha: 0.2),
      'title': 'Order Delivered 🎉',
      'icon': Icons.check_circle_rounded,
      'iconcolor': Colors.green,
      'time': '5m ago',
      'subtitle': 'Your order from Pizza Palace has been\ndelivered. Enjoy your meal!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _updates.length,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 12.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final update = _updates[index];
        return GestureDetector(
          onTap: () {
            // Handle tap action here
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 23.0,
                  backgroundColor: update['backgroundColor'],
                  child: Icon(
                    update['icon'],
                    color: update['iconcolor'],
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              update['title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            update['time'],
                            style: const TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        update['subtitle'],
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}