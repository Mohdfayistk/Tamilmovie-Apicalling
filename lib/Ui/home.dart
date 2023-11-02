import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled12/Ui/second.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2B34),
      body: Column(
        children: [
          SizedBox(
            height: 120.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: Container(
              width: 319.w,
              height: 250.h,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              child: Image.asset("assets/1.png"),
            ),
          ),
          SizedBox(height: 85.h,),
      Padding(
        padding:  EdgeInsets.only(left: 30.w),
        child: GestureDetector(onTap:  () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => second()));
        },
          child: Container(
            width: 319.w,
            height: 250.h,
            decoration: ShapeDecoration(
              color: Color(0xFFF3F3F3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            child: Center(
              child: Text(
                'Movies \n List',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.sp,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w800,
                  height: 2.h,
                ),
              ),
            ),
          ),
        ),
      )
        ],
      ),
    );
  }
}
