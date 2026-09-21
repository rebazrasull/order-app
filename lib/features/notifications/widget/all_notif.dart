import 'package:flutter/material.dart';

class AllItemModel {
  final Color backgroundColor;
  final String title;
  final IconData icon;
  final Color iconColor;
  final String time;
  final String subtitle;

  const AllItemModel({
    required this.backgroundColor,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.time,
    required this.subtitle,
  });
}

class AllNotif extends StatefulWidget {
  const AllNotif({super.key});

  @override
  State<AllNotif> createState() => _AllNotifState();
}

class _AllNotifState extends State<AllNotif> {
  final List<AllItemModel> allItem = [
    AllItemModel(
      backgroundColor: Colors.deepOrangeAccent.withValues(alpha: 0.1),
      title: 'Order on the way! 🛵',
      icon: Icons.two_wheeler_rounded,
      iconColor: Colors.orange,
      time: '5m ago',
      subtitle: 'Your order from Burger Express is\nwith the courier and will arrive in 15 mins.',
    ),
    AllItemModel(
      backgroundColor: Colors.pinkAccent.withValues(alpha: 0.2),
      title: '50% OFF your next order! 🍕',
      icon: Icons.local_offer_rounded,
      iconColor: Colors.pink,
      time: '5m ago',
      subtitle: 'Use code HALFPRICE at checkout to\nget 50% discount up to \$10. Valid today only!',
    ),
    AllItemModel(
      backgroundColor: Colors.green.withValues(alpha: 0.2),
      title: 'Order Delivered 🎉',
      icon: Icons.check_circle_rounded,
      iconColor: Colors.green,
      time: '5m ago',
      subtitle: 'Your order from Pizza Palace has been\ndelivered. Enjoy your meal!',
    ),
    AllItemModel(
      backgroundColor: Colors.amber.withValues(alpha: 0.2),
      title: 'Rate your last meal ⭐',
      icon: Icons.star_rounded,
      iconColor: Colors.amber,
      time: '5m ago',
      subtitle: 'How was your experience with\nSushi Master? Tap to leave a quick review.',
    ),
    AllItemModel(
      backgroundColor: Colors.red.withValues(alpha: 0.2),
      title: 'Free Delivery Weekend! 🚚',
      icon: Icons.card_giftcard_outlined,
      iconColor: Colors.red,
      time: '5m ago',
      subtitle: 'Enjoy zero delivery fees on all orders above\n\$15 throughout this weekend.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allItem.length,
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8.0
      ),
      itemBuilder: (context, index) {
        final item = allItem[index];
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 23.0,
                backgroundColor: item.backgroundColor,
                child: Icon(
                  item.icon,
                  color: item.iconColor,
                ),
              ),
               SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:  TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                         SizedBox(width: 8.0),
                        Text(
                          item.time,
                          style:  TextStyle(fontSize: 10.0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      item.subtitle,
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
        );
      },
    );
  }
}