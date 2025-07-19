import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/CartPage.dart';
import 'package:k2_app/screen/WishList.dart';
import 'package:k2_app/screen/home.page.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String selectedColor = 'White'; // Default selected color
  String selectedSize = 'US 9'; // Default selected size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, size: 20.sp),
        ),
        title: Text(
          'Nike White Sneakers...',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff262833),
            letterSpacing: -1,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: Color(0x1A010311),
              borderRadius: BorderRadius.circular(20.sp),
            ),
            child: SvgPicture.asset(
              'assets/svg/setting.svg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10.w),
          Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              color: Color(0x1A010311),
              borderRadius: BorderRadius.circular(40.sp),
            ),
            child: SvgPicture.asset(
              'assets/svg/share.svg',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12.sp),
              child: Image.asset('assets/productImage.png'),
            ),
            Container(
              margin: EdgeInsets.all(12.sp),
              height: 180.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4A3DFE),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.sp),
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                          ),
                          child: Text(
                            "4 item left",
                            style: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => WishListPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.w,
                              vertical: 12.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: Color.fromRGBO(255, 255, 255, 0.1),
                            ),
                            child: SvgPicture.asset(
                              'assets/svg/heart.svg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12.w),
                    child: Text(
                      "Nike M7 White stripe Sneakers",
                      style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: -1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    margin: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$selectedColor color  |  $selectedSize",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                letterSpacing: -1,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  '\$150.00',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  '\$300.00',
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                    letterSpacing: -1,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(width: 20.h),
                                SvgPicture.asset(
                                  'assets/svg/bonus.svg',
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CartPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 50.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Add To cart",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(74, 61, 254, 1),
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
            Container(
              margin: EdgeInsets.all(12.sp),
              padding: EdgeInsets.all(12.sp),
              height:
                  260.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Color",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff262833),
                      letterSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildColorOption('White'),
                        SizedBox(width: 10.w),
                        _buildColorOption('Black'),
                        SizedBox(width: 10.w),
                        _buildColorOption('Red'),
                        SizedBox(width: 10.w),
                        _buildColorOption('Blue'),
                        SizedBox(width: 10.w),
                        _buildColorOption('Green'),
                        SizedBox(width: 10.w),
                        _buildColorOption('Yellow'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Choose Size",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff262833),
                      letterSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSizeOption('US 6'),
                      SizedBox(width: 10.w),
                      _buildSizeOption('US 7'),
                      SizedBox(width: 10.w),
                      _buildSizeOption('US 8'),
                      SizedBox(width: 10.w),
                      _buildSizeOption('US 9'),
                      SizedBox(width: 10.w),
                      _buildSizeOption('US 10'),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(12.sp),
              padding: EdgeInsets.all(12.sp),
              // height:160.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Description",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff262833),
                      letterSpacing: -1,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.sp),
              padding: EdgeInsets.all(12.sp),
              // height:160.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Key Features",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),

                      Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Sleek Design:",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),

                      Text(
                        "A stylish white base with striking bold stripes.",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 100, 128, 1),
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Versatile Use:",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        "Ideal for casual outings or sporty activities.",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 100, 128, 1),
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Comfortable Fit:",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        "Fit: Designed to provide all-day comfort.",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 100, 128, 1),
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Durable Materials:",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),

                      Text(
                        "Built to withstand wear and tear.",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 100, 128, 1),
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Trendy Look:",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff262833),
                          letterSpacing: -1,
                        ),
                      ),
                      Text(
                        "A fashionable choice to elevate.",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 100, 128, 1),
                          letterSpacing: -1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                SizedBox(width: 20.w),
                Text(
                  "Similar Products",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff010311),
                    letterSpacing: -1,
                  ),
                ),
                /*Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff211D38),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 15.sp),
                SizedBox(width: 20.w),*/
              ],
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: ProductBody(
                productList: [
                  {
                    "imageUrl": "assets/a1.png",
                    "name": "Canon X4562\n50MP Camera...",
                    "price": "\$150.00",
                  },
                  {
                    "imageUrl": "assets/a2.png",
                    "name": "Nike M7 White\nstripe Sneakers",
                    "price": "\$150.00",
                  },
                  {
                    "imageUrl": "assets/a3.png",
                    "name": "XYXX 717 Red\nSports Shoes ",
                    "price": "\$150.00",
                  },
                  {
                    "imageUrl": "assets/a4.png",
                    "name": "iPhone 11 Silver\n16GB/128GB",
                    "price": "\$150.00",
                  },
                ],
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildColorOption(String color) {
    final isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: Container(
        padding: EdgeInsets.all(14.sp),
        decoration: BoxDecoration(
          color: isSelected
              ? Color.fromRGBO(0, 208, 184, 1)
              : Color.fromRGBO(240, 240, 245, 1),
          border: isSelected
              ? Border.all(color: Color.fromRGBO(0, 208, 184, 1), width: 2)
              : null,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Text(
          color,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff262833),
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size) {
    final isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        padding: EdgeInsets.all(14.sp),
        decoration: BoxDecoration(
          color: isSelected
              ? Color.fromRGBO(0, 208, 184, 1)
              : Color.fromRGBO(240, 240, 245, 1),
          border: isSelected
              ? Border.all(color: Color.fromRGBO(0, 208, 184, 1), width: 2)
              : null,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Text(
          size,
          style: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff262833),
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }
}
