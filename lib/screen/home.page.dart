import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/productDetails.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tab = 0;
  int tabBottom = 0;
  List<Map<String, dynamic>> weekendList = [
    {"imageUrl": "assets/w1.png"},
    {"imageUrl": "assets/w2.png"},
    {"imageUrl": "assets/w3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width,
              // height: 252.h,
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 20.h,
                bottom: 20.h,
              ),
              decoration: BoxDecoration(color: Color(0xff4A3DFE)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Row(
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.27.r),
                          color: Color(0xff00D0B8),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deliver at",
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                              letterSpacing: -1,
                            ),
                          ),
                          Text(
                            "Banipark, Jaipur 302033",
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white60,
                              letterSpacing: -1,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(25, 255, 255, 255),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(25, 255, 255, 255),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    cursorColor: Colors.white,
                    style: GoogleFonts.inter(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(25, 255, 255, 255),
                      contentPadding: EdgeInsets.only(
                        left: 10.w,
                        right: 10.w,
                        top: 10.h,
                        bottom: 10.h,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.white38),
                      hintText: "Search any product...",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tab = 0;
                          });
                        },
                        child: categoryBody(
                          "All",
                          "assets/all.png",
                          tab == 0 ? Color(0xff00D0B8) : Colors.transparent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tab = 1;
                          });
                        },
                        child: categoryBody(
                          "Fashion",
                          "assets/fashion.png",
                          tab == 1 ? Color(0xff00D0B8) : Colors.transparent,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            tab = 2;
                          });
                        },
                        child: categoryBody(
                          "Electronic",
                          "assets/electronic.png",
                          tab == 2 ? Color(0xff00D0B8) : Colors.transparent,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            tab = 3;
                          });
                        },
                        child: categoryBody(
                          "Decor",
                          "assets/decor.png",
                          tab == 3 ? Color(0xff00D0B8) : Colors.transparent,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            tab = 4;
                          });
                        },
                        child: categoryBody(
                          "Beauty",
                          "assets/beautiy.png",
                          tab == 4 ? Color(0xff00D0B8) : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset("assets/frame.png"),
                Positioned(
                  bottom: 20.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 82.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Text(
                          "Shop now",
                          style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff0F1235),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                SizedBox(width: 20.w),
                Text(
                  "Top Products",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff010311),
                    letterSpacing: -1,
                  ),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff211D38),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 15.sp),
                SizedBox(width: 20.w),
              ],
            ),
            SizedBox(height: 15.h),
            const ProductBody(),
            Container(
              margin: EdgeInsets.only(top: 30.h),
              //color: Colors.amberAccent,
              height: 180.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: weekendList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            //"assets/w1.png",
                            weekendList[index]["imageUrl"].toString(),
                            width: 298.w,
                            height: 166.h,
                          ),
                        ),
                        Positioned(
                          bottom: 40.h,
                          left: 20,
                          child: Center(
                            child: Container(
                              width: 82.w,
                              height: 28.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Center(
                                child: Text(
                                  "Shop now",
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff0F1235),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.h),
            const ProductBody(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 656.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 159, 255, 244),
                    Color.fromARGB(255, 159, 255, 244),
                    Color.fromARGB(255, 159, 255, 244),
                    Color.fromARGB(0, 159, 255, 244),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50.h),
                      width: 400.w,
                      height: 111.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xff00D0B8),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.w,
                              top: 10.h,
                              bottom: 10.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "20% Off on Summer\nSuper sale",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff010311),
                                    letterSpacing: -1,
                                  ),
                                ),
                                Text(
                                  "Get Huge Discount on Summer\noutfits",
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff010311),
                                    letterSpacing: -1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              "assets/tree.png",
                              height: 111.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Row(
                        children: [
                          clothes("T-Shirt", "assets/c1.png"),
                          SizedBox(width: 15.w),
                          clothes("Shorts", "assets/c2.png"),
                          SizedBox(width: 15.w),
                          clothes("Shirts", "assets/c3.png"),
                          SizedBox(width: 15.w),
                          clothes("Jeans", "assets/c4.png"),
                          SizedBox(width: 15.w),
                          clothes("Cargo", "assets/c5.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 160.h,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 20.w),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 20.w),
                          width: 130.w,
                          height: 160.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          15.r,
                                        ),
                                        child: Image.asset(
                                          "assets/boys.png",
                                          width: 122.w,
                                          height: 114.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Container(
                                      width: 122.w,
                                      height: 114.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          15.r,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(0, 1, 3, 17),
                                            Color.fromARGB(178, 1, 3, 17),
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Min 20% off",
                                            style: GoogleFonts.inter(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "Beach Shirt",
                                            style: GoogleFonts.inter(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/gap.png"),
                                  SizedBox(width: 10.w),
                                  Image.asset("assets/d.png"),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff4A3DFE),
        elevation: 6,
        shape: CircleBorder(
          side: BorderSide(color: Colors.white, width: 0.93.w),
        ),
        onPressed: () {},
        child: Icon(Icons.shopping_bag, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 80.h,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.white,
        elevation: 20,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -6),
                blurRadius: 40,
                spreadRadius: 0,
                color: Color.fromARGB(63, 0, 0, 0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Expanded(
                  child: _buildTab(
                    icon: Icons.home_filled,
                    label: "Home",
                    index: 0,
                  ),
                ),
                Expanded(
                  child: _buildTab(
                    icon: Icons.wallet,
                    label: "Wallet",
                    index: 1,
                  ),
                ),
                SizedBox(width: 24.w),
                Expanded(
                  child: _buildTab(
                    icon: Icons.message,
                    label: "Chat",
                    index: 2,
                  ),
                ),
                Expanded(
                  child: _buildTab(
                    icon: Icons.grid_view_rounded,
                    label: "Category",
                    index: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = tabBottom == index;
    return Container(
      height: 78.h,
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xffF3F3FF)
            : Colors.white, // 👈 Background change
        border: Border(
          top: BorderSide(
            color: isSelected ? Color(0xff4A3DFE) : Colors.transparent,
            width: 4.w,
          ),
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          setState(() {
            tabBottom = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? const Color(0xff4A3DFE)
                  : const Color(0xff606480),
              size: 26.sp,
            ),
            Text(
              label,
              style: GoogleFonts.inter(
                color: isSelected
                    ? const Color(0xff4A3DFE)
                    : const Color(0xff606480),
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryBody(String title, String image, Color color) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h, top: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(height: 5.h),
          Text(
            // "All",
            title,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }

  Widget clothes(String name, String image) {
    return Column(
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Colors.grey,
          ),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        SizedBox(height: 8.h),
        Text(
          // "T-shirts",
          name,
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff010311),
          ),
        ),
      ],
    );
  }
}

class ProductBody extends StatefulWidget {
  const ProductBody({super.key});

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  List<Map<String, dynamic>> productList = [
    {
      "imageUrl": "assets/camera.png",
      "name": "Canon X4562\n50MP Camera...",
      "price": "\$150.00",
    },
    {
      "imageUrl": "assets/shoes1.png",
      "name": "Nike M7 White\nstripe Sneakers",
      "price": "\$150.00",
    },
    {
      "imageUrl": "assets/shoes.png",
      "name": "XYXX 717 Red\nSports Shoes ",
      "price": "\$150.00",
    },
    {
      "imageUrl": "assets/phone.png",
      "name": "iPhone 11 Silver\n16GB/128GB",
      "price": "\$150.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      // color: Colors.amber,
      child: ListView.builder(
        itemCount: productList.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => ProductDetailPage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 110.w,
                        height: 120.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            // "assets/camera.png",
                            productList[index]["imageUrl"].toString(),
                            width: 110.w,
                            height: 120.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
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
                SizedBox(height: 15.h),
                Text(
                  //"Canon X4562\n50MP Camera...",
                  productList[index]["name"].toString(),
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff606480),
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "\$150.00",
                  style: GoogleFonts.inter(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff262833),
                    letterSpacing: -1,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
