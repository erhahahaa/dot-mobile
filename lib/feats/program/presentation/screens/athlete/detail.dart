import 'package:dot_coaching/core/widgets/parent.dart';
import 'package:dot_coaching/feats/program/data/models/program.dart';
import 'package:dot_coaching/utils/exts/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({super.key, required ProgramModel program});

  @override
  State<ProgramDetailScreen> createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  bool hideListProgramWeek = false,
      hideListProgramDay = false,
      hideListProgramWorkout = false,
      hideListProgramWorkoutDayOff = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5767ED), Color(0xFF32ADBE)],
              ),
            ),
          ),
          Positioned(
            top: 32.h,
            left: 8.w,
            right: 8.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    side: BorderSide(
                      width: 2,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: context.theme.colorScheme.onPrimary,
                        size: 14.sp,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  width: 248.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(64.r),
                  ),
                  child: Text(
                    "Novo Club",
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 344.w,
              height: 665.h,
              decoration: const BoxDecoration(
                color: Color(0xFFF5F6FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120.h,
            left: 22.w,
            right: 22.w,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        spreadRadius: 0,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  width: 400.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 42.h,
                            width: 285.w,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: const Color(0xFF5868F1),
                              ),
                            ),
                            child: Text(
                              "July 2024",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 380.h,
                        width: 400.w,
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                hideListProgramWeek
                                    ? Container()
                                    : Container(
                                        width: 272.w,
                                        margin:
                                            const EdgeInsets.only(bottom: 16),
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          border: Border.all(
                                            color: const Color(0xFFE6EAF1),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () => setState(
                                                    () => hideListProgramWeek =
                                                        !hideListProgramWeek,
                                                  ),
                                                  icon: Icon(
                                                    hideListProgramWeek
                                                        ? Icons
                                                            .keyboard_arrow_right
                                                        : Icons
                                                            .keyboard_arrow_down,
                                                  ),
                                                ),
                                                SizedBox(width: 8.h),
                                                Text(
                                                  "1st Week",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                hideListProgramDay
                                                    ? Container()
                                                    : Container(
                                                        width: 255.w,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF5868F1),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    IconButton(
                                                                      onPressed:
                                                                          () =>
                                                                              setState(
                                                                        () => hideListProgramDay =
                                                                            !hideListProgramDay,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        hideListProgramDay
                                                                            ? Icons.keyboard_arrow_right
                                                                            : Icons.keyboard_arrow_down,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      "Monday",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                SizedBox(
                                                                  width: 8.w,
                                                                ),
                                                                Text(
                                                                  "1 July 2024",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 8.h,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                hideListProgramWorkout
                                                                    ? Container()
                                                                    : Container(
                                                                        width:
                                                                            238.w,
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              const Color(0xffE6E8F9),
                                                                          borderRadius:
                                                                              BorderRadius.circular(16),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    IconButton(
                                                                                      onPressed: () => setState(
                                                                                        () => hideListProgramWorkout = !hideListProgramWorkout,
                                                                                      ),
                                                                                      icon: Icon(
                                                                                        hideListProgramWorkout ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_down,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      "Workout 1",
                                                                                      style: TextStyle(
                                                                                        color: Colors.black,
                                                                                        fontSize: 12.sp,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                FilledButton.icon(
                                                                                  onPressed: () {},
                                                                                  style: ButtonStyle(
                                                                                    backgroundColor: WidgetStateProperty.all(const Color(0xFF5868F1)),
                                                                                    shape: WidgetStateProperty.all(
                                                                                      RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                    ),
                                                                                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0)),
                                                                                    fixedSize: WidgetStateProperty.all(
                                                                                      Size(100.w, 20.w),
                                                                                    ),
                                                                                  ),
                                                                                  icon: const Icon(
                                                                                    Icons.play_arrow,
                                                                                    color: Colors.white,
                                                                                    size: 14,
                                                                                  ),
                                                                                  label: Text(
                                                                                    'Watch Video',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      fontSize: 11.sp,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            SizedBox(height: 8.h),
                                                                            Column(
                                                                              children: [
                                                                                Container(
                                                                                  padding: const EdgeInsets.all(8),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    borderRadius: BorderRadius.circular(16.r),
                                                                                  ),
                                                                                  child: Column(
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Image.asset(
                                                                                            'assets/images/dot_logo.png',
                                                                                            width: 208.w,
                                                                                            height: 80.h,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(
                                                                                        height: 8.h,
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 208.w,
                                                                                            padding: const EdgeInsets.all(8),
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.white,
                                                                                              borderRadius: BorderRadius.circular(16.r),
                                                                                              border: Border.all(
                                                                                                color: const Color(0xFFD2DAE5),
                                                                                              ),
                                                                                            ),
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      width: 89.w,
                                                                                                      height: 20.h,
                                                                                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: const Color(0xFFFFD2D2),
                                                                                                        borderRadius: BorderRadius.circular(8.r),
                                                                                                      ),
                                                                                                      child: Center(
                                                                                                        child: Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: Text(
                                                                                                            "5 min rest",
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 11.sp,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      width: 8.w,
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 89.w,
                                                                                                      height: 20.h,
                                                                                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: const Color(0xFFFFF0BD),
                                                                                                        borderRadius: BorderRadius.circular(8.r),
                                                                                                      ),
                                                                                                      child: Center(
                                                                                                        child: Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: Text(
                                                                                                            "Slow Tempo",
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 11.sp,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                SizedBox(
                                                                                                  height: 8.h,
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      width: 89.w,
                                                                                                      height: 20.h,
                                                                                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: const Color(0xFFACFFCD),
                                                                                                        borderRadius: BorderRadius.circular(8.r),
                                                                                                      ),
                                                                                                      child: Center(
                                                                                                        child: Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: Text(
                                                                                                            "3 Sets",
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 11.sp,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(
                                                                                                      width: 8.w,
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 89.w,
                                                                                                      height: 20.h,
                                                                                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: const Color(0xFF95DFFF),
                                                                                                        borderRadius: BorderRadius.circular(8.r),
                                                                                                      ),
                                                                                                      child: Center(
                                                                                                        child: Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: Text(
                                                                                                            "3 Reps",
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 11.sp,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                SizedBox(
                                                                                                  height: 8.h,
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      width: 191.w,
                                                                                                      height: 20.h,
                                                                                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: const Color(0xFFEBB2FF),
                                                                                                        borderRadius: BorderRadius.circular(8.r),
                                                                                                      ),
                                                                                                      child: Center(
                                                                                                        child: Align(
                                                                                                          alignment: Alignment.center,
                                                                                                          child: Text(
                                                                                                            "RM Intensity 1",
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: TextStyle(
                                                                                                              color: Colors.black,
                                                                                                              fontSize: 11.sp,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      SizedBox(height: 8.h),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 208.w,
                                                                                            padding: const EdgeInsets.all(8),
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.white,
                                                                                              borderRadius: BorderRadius.circular(16.r),
                                                                                              border: Border.all(
                                                                                                color: const Color(0xFFD2DAE5),
                                                                                              ),
                                                                                            ),
                                                                                            child: Text(
                                                                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                                                                              style: TextStyle(
                                                                                                color: Colors.black,
                                                                                                fontSize: 12.sp,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.h,
                                            ),
                                            Row(
                                              children: [
                                                hideListProgramDay
                                                    ? Container()
                                                    : Container(
                                                        width: 255.w,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFF5868F1),
                                                          ),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    IconButton(
                                                                      onPressed:
                                                                          () =>
                                                                              setState(
                                                                        () => hideListProgramDay =
                                                                            !hideListProgramDay,
                                                                      ),
                                                                      icon:
                                                                          Icon(
                                                                        hideListProgramDay
                                                                            ? Icons.keyboard_arrow_right
                                                                            : Icons.keyboard_arrow_down,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      "Tuesday",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                            14.sp,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  "2 July 2024",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                hideListProgramWorkout
                                                                    ? Container()
                                                                    : Container(
                                                                        width:
                                                                            238.w,
                                                                        height:
                                                                            42.h,
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            4),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              const Color(0xFFE40000),
                                                                          borderRadius:
                                                                              BorderRadius.circular(50),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            IconButton(
                                                                              onPressed: () => setState(
                                                                                () => hideListProgramWorkoutDayOff = !hideListProgramWorkoutDayOff,
                                                                              ),
                                                                              icon: Icon(
                                                                                hideListProgramWorkoutDayOff ? Icons.keyboard_arrow_right : Icons.keyboard_arrow_down,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              "Day Off",
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Colors.white,
                                                                                fontSize: 12.sp,
                                                                                fontWeight: FontWeight.w500,
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
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80.h,
            left: 44.w,
            right: 44.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: SizedBox(
                width: 220.w,
                height: 44.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xFF5868F1)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Download as PDF",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
