import 'package:dot_coaching/core/widgets/parent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/bg/home-athlete.svg",
              width: 344.w,
            ),
          ],
        ),
      ),
    );
  }
}
