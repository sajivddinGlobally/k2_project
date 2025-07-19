import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/CartPage.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
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
              child: GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 10.w, // Spacing between columns
                mainAxisSpacing: 10.h, // Spacing between rows
                padding: EdgeInsets.all(10.sp), // Padding around the grid
                childAspectRatio:
                    0.55, // Adjust to make room for image and text
                children: List.generate(
                  9, // Number of items
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
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
                                fit:
                                    BoxFit.cover, // Ensure image fills the tile
                                width:
                                    double.infinity, // Full width of the tile
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
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => CartPage(),
                                  ),
                                );
                              },
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
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14.0,
                            );
                          }),
                        ),
                      ),
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
                      Container(
                        margin: EdgeInsets.only(left: 10.w, right: 10.w),
                        child: Text(
                          '9 left', // Placeholder product count
                          style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4A3DFE),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
