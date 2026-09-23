import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShoopItemModel {
  final FaIconData icon;
  final String title;
  final String money;

  const ShoopItemModel({
    required this.icon,
    required this.title,
    required this.money,
  });
}

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  final List<int> _counters = List.generate(4, (index) => 0);

  // Populated list with sample data using your model
  final List<ShoopItemModel> _shoopItem = [
    ShoopItemModel(
      icon: FontAwesomeIcons.hamburger,
      title: 'Hamburger',
      money: '5.17\$',
    ),
    ShoopItemModel(
      icon: FontAwesomeIcons.pizzaSlice,
      title: 'Pizza Slice',
      money: '4.50\$',
    ),
    ShoopItemModel(
      icon: FontAwesomeIcons.bottleWater,
      title: 'Water Bottle',
      money: '1.20\$',
    ),
    ShoopItemModel(
      icon: FontAwesomeIcons.appleWhole,
      title: 'Fresh Apple',
      money: '3.00\$',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      itemCount: _shoopItem.length,
      itemBuilder: (BuildContext context, int index) {
        final item = _shoopItem[index];
        
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 12.0,
            ),
            child: Row(
              children: [
                FaIcon(
                  item.icon,
                  size: 28.0,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 18.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF2C2C2C),
                      ),
                    ),
                    const Text(
                      '100% Fresh . 500ml',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      item.money,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'per kg',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_counters[index] > 0) _counters[index]--;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7A9A40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.zero,
                    elevation: 0,
                    minimumSize: const Size(36, 36),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${_counters[index]}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counters[index]++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7A9A40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.zero,
                    elevation: 0,
                    minimumSize: const Size(36, 36),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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