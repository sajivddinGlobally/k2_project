import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/chating.page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int filterTab = 0;
  List<Map<String, dynamic>> messageList = [
    {
      "image": "assets/m1.png",
      "name": "Adem Electronics",
      "time": "45 min ago",
      "message": "Your Product will arrive soon",
    },
    {
      "image": "assets/m2.png",
      "name": "Bella Fashion ",
      "time": "30 min ago",
      "message": "New collection launch",
    },
    {
      "image": "assets/m3.png",
      "name": "Café Delight ",
      "time": "15 min ago",
      "message": "Your order is ready for pickup",
    },
    {
      "image": "assets/m4.png",
      "name": "DigiWorld Tech ",
      "time": "1 hour ago",
      "message": "Software update available",
    },
    {
      "image": "assets/m6.png",
      "name": "Epic Reads ",
      "time": "2 hours ago",
      "message": "New book recommendations",
    },
    {
      "image": "assets/m6.png",
      "name": "Fresh Grocer ",
      "time": "3 hours ago",
      "message": "Delivery scheduled for tomorrow",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: SizedBox(
              // width: 424.w,
              // height: 97.h,
              child: Card(
                color: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 12.w,
                    bottom: 12.h,
                    top: 26.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // IconButton(
                          //   onPressed: () {
                          //     Navigator.pop(context);
                          //   },
                          //   icon: Icon(
                          //     Icons.arrow_back_ios,
                          //     size: 20.sp,
                          //     color: Color(0xff010311),
                          //   ),
                          // ),
                          //SizedBox(width: 20.w),
                          Text(
                            "Your Messages",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff010311),
                              letterSpacing: -0.3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            right: 16.w,
                            bottom: 15.h,
                            top: 15.h,
                          ),
                          filled: true,
                          fillColor: Color(0xffE6E8F2),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.search, size: 18.sp),
                          hintText: "Search any Messages...",
                          hintStyle: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            // color: Color(0xff010311),
                            color: Color.fromARGB(76, 96, 100, 128),
                            letterSpacing: -1,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                filterTab = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 13.w,
                                right: 13.w,
                                bottom: 10.h,
                                top: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: filterTab == 0
                                    ? Color(0xff4A3DFE)
                                    : Color.fromARGB(76, 96, 100, 128),
                              ),
                              child: Text(
                                "All",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: filterTab == 0
                                      ? Colors.white
                                      : Color(0xff211D38),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {
                              setState(() {
                                filterTab = 1;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 13.w,
                                right: 13.w,
                                bottom: 10.h,
                                top: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: filterTab == 1
                                    ? Color(0xff4A3DFE)
                                    : Color.fromARGB(76, 96, 100, 128),
                              ),
                              child: Text(
                                "Vendors",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: filterTab == 1
                                      ? Colors.white
                                      : Color(0xff211D38),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {
                              setState(() {
                                filterTab = 2;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 13.w,
                                right: 13.w,
                                bottom: 10.h,
                                top: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: filterTab == 2
                                    ? Color(0xff4A3DFE)
                                    : Color.fromARGB(76, 96, 100, 128),
                              ),
                              child: Text(
                                "Friends ",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: filterTab == 2
                                      ? Colors.white
                                      : Color(0xff211D38),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {
                              setState(() {
                                filterTab = 3;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 13.w,
                                right: 13.w,
                                bottom: 10.h,
                                top: 10.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.r),
                                color: filterTab == 3
                                    ? Color(0xff4A3DFE)
                                    : Color.fromARGB(76, 96, 100, 128),
                              ),
                              child: Text(
                                "Support ",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: filterTab == 3
                                      ? Colors.white
                                      : Color(0xff211D38),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(left: 15.w, right: 15.w),
            width: 424.w,
            height: 72.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Color(0xff4A3DFE),
            ),
            child: Row(
              children: [
                SizedBox(width: 15.w),
                Image.asset("assets/k2.png"),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "K2 Assistant ",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: -1,
                      ),
                    ),
                    Text(
                      "Ask me about payment, orders and products",
                      style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 201, 197, 255),
                        letterSpacing: -0.6,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  width: 42.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff00D0B8),
                  ),
                  child: Center(
                    child: Icon(Icons.chat, color: Colors.white, size: 16.sp),
                  ),
                ),
                SizedBox(width: 12.w),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Text(
              "Messages",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff010311),
                letterSpacing: -0.5,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w),
              child: ListView.builder(
                itemCount: messageList.length,
                // shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => ChatingPage(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 12.h),
                          // width: 424.w,
                          // height: 70.h,
                          padding: EdgeInsets.only(
                            left: 10.w,
                            right: 10.w,
                            top: 10.h,
                            bottom: 10.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                // "assets/m1.png",
                                messageList[index]['image'].toString(),
                                width: 52.w,
                                height: 52.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    //"Adem Electronics",
                                    messageList[index]['name'].toString(),
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff010311),
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                  Text(
                                    //"Your Product will arrive soon",
                                    messageList[index]['message'].toString(),
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff606480),
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                //"45 min ago",
                                messageList[index]['time'].toString(),
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff606480),
                                  letterSpacing: -0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
