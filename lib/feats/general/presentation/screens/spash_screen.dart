import 'package:dot_coaching/core/core.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
