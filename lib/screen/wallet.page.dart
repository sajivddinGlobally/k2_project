import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/addMoney.page.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final List<Map<String, String>> users = [
    {'name': 'Fathima', 'image': 'assets/fatima.png'},
    {'name': 'Ayaan', 'image': 'assets/ayaan.png'},
    {'name': 'Sameer', 'image': 'assets/samer.png'},
    {'name': 'Aisha', 'image': 'assets/aisha.png'},
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
              width: 424.w,
              height: 97.h,
              child: Card(
                color: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                ),
                child: Row(
                  children: [
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.arrow_back_ios,
                    //     size: 20.sp,
                    //     color: Color(0xff010311),
                    //   ),
                    // ),
                    SizedBox(width: 20.w),
                    Text(
                      "Wallet ",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff010311),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.w),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12.w, right: 12.w),
                    padding: EdgeInsets.only(
                      left: 25.w,
                      right: 25.w,
                      top: 25.h,
                      bottom: 15.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xff4A3DFE),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "Your wallet Balance",
                            style: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(178, 255, 255, 255),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: Text(
                            "\$1500.56",
                            style: GoogleFonts.inter(
                              fontSize: 38.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                              letterSpacing: -1,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 116.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color.fromARGB(25, 255, 255, 255),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.send_outlined,
                                    size: 20.sp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Send Money",
                                    style: GoogleFonts.inter(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 116.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color.fromARGB(25, 255, 255, 255),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.file_download_outlined,
                                    size: 20.sp,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Receive Money",
                                    style: GoogleFonts.inter(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => AddMoneyPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 116.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Color.fromARGB(25, 255, 255, 255),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 20.sp,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Add Money",
                                      style: GoogleFonts.inter(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12.w, right: 12.w, top: 10.h),
                    padding: EdgeInsets.only(
                      left: 20.w,
                      right: 20.w,
                      top: 20.h,
                      bottom: 20.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xff00D0B8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Methods",
                          style: GoogleFonts.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff010311),
                            letterSpacing: -0.5,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 121.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color.fromARGB(51, 255, 255, 255),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    size: 23.sp,
                                    color: Color(0xff010311),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    "EVS Plus",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff010311),
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 121.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color.fromARGB(51, 255, 255, 255),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    size: 23.sp,
                                    color: Color(0xff010311),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    "Sahal",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff010311),
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 121.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color.fromARGB(51, 255, 255, 255),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    size: 23.sp,
                                    color: Color(0xff010311),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    "Amal Pay",
                                    style: GoogleFonts.inter(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff010311),
                                      letterSpacing: -0.5,
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
                  SizedBox(height: 10.h),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    color: Color(0xffFFFFFF),
                    margin: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                            right: 20.w,
                            top: 20.h,
                            //bottom: 20.h,
                          ),
                          child: Text(
                            "Quick Transfer",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff010311),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.h, right: 10.w),
                          height: 120.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: users.length + 1, // users + Add button
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              if (index < users.length) {
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.w),
                                      width: 69.w,
                                      height: 69.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            users[index]['image'].toString(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      users[index]['name'].toString(),
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff1E1E1E),
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                // Add Button at the end
                                return Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.w),
                                      width: 69.w,
                                      height: 69.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff00D0B8),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Add',
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff1E1E1E),
                                      ),
                                    ),
                                  ],
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 12.w, right: 12.w, top: 10.h),
                    color: Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                        top: 20.h,
                        bottom: 20.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recent transactions",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff010311),
                              letterSpacing: -0.5,
                            ),
                          ),
                          SizedBox(height: 15.h),
                          TransactionHistory(
                            image: "assets/shoes.png",
                            name: "Purchase Nike Shoes...",
                            date: "March 2024",
                            amount: "-\$150.00",
                            dedicate: "Cash Deducted",
                          ),
                          SizedBox(height: 10.h),
                          TransactionHistory(
                            image: "assets/wallet.png",
                            name: "Balance Added",
                            date: "April 2024",
                            amount: "+\$150.00",
                            dedicate: "Balance Added",
                          ),
                          SizedBox(height: 10.h),
                          TransactionHistory(
                            image: "assets/shoes.png",
                            name: "Purchase Nike Shoes...",
                            date: "March 2024",
                            amount: "-\$150.00",
                            dedicate: "Cash Deducted",
                          ),
                          SizedBox(height: 10.h),
                          TransactionHistory(
                            image: "assets/wallet.png",
                            name: "Balance Added",
                            date: "April 2024",
                            amount: "+\$150.00",
                            dedicate: "Balance Added",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String amount;
  final String dedicate;

  const TransactionHistory({
    super.key,
    required this.image,
    required this.name,
    required this.date,
    required this.amount,
    required this.dedicate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xffF5F5F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 14.w),
          SizedBox(
            width: 52.w,
            height: 52.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                image,
                width: 52.w,
                height: 52.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff010311),
                  letterSpacing: -0.5,
                ),
              ),
              Text(
                date,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff606480),
                  letterSpacing: -0.3,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                amount,
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: amount.contains("-")
                      ? Color(0xffAF0F0F)
                      : Color(0xff1FD96E),
                  letterSpacing: -0.3,
                ),
              ),
              Text(
                dedicate,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff606480),
                  letterSpacing: -0.3,
                ),
              ),
            ],
          ),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}
