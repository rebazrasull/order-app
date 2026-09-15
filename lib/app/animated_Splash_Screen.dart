import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app_name/features/Sing%20in/pages/sing_in.dart'; // Fixed: Import Lottie package


class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({super.key});

  @override
  State<AnimatedSplashScreen> createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen> {
  @override
  void initState() {
    super.initState();
    _removeNativeSplash();
  }

  void _removeNativeSplash() async {
    // Wait a tiny bit to ensure the UI is ready
    await Future.delayed(const Duration(milliseconds: 500));
    // Remove the static native splash to reveal this Lottie screen
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Match your app theme
      body: Center(
        child: Lottie.network(
          'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json',
          repeat: false, // Set to true if you want it to loop
          onLoaded: (composition) {
            // Optional: Navigate to WelcomeScreen exactly when animation finishes
            Future.delayed(composition.duration, () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SingIn(),
                ),
              );
            });
          },
        
        ),
      ),
    );
  }
}
