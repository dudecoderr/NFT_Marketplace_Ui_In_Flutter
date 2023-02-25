import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phlox_animations/phlox_animations.dart';

import '../String File/text_string.dart';
import 'home_page.dart';

class BidSuccessfulPage extends StatefulWidget {
  final String images;
  const BidSuccessfulPage({Key? key, required this.images}) : super(key: key);

  @override
  State<BidSuccessfulPage> createState() => _BidSuccessfulPageState();
}

class _BidSuccessfulPageState extends State<BidSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: PhloxAnimations(
          duration: Duration(seconds: 1),
          fromY: -40,
          fromOpacity: 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 280.h,
                width: 250.w,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(25.r),
                  image: DecorationImage(
                      image: AssetImage(widget.images), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 40.h),
              Text(Bid_Successful,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 20.h),
              SizedBox(
                width: 300.w,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Your bid for the ',
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Monkey Blup ',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'has been successful. Your winning bid of ',
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                      TextSpan(
                          text: '1.27 ETH',
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '  has been accepted by the seller.',
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                height: 55.h,
                width: 180.w,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(BacktoHome,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500)),
                      Spacer(),
                      Icon(
                        Icons.trending_flat,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
