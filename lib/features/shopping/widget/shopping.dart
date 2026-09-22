import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

    class ShoopItemModel {
   final IconData icon;
    final String title;
    final  String money;

    const ShoopItemModel({
      required this.icon,
       required this.title,
        required this.money
          }
       );
    }
class Shopping extends StatefulWidget {
  const Shopping({super.key});


  @override
  State<Shopping> createState() => _ShoppingState();
}


class _ShoppingState extends State<Shopping> {
  final List<int> _counters = List.generate(4, (index) => 0);
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
       physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
             horizontal: 4.0,
           ),
              itemCount: 4,
           itemBuilder: (BuildContext context, int index) { 
             return  Container(
                margin: EdgeInsets.only(bottom: 10),
               decoration: BoxDecoration(
                  color:Colors.grey.shade200 ,
             borderRadius: BorderRadius.circular(12.0),
               ),
               child: Padding(
                 padding:  EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 12.0,
                 ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisSize: MainAxisSize.min,
                   children: [
                  Row(
                  children: [
                    FaIcon(
                      // ignore: deprecated_member_use
                      FontAwesomeIcons.hamburger,
                          size: 28.0,
                          color: Colors.grey,
                    ),
                    // Icon(
                    //   Icons.fastfood
                    //   ),
                   
                      SizedBox(
                        width: 18.0,
                      ),
                      
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hamberker',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w900,
                         color: Color(0xFF2C2C2C),
                      ),
                      ),
                    Text(
                      '100% Tomato . 500ml',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.0,
                        color:Colors.grey
                      ),
                      ),
                    Text(
                      '5.17\$',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    Text(
                      'per kg',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color:Colors.grey,
                        fontSize: 10.0,
                      ),
                    ), 
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                  setState(() {
                  _counters[index] --;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7A9A40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                  elevation: 0,
                ),
                 child: Text(
                  '-',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                  )
                ),
                SizedBox(
                  width: 8
                  ),
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
             SizedBox(
                  width: 8
                  ),
                   ElevatedButton(
                  onPressed: () {
                  setState(() {
                  _counters[index] ++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7A9A40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                  elevation: 0,
                ),
                 child: Text(
                  '+',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                  )
                ),
              ],
               ),
                ],
                 ),
               ),
         ); 
       },  
      );
  }
}