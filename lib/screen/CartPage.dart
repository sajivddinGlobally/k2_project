import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/ApplyCoupon.dart';
import 'package:k2_app/screen/YourAddress.dart';
import 'PaymentPage.dart';
import 'home.page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // List of PNG image paths
  final List<String> imagePaths = [
    'assets/d1.png',
    'assets/d2.png',
    'assets/d3.png',
    'assets/d4.png',
    'assets/d5.png',
    'assets/d6.png',
  ];
  // List of category names
  final List<String> categoryNames = [
    'Canon X4562 50MP Camera...',
    'Canon X4562 50MP Camera...',
    'Canon X4562 50MP Camera...',
    'Canon X4562 50MP Camera...',
    'Canon X4562 50MP Camera...',
    'Canon X4562 50MP Camera...',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:
          // Padding(
          //   padding: EdgeInsets.only(left: 10.w, right: 10.w),
          //   child:
          Column(
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
                            child: Icon(Icons.arrow_back_ios, size: 20.sp),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "Your Cart",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20.h,
                      ), // Space between back row and textfield
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  // controller: _scrollController,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(6.sp),
                        padding: EdgeInsets.all(12.sp),
                        height: 320
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
                              "Popular Search",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff262833),
                                letterSpacing: -1,
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      fit: BoxFit.fill,
                                      height: 50.h,
                                      width: 50.w,
                                      "assets/productImage.png",
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nike M7 White stripe Sneakers",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff262833),
                                            letterSpacing: -1,
                                          ),
                                        ),

                                        Text(
                                          "\$150",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff606480),
                                            letterSpacing: -1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                Container(
                                  padding: EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove, size: 25.sp),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "3",
                                        style: GoogleFonts.inter(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff262833),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Icon(Icons.add, size: 25.sp),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      fit: BoxFit.fill,
                                      height: 50.h,
                                      width: 50.w,
                                      "assets/productImage.png",
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nike M7 White stripe Sneakers",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff262833),
                                            letterSpacing: -1,
                                          ),
                                        ),
                                        Text(
                                          "\$150",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff606480),
                                            letterSpacing: -1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove, size: 25.sp),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "3",
                                        style: GoogleFonts.inter(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff262833),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Icon(Icons.add, size: 25.sp),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      fit: BoxFit.fill,
                                      height: 50.h,
                                      width: 50.w,
                                      "assets/productImage.png",
                                    ),
                                    SizedBox(width: 20.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Nike M7 White stripe Sneakers",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff262833),
                                            letterSpacing: -1,
                                          ),
                                        ),
                                        Text(
                                          "\$150",
                                          style: GoogleFonts.inter(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff606480),
                                            letterSpacing: -1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove, size: 25.sp),
                                      SizedBox(width: 10.w),
                                      Text(
                                        "3",
                                        style: GoogleFonts.inter(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff262833),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Icon(Icons.add, size: 25.sp),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => ApplyCoupon(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(6.sp),
                          padding: EdgeInsets.all(12.sp),
                          height: 70
                              .h, // Increased height to accommodate both color and size
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.sp),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          color: Color(0xff00D0B8),
                                        ),
                                        height: 40.h,
                                        width: 40.w,
                                        child: Image.asset(
                                          "assets/famicons.png",
                                        ),
                                      ),
                                      SizedBox(width: 20.w),
                                      Text(
                                        "Apply Coupon",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff262833),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 20.sp),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.sp),
                        //padding: EdgeInsets.all(12.sp),
                        padding: EdgeInsets.only(
                          left: 20.w,
                          right: 20.w,
                          bottom: 20.h,
                          top: 20.h,
                        ),
                        // height: 280
                        //     .h, // Increased height to accommodate both color and size
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.sp),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bill Details",
                              style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff262833),
                                letterSpacing: -1,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Item Total",
                                  style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff606480),
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  "\$150",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Taxes",
                                  style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff606480),
                                    letterSpacing: -1,
                                  ),
                                ),

                                Text(
                                  "\$150",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            DottedLine(
                              dashLength: 4,
                              dashGapLength: 4,
                              lineThickness: 1,
                              dashColor: Colors.grey,
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Shipping Charges",
                                  style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff606480),
                                    letterSpacing: -1,
                                  ),
                                ),

                                Text(
                                  "\$150",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            DottedLine(
                              dashLength: 4,
                              dashGapLength: 4,
                              lineThickness: 1,
                              dashColor: Colors.grey,
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Your total",
                                  style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  "\$150",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        padding: EdgeInsets.all(12.sp),
                        height: 290
                            .h, // Increased height to accommodate both color and size
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.sp),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10.w),
                                Text(
                                  "You may also like",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff010311),
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            ProductBody(
                              productList: [
                                {
                                  "imageUrl": "assets/s1.png",
                                  "name": "Canon X4562\n50MP Camera...",
                                  "price": "\$150.00",
                                },
                                {
                                  "imageUrl": "assets/s2.png",
                                  "name": "Nike M7 White\nstripe Sneakers",
                                  "price": "\$150.00",
                                },
                                {
                                  "imageUrl": "assets/s3.png",
                                  "name": "XYXX 717 Red\nSports Shoes ",
                                  "price": "\$150.00",
                                },
                                {
                                  "imageUrl": "assets/s4.png",
                                  "name": "iPhone 11 Silver\n16GB/128GB",
                                  "price": "\$150.00",
                                },
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.only(
                  //   bottomRight: Radius.circular(16.sp),
                  //   bottomLeft: Radius.circular(16.sp),
                  // ),
                ),
                child: Container(
                  height: 150.h,
                  // padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => YourAddress(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10.w, right: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10.sp,
                                      ),
                                      border: Border.all(
                                        color: Color(0xff4A3DFE),
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Color(0xff4A3DFE),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Deliver at",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      Text(
                                        "121 Building Road, Vaishali Nagar, Jaipur",
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff606480),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Change",
                                    style: GoogleFonts.inter(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, size: 20.sp),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        margin: EdgeInsets.only(left: 10.w, right: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                // SizedBox(width: 20.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your total",
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        letterSpacing: -1,
                                      ),
                                    ),
                                    Text(
                                      "₹950",
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff606480),
                                        letterSpacing: -1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentPage(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: Color(0xff4A3DFE),
                                ),
                                height: 50.h,
                                width: 300.w,
                                child: Center(
                                  child: Text(
                                    "Checkout",
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ),
                              ),
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
      // ),
    );
  }
}
