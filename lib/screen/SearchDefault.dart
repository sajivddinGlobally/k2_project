import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/SearchResult.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Section
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.sp),
                  bottomLeft: Radius.circular(16.sp),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    // Back button row
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios, size: 25.sp),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Back",
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ), // Space between back row and textfield
                    // TextField inside the card
                    TextField(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SearchResultPage(),
                          ),
                        );
                      },
                      cursorColor: Colors.black,
                      style: GoogleFonts.inter(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 14.h,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Search any item...",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(6.sp),
                      height: 220.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff4A3DFE),
                        borderRadius: BorderRadius.circular(16.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10.w, top: 10.h),
                            child: Text(
                              "Your History",
                              style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: -1,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "Samsung Galaxy Buds",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "Levi's Denim Jacket",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "West Elm Throw Pillows",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "Adidas Sweatpants",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "Sony WH-1000XM4 Headphones",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    "Ikea Coffee Table",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.sp),
                      padding: EdgeInsets.all(12.sp),
                      height: 200
                          .h, // Increased height to accommodate both color and size
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Search By category",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff262833),
                              letterSpacing: -1,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Fashion",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Technology",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Health",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Food",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Technology",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                    vertical: 12.h,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.sp),
                                    color: Color.fromRGBO(237, 239, 250, 1),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/shirt.png"),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "Fashion",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.sp),
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        bottom: 20.h,
                        top: 20.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.sp),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Popular Search",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff262833),
                              letterSpacing: -1,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  bottom: 13.h,
                                  top: 13.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(
                                    color: Color.fromRGBO(218, 218, 218, 1),
                                  ),
                                  // color: Color.fromRGBO(237, 239, 250, 1),
                                ),
                                child: Text(
                                  "Dell XPS 13",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  bottom: 13.h,
                                  top: 13.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(
                                    color: Color.fromRGBO(218, 218, 218, 1),
                                  ),
                                  // color: Color.fromRGBO(237, 239, 250, 1),
                                ),
                                child: Text(
                                  "Puma RS-X",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  bottom: 13.h,
                                  top: 13.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(
                                    color: Color.fromRGBO(218, 218, 218, 1),
                                  ),
                                  // color: Color.fromRGBO(237, 239, 250, 1),
                                ),
                                child: Text(
                                  "Google Pixel 7",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  bottom: 13.h,
                                  top: 13.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(
                                    color: Color.fromRGBO(218, 218, 218, 1),
                                  ),
                                  // color: Color.fromRGBO(237, 239, 250, 1),
                                ),
                                child: Text(
                                  "Adidas Ultraboost",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  bottom: 13.h,
                                  top: 13.h,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  border: Border.all(
                                    color: Color.fromRGBO(218, 218, 218, 1),
                                  ),
                                  // color: Color.fromRGBO(237, 239, 250, 1),
                                ),
                                child: Text(
                                  "Apple iPhone 14",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
