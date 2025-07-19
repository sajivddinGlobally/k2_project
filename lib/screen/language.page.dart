import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int languageTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
              color: Color(0xffFFFFFF),
            ),
            child: Row(
              children: [
                SizedBox(width: 20.w),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff010311),
                    size: 24.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  "Language",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff010311),
                    letterSpacing: -1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      languageTab = 0;
                    });
                  },
                  child: Container(
                    width: 400.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16.w),
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: languageTab == 0
                                ? Color(0xff4A3DFE)
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 0.90.w,
                              color: languageTab == 0
                                  ? Color(0xff4A3DFE)
                                  : Color(0xff787B93),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "English",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff010311),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    setState(() {
                      languageTab = 1;
                    });
                  },
                  child: Container(
                    width: 400.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16.w),
                          width: 20.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: languageTab == 1
                                ? Color(0xff4A3DFE)
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: languageTab == 1
                                  ? Color(0xff4A3DFE)
                                  : Color(0xff787B93),
                              width: 0.90.w,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Somalian",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff010311),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(400.w, 52.h),
            backgroundColor: Color(0xff4A3DFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Save Update",
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
