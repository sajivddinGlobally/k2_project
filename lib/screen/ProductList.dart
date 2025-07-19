import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:k2_app/screen/SearchDefault.dart';
import 'package:k2_app/screen/productDetails.page.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, size: 20.sp),
        ),
        title: Text(
          'Clothing',
          style: GoogleFonts.inter(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xff262833),
            letterSpacing: -1,
          ),
        ),
        actions: [
          SizedBox(width: 10.w),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => SearchPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(right: 10.w),
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                color: const Color(0x1A010311),
                borderRadius: BorderRadius.circular(40.sp),
              ),
              // child: SvgPicture.asset(
              //   'assets/svg/search.svg',
              //   fit: BoxFit.contain,
              // ),
              child: Icon(Icons.search, size: 15.sp),
            ),
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
              9, // Number of items
              (index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => ProductDetailPage(),
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
                      Positioned(
                        right: 20,
                        bottom: 10,
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: Color(0xff4A3DFE),
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ],
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

                  SizedBox(height: 4.h),
                  // Spacing between category and product count
                  Container(
                    margin: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Text(
                      '\$150.00', // Placeholder product count
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
        ],
      ),
    );
  }
}
