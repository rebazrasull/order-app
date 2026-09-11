import 'package:flutter/material.dart';
 class ProfileMenuItem {
  final IconData icon;
  final String title;
  final String subtitle;

   const ProfileMenuItem({
    
    required this.icon,
    required this.title,
     required this.subtitle
     });
 }

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
   final List <ProfileMenuItem> _settings=[
    ProfileMenuItem(
      icon: Icons.notifications_none,
       title:'Notifications',
        subtitle:'Order, status, promotions, and alerts'
        ),
         ProfileMenuItem(
      icon: Icons.local_offer_outlined,
       title:'Vouchers & Coupons',
        subtitle:'Manage your active discounts'
        ),
         ProfileMenuItem(
      icon: Icons.help_outline,
       title:'Help & Support',
        subtitle:'FAQs, Live Chat, and Contact'
        ),
   
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _settings.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final item = _settings [index];
        return InkWell(
          onTap: () {
            
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                ),
                child: Icon(
                  item.icon,
                  color: Colors.orangeAccent,
                  size: 26.0,
                  ),
              ),
             
               SizedBox(
                width: 12.0
                ),
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
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                     Text(
                      item.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade600
                      ),
                      ),
                       SizedBox(
                height: 12.0,
              ),
              Divider(
                color: Colors.grey[600],
                      height: 12,
              ),
               SizedBox(
                height: 12.0,
              ),
                   
                  ],
                ),
              ),
               
              Icon(
                Icons.chevron_right,
                size: 24.0,
                color: Colors.grey,
              ),
            ],
          ),
        );
      },
    );
  }
}