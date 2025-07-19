import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/CategoryPage.dart';
import 'package:k2_app/screen/ProductList.dart';
import 'package:k2_app/screen/SearchDefault.dart';
import 'package:k2_app/screen/WishList.dart';
import 'package:k2_app/screen/chat.page.dart';
import 'package:k2_app/screen/productDetails.page.dart';
import 'package:k2_app/screen/profile.page.dart';
import 'package:k2_app/screen/wallet.page.dart';
import 'YourAddress.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GlobalKey> categoryKeys = List.generate(7, (index) => GlobalKey());
  double selectedWidth = 0;
  double selectedOffset = 0;
  void _updateSelectedWidth() {
    final keyContext = categoryKeys[tab].currentContext;
    if (keyContext != null) {
      final box = keyContext.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero);
      setState(() {
        selectedWidth = box.size.width;
        selectedOffset = position.dx;
      });
    }
  }

  int tab = 1;
  int tabes = 0;
  int tabBottom = 0;
  List<Map<String, dynamic>> weekendList = [
    {"imageUrl": "assets/w1.png"},
    {"imageUrl": "assets/w2.png"},
    {"imageUrl": "assets/w3.png"},
  ];
  List<String> images = ["assets/r1.png", "assets/r2.png", "assets/r3.png"];
  List<String> brandlist = [
    "assets/b1.png",
    "assets/b2.png",
    "assets/b3.png",
    "assets/b4.png",
    "assets/b5.png",
  ];
  List<Map<String, dynamic>> productlists = [
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
  ];
  int bottomTab = 0;
  final PageController _pageController = PageController();
  DateTime? lastBackPressTime;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (tabBottom != 0) {
          // First navigate to Home tab
          setState(() {
            tabBottom = 0;
          });
          return false; // Don't exit app
        }
        final now = DateTime.now();
        if (lastBackPressTime == null ||
            now.difference(lastBackPressTime!) > const Duration(seconds: 2)) {
          lastBackPressTime = now;
          Fluttertoast.showToast(
            msg: "Press back again to exit",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black54,
            textColor: Colors.white,
          );
          return false;
        }
        return true; // App exit
      },
      child: Scaffold(
        backgroundColor: Color(0xffF0F0F5),
        body: tabBottom == 0
            ? SafeArea(
                child: SingleChildScrollView(
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

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => YourAddress(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                  ),
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

                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WishListPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 36.w,
                                    height: 36.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(25, 255, 255, 255),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => ProfilePage(),
                                      ),
                                    );
                                  },
                                  child: Container(
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
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                            TextField(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => SearchPage(),
                                  ),
                                );
                              },
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
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white38,
                                ),
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
                                      tabes = 0;
                                    });
                                  },
                                  child: categoryBody(
                                    image: "assets/all.png",
                                    title: "All",
                                    txtColor: tabes == 0
                                        ? Color(0xffFFFFFF)
                                        : Color(0xffD4D5E4),
                                    color: tabes == 0
                                        ? Color(0xff00D0B8)
                                        : Colors.transparent,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tabes = 1;
                                    });
                                  },
                                  child: categoryBody(
                                    title: "Fashion",
                                    txtColor: tabes == 1
                                        ? Color(0xffFFFFFF)
                                        : Color(0xffD4D5E4),
                                    image: "assets/fashion.png",
                                    color: tabes == 1
                                        ? Color(0xff00D0B8)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tabes = 2;
                                    });
                                  },
                                  child: categoryBody(
                                    title: "Electronic",
                                    txtColor: tabes == 2
                                        ? Color(0xffFFFFFF)
                                        : Color(0xffD4D5E4),
                                    image: "assets/electronic.png",
                                    color: tabes == 2
                                        ? Color(0xff00D0B8)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tabes = 3;
                                    });
                                  },
                                  child: categoryBody(
                                    title: "Decor",
                                    txtColor: tabes == 3
                                        ? Color(0xffFFFFFF)
                                        : Color(0xffD4D5E4),
                                    image: "assets/decor.png",
                                    color: tabes == 3
                                        ? Color(0xff00D0B8)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      tabes = 4;
                                    });
                                  },
                                  child: categoryBody(
                                    title: "Beauty",
                                    txtColor: tabes == 4
                                        ? Color(0xffFFFFFF)
                                        : Color(0xffD4D5E4),
                                    image: "assets/beautiy.png",
                                    color: tabes == 4
                                        ? Color(0xff00D0B8)
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
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
                            child: Image.asset("assets/frame.png"),
                          ),
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
                      const ProductBody(
                        productList: [
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
                        ],
                      ),
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
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) =>
                                              ProductListPage(),
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.asset(
                                        //"assets/w1.png",
                                        weekendList[index]["imageUrl"]
                                            .toString(),
                                        width: 298.w,
                                        height: 166.h,
                                        fit: BoxFit.cover,
                                      ),
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
                                          borderRadius: BorderRadius.circular(
                                            7.r,
                                          ),
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500.h,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                padding: const EdgeInsets.all(
                                                  3,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        15.r,
                                                      ),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color.fromARGB(
                                                        0,
                                                        1,
                                                        3,
                                                        17,
                                                      ),
                                                      Color.fromARGB(
                                                        178,
                                                        1,
                                                        3,
                                                        17,
                                                      ),
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Beach Shirt",
                                                      style: GoogleFonts.inter(
                                                        fontSize: 11.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(height: 7.h),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Text(
                            "Flash sale on Home Decor",
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
                      const ProductBody(
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
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/o1.png",
                                  width: 195.w,
                                  height: 130.h,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: 15.w,
                                  top: 15.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20% OFF\nON BEAUTY",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff010311),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      Text(
                                        "Huge Discount on\nBeauty products",
                                        style: GoogleFonts.inter(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff010311),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Stack(
                              children: [
                                Image.asset(
                                  "assets/o.png",
                                  width: 195.w,
                                  height: 130.h,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: 15.w,
                                  top: 20.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20% OFF\nON BEAUTY",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff010311),
                                          letterSpacing: -1,
                                        ),
                                      ),
                                      Text(
                                        "Huge Discount on\nBeauty products",
                                        style: GoogleFonts.inter(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff010311),
                                          letterSpacing: -1,
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffFFB2B2).withOpacity(0),
                              Color(0xffFFB2B2),
                              Color(0xffFFB2B2),
                              Color(0xffFFB2B2).withOpacity(0),
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
                                  color: Color(0xffFF3535),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "20% OFF ON CHRISTMAS\nFESTIVAL SALE",
                                            style: GoogleFonts.inter(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                          Text(
                                            "Get Huge Discount on Christmas\nDecorations and sweets",
                                            style: GoogleFonts.inter(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              letterSpacing: -1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset(
                                        "assets/onion.png",
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
                                    clothes("Lights", "assets/lights.png"),
                                    SizedBox(width: 15.w),
                                    clothes(
                                      "Decoration",
                                      "assets/decorations.png",
                                    ),
                                    SizedBox(width: 15.w),
                                    clothes("Sweets", "assets/sweets.png"),
                                    SizedBox(width: 15.w),
                                    clothes(
                                      "Chocolate",
                                      "assets/chocolate.png",
                                    ),
                                    SizedBox(width: 15.w),
                                    clothes("Music ", "assets/music.png"),
                                    SizedBox(width: 15.w),
                                    clothes(
                                      "kids Clohtes ",
                                      "assets/kidsclothes.png",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                            SizedBox(
                              height: 160.h,
                              child: ListView.builder(
                                itemCount: images.length,
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
                                                padding: const EdgeInsets.all(
                                                  3,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        15.r,
                                                      ),
                                                  child: Image.asset(
                                                    // "assets/r1.png",
                                                    images[index],
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        15.r,
                                                      ),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color.fromARGB(
                                                        0,
                                                        1,
                                                        3,
                                                        17,
                                                      ),
                                                      Color.fromARGB(
                                                        178,
                                                        1,
                                                        3,
                                                        17,
                                                      ),
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Beach Shirt",
                                                      style: GoogleFonts.inter(
                                                        fontSize: 11.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(height: 7.h),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 6.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Text(
                            "Top Brands ",
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
                      SizedBox(
                        height: 75.h,
                        child: ListView.builder(
                          itemCount: brandlist.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 15.w),
                              width: 74.w,
                              height: 74.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Image.asset(
                                //"assets/b1.png",
                                brandlist[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Text(
                            "Best Sellers",
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
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  key: categoryKeys[1], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 1;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "All",
                                    txtColor: tab == 1
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/all.png",
                                    imageColor: tab == 1
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 1
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                                GestureDetector(
                                  key: categoryKeys[2], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 2;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "Fashion",
                                    txtColor: tab == 2
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/fashion.png",
                                    imageColor: tab == 2
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 2
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  key: categoryKeys[3], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 3;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "Electronic",
                                    txtColor: tab == 3
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/electronic.png",
                                    imageColor: tab == 3
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 3
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  key: categoryKeys[4], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 4;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "Decor",
                                    txtColor: tab == 4
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/decor.png",
                                    imageColor: tab == 4
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 4
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  key: categoryKeys[5], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 4;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "Beauty",
                                    txtColor: tab == 5
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/beautiy.png",
                                    imageColor: tab == 5
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 5
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                                InkWell(
                                  key: categoryKeys[6], // 👈 Assign key
                                  onTap: () {
                                    setState(() {
                                      tab = 6;
                                    });
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                          (_) => _updateSelectedWidth(),
                                        );
                                  },
                                  child: categoryBody(
                                    title: "Health",
                                    txtColor: tab == 6
                                        ? Colors.white
                                        : Color(0xff606480),
                                    image: "assets/healthes.png",
                                    imageColor: tab == 6
                                        ? Colors.white
                                        : Color(0xff606480),
                                    color: tab == 6
                                        ? Color(0xff4A3DFE)
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10.h),
                                  width: MediaQuery.of(context).size.width,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF0E9E9),
                                  ),
                                ),
                                AnimatedPositioned(
                                  top: 10.h,
                                  duration: Duration(milliseconds: 250),
                                  curve: Curves.easeInOut,
                                  left:
                                      selectedOffset -
                                      20.w, // Because you have 20.w horizontal padding
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.easeInOut,
                                    height: 5.h,
                                    width: selectedWidth,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4A3DFE),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      ProductBody(
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
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          SizedBox(width: 20.w),
                          Text(
                            "Products on sale",
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
                      SizedBox(height: 20.h),
                      Container(
                        height: 210.h,
                        // color: Colors.amber,
                        child: ListView.builder(
                          itemCount: productlists.length,
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
                                              builder: (context) =>
                                                  ProductDetailPage(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 110.w,
                                          height: 120.h,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              10.r,
                                            ),
                                            child: Image.asset(
                                              // "assets/camera.png",
                                              productlists[index]["imageUrl"]
                                                  .toString(),
                                              width: 110.w,
                                              height: 120.h,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 13.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image.asset("assets/offer.png"),
                                            Text(
                                              "20%\nOFF",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.inter(
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 28.w,
                                          height: 28.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              6.r,
                                            ),
                                            color: Color(0xff4A3DFE),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    //"Canon X4562\n50MP Camera...",
                                    productlists[index]["name"].toString(),
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
                      ),

                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              )
            : tabBottom == 1
            ? WalletPage()
            : tabBottom == 2
            ? ChatPage()
            : CategoryPage(),

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

class ProductBody extends StatelessWidget {
  final List<Map<String, dynamic>> productList;
  const ProductBody({super.key, required this.productList});

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

class categoryBody extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color? imageColor;
  final Color? txtColor;
  const categoryBody({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    this.imageColor,
    this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h, top: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, color: imageColor),
          SizedBox(height: 5.h),
          Text(
            // "All",
            title,
            style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              // color: Color(0xffFFFFFF),
              color: txtColor,
            ),
          ),
        ],
      ),
    );
  }
}
