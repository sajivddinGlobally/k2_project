import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/OrderConfirmation.dart';


class AddNewAddress extends StatefulWidget {
  const AddNewAddress({super.key});
  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  int _selectedIndex = -1; // -1 means no container is selected
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          "Add New Address",
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
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
            Container(
              margin: EdgeInsets.all(6.sp),
              padding: EdgeInsets.all(12.sp),
              height:
                  340.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                      hintText: "Complete Address",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
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
                      hintText: "Landmark",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
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
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: "City",
                            hintStyle: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: TextField(
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
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: "Pincode",
                            hintStyle: GoogleFonts.inter(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),
                  Text(
                    "Select Address Type",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff606480),
                    ),
                  ),

                  /*  Row(children: [
                      Container(
                        child:
                        Center(child:
                        Text("Home",  style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color:  Colors.white
                        ),),),

                        height: 50.h,
                        width: 70,
                        decoration: BoxDecoration(
                            color:  Color(0xff4A3DFE),
                            borderRadius: BorderRadius.circular(30.sp)),
                      ),
                      SizedBox(width: 10.w,),
                      Container(
                        child:
                        Center(child:
                        Text("Work",  style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color:  Colors.white
                        ),),),

                        height: 50.h,
                        width: 70,
                        decoration: BoxDecoration(
                            color:  Color(0xff4A3DFE),
                            borderRadius: BorderRadius.circular(30.sp)),
                      ),
                      SizedBox(width: 10.w,),
                      Container(
                        child:
                        Center(child:
                        Text("Other",  style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color:  Colors.white
                        ),),),

                        height: 50.h,
                        width: 70,
                        decoration: BoxDecoration(
                            color:  Color(0xff4A3DFE),
                            borderRadius: BorderRadius.circular(30.sp)),
                      )
                    ],)*/
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      _buildContainer("Home", 0),
                      SizedBox(width: 10.w),
                      _buildContainer("Work", 1),
                      SizedBox(width: 10.w),
                      _buildContainer("Other", 2),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),

            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderConfirmationPage(),
                  ),
                  (Route<dynamic> route) =>
                      false, // Removes all previous routes
                );
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4A3DFE),
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Color(0xff4A3DFE)),
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String text, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update selected index
        });
      },
      child: Container(
        height: 50.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff4A3DFE) : Colors.white,
          borderRadius: BorderRadius.circular(30.sp),
          border: Border.all(
            color: isSelected
                ? Color(0xff4A3DFE)
                : Colors.grey, // Optional: border for unselected
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? Colors.white
                  : Colors.black, // Text color changes based on selection
            ),
          ),
        ),
      ),
    );
  }
}
