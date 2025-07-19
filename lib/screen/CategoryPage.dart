import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/ProductList.dart';
import 'package:k2_app/screen/home.page.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of PNG image paths
    final List<String> imagePaths = [
      'assets/c1.png',
      'assets/c2.png',
      'assets/c3.png',
      'assets/c4.png',
      'assets/c5.png',
      'assets/c6.png',
    ];

    // List of category names
    final List<String> categoryNames = [
      'Electronics',
      'Sports',
      'Grocery',
      'Health Supplement',
      'Shoes',
      'Kids Fashion',
    ];

    return Scaffold(
    /*  appBar: AppBar(
        leading: SizedBox(  width: 0,),
    //     leading:
    //     InkWell(onTap: (){
    //   Navigator.pop(context);
    //
    // },child:
    //     Icon(Icons.arrow_back_ios, size: 20.sp),),
        title: Text(
          'Categories',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff262833),
            letterSpacing: -1,
          ),
        ),
        actions: [
          SizedBox(width: 10.w),
          Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              color: const Color(0x1A010311),
              borderRadius: BorderRadius.circular(40.sp),
            ),
            child: Icon(Icons.search, size: 15.sp),

            // SvgPicture.asset(
            //   'assets/svg/search.svg',
            //   fit: BoxFit.contain,
            // ),
          ),
          SizedBox(width: 10.w),
        ],
      ),*/
      appBar: AppBar( 
        automaticallyImplyLeading: false,
        // leading: SizedBox.shrink(), // Completely removes leading space
        centerTitle: false, // Aligns title to the left
        title: Padding(
          padding: EdgeInsets.only(left: 16.0), // Optional: Adds left padding to title
          child: Text(
            'Categories',
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff262833),
              letterSpacing: -1,
            ),
          ),
        ),
        actions: [
          SizedBox(width: 10.w),
          Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              color: const Color(0x1A010311),
              borderRadius: BorderRadius.circular(40.sp),
            ),
            child: Icon(Icons.search, size: 15.sp),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: Column(
        children: [
          // Expanded(child:
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 10.w, // Spacing between columns
            mainAxisSpacing: 10.h, // Spacing between rows
            padding: EdgeInsets.all(10.sp), // Padding around the grid
            childAspectRatio: 0.65, // Adjust to make room for image and text
            children: List.generate(
              6, // Number of items
              (index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => ProductListPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10.w, right: 10.w),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blueAccent, width: 2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ), // 10px border radius
                        child: Image.asset(
                          imagePaths[index %
                              imagePaths.length], // Cycle through images
                          fit: BoxFit.cover, // Ensure image fills the tile
                          width: double.infinity, // Full width of the tile
                          height: 150.h, // Fixed height for consistency
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Text(
                                'Error loading\nItem $index',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16.sp,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  // Spacing between image and text
                  Container(
                    margin: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Text(
                      categoryNames[index %
                          categoryNames.length], // Cycle through categories
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff262833),
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  SizedBox(
                    height: 4.h,
                  ), // Spacing between category and product count
                  Container(
                    margin: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Text(
                      '256 Products', // Placeholder product count
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.h, right: 10.h),
            child: Divider(),
          ),
          Row(
            children: [
              SizedBox(width: 20.w),
              Text(
                "Features  Products",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff010311),
                  letterSpacing: -1,
                ),
              ),
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
        ],
      ),
    );
  }
}
