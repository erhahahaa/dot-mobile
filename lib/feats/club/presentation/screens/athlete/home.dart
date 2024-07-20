import 'package:dot_coaching/core/resources/dimens.dart';
import 'package:dot_coaching/core/resources/palette.dart';
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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5868F1), Color(0xFF333C8B)],
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/images/bg/home-athlete.svg",
            width: 344.w,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 344.w,
              height: 581.h,
              decoration: BoxDecoration(
                color: Palette.backgroundLight,
              ),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 18.w,
            child: Container(
              width: 308.w,
              height: 72.h,
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            fontSize: Dimens.titleSmall,
                            fontWeight: FontWeight.w500,
                            color: Palette.textLight),
                      ),
                      Text(
                        "Folks!",
                        style: TextStyle(
                          fontSize: Dimens.titleMedium,
                          fontWeight: FontWeight.w600,
                          color: Palette.textLight,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sport :",
                        style: TextStyle(
                          fontSize: Dimens.titleSmall,
                          fontWeight: FontWeight.w600,
                          color: Palette.textLight,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 2, 16, 2),
                        decoration: BoxDecoration(
                          color: Color(0xFF763AD8),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sports_volleyball,
                              color: Colors.white,
                              size: Dimens.iconSmall,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              "Volleyball",
                              style: TextStyle(
                                color: Palette.textDark,
                                fontSize: Dimens.titleSmall,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 180.h,
            left: 22.w,
            right: 22.w,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "My Club Training",
                          style: TextStyle(
                            fontSize: Dimens.titleMedium,
                            fontWeight: FontWeight.w600,
                            color: Palette.textLight,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120.w,
                          height: 32.h,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF868FE3),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: Colors.white,
                                size: Dimens.iconSmall,
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                "Search ...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Dimens.bodySmall,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: 303.w,
                  height: 280.h,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFE6E8F9),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 271.w,
                        height: 56.h,
                        margin: EdgeInsets.only(bottom: 8.h),
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF763AD8),
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Icon(
                                Icons.sports_volleyball,
                                color: Colors.white,
                                size: 18.sp,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Novo Club",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Volleyball",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "See details",
                                    style: TextStyle(
                                      color: Color(0xFF575FFF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Color(0xFF575FFF),
                                    size: 16.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
