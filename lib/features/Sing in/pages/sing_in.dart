import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app_name/shared/wighet/bottomnv/navigationb.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  bool _isLineThrough = false;
  bool _isLineeThrough = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 42.0
              ),
              child: CircleAvatar(
                 radius: 100,
                 backgroundColor: Colors.white,
                child: Image.network(
                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWMw0iTImiyPWZVkqhLPNxAgI0MlMMNdvNRDPN6fJzg&s=10',
                 fit: BoxFit.cover,
                 loadingBuilder: (context, child, loadingProgress) {
                   if(loadingProgress == null) return child;
                   return Center(
                     child: CircularProgressIndicator(
                       value: loadingProgress.expectedTotalBytes != null
                       ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                       :null
                       ,
                     ),
                   );
                 },
                 errorBuilder: (context, error, stackTrace) {
                   return Container(
                     color: Colors.grey[200],
                     child: Icon(
                       Icons.broken_image,
                       color: Colors.grey,
                       size: 40,
                       ),
                   );
                 },
                 
                 ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Create an account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Enter your email to sign up for this app',
                  style: TextStyle(color: Colors.black, fontSize: 14.0),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'email@domain.com',
                      labelText: 'email@domain.com',
                      suffixIcon: Icon(
                        Icons.edit_outlined,
                        ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: Icon(
                        Icons.password_outlined,
                        ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
            
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.0),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8.0),
                        side: BorderSide(color: Colors.white, width: 1.5),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Navigationb(),
                        ),
                      );
                    },
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'continue',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(color: Colors.grey, thickness: 1, indent: 12),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('or'),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 12,
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8.0),
                        side: BorderSide(color: Colors.white, width: 1.5),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          size: 28.0,
                          color: Colors.red,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          'Coutinue With Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45.0),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(8.0),
                        side: BorderSide(color: Colors.white, width: 1.5),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.apple,
                          size: 28.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          'Coutinue With Apple',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  child: Row(
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        'By clicking continue, you agree to our ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isLineThrough = !_isLineThrough;
                          });
                        },
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          'Terms of Service',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: _isLineThrough
                                ? TextDecoration.underline
                                : TextDecoration.none,
                            decorationThickness: 2.0,
                            decorationColor: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'and ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isLineeThrough = !_isLineeThrough;
                        });
                      },
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: _isLineeThrough
                              ? TextDecoration.underline
                              : TextDecoration.none,
                          decorationColor: Colors.blue,
                          decorationThickness: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
