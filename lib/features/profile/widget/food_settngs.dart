

import 'package:my_app_name/features/profile/widget/export.dart';
import 'package:my_app_name/shared/export/export.dart';

class SettingItemModel {
  final IconData icon;
  final String title;
  final String subtitle;
  final String pageName;

  const SettingItemModel({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.pageName,
  });
}

class FoodSettngs extends StatefulWidget {
  const FoodSettngs({super.key});

  @override
  State<FoodSettngs> createState() => _FoodSettngsState();
}

class _FoodSettngsState extends State<FoodSettngs> {
  final List<SettingItemModel> _settings = [
    SettingItemModel(
      icon: Icons.shopping_bag_outlined,
      title: 'My Orders',
      subtitle: 'Active and past order history',
      pageName: RoutPageName.a,
    ),
    SettingItemModel(
      icon: Icons.favorite_border,
      title: 'Favorite Restaurants & Itmes',
      subtitle: 'Your saved meals and spots',
      pageName: '/prfoile',
    ),
    SettingItemModel(
      icon: Icons.location_on_outlined,
      title: 'Delivery Addresses',
      subtitle: 'Home, Work, and other locations',
      pageName: '/prfoile',
    ),
    SettingItemModel(
      icon: Icons.credit_card_outlined,
      title: 'Payment Methods',
      subtitle: 'Cards, Wallet, and Apple Pay',
      pageName: '/prfoile',
    ),

    SettingItemModel(
      icon: Icons.no_food,
      title: 'Food Allergies',
      subtitle: 'Nuts, Dairy, Shellfish',
      pageName: '/prfoile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _settings.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final item = _settings[index];
        return InkWell(
          onTap: () {
            context.push(item.pageName);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Icon(item.icon, color: Colors.orangeAccent, size: 26.0),
              ),

              SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      item.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),

              Icon
              (Icons.chevron_right,
               size: 24.0,
                color: Colors.grey
                ),
            ],
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) =>  Divider(
        color: Colors.grey[600],
         height: 32
         ),
    );
  }
}
