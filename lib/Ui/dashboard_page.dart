import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nft_marketplace_ui_in_flutter/String%20File/image_string.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../String File/text_string.dart';
import 'make_bid_page.dart';

class DashboardScreen extends StatefulWidget {
  final String? contents;
  final String title;
  const DashboardScreen({Key? key, this.contents, required this.title})
      : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhloxAnimations(
                  duration: Duration(seconds: 1),
                  fromDegrees: -20,
                  fromX: -100,
                  child: Container(
                    height: 300.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.r),
                            bottomRight: Radius.circular(50.r)),
                        image: DecorationImage(
                            image: AssetImage(widget.contents!),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 45),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 45.h,
                            width: 45.h,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(50.r)),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 25.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                ///_________ middal part code __________________
                PhloxAnimations(
                  duration: Duration(seconds: 1),
                  fromY: -40,
                  fromOpacity: 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          height: 110.h,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              // color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(25.r)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(profile_1),
                                    radius: 20,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    Sukama_Anota,
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                        color:
                                            Colors.deepPurple.withOpacity(0.2)),
                                    child: Center(
                                      child: Text("20:18:19",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              SizedBox(
                                width: 350,
                                child: Text(Sukama_Anota_sub,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15.sp,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 28.h),

                        ///______________________ container button ________________
                        Container(
                          height: 70.h,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Colors.black12.withOpacity(0.1)),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  height: 45.h,
                                  width: 45.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: Colors.white54,
                                      borderRadius:
                                          BorderRadius.circular(50.r)),
                                  child: Icon(
                                    Icons.explore_outlined,
                                    color: Colors.black,
                                    size: 25.sp,
                                  ),
                                ),
                                SizedBox(width: 30.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(ETH1_20,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5.h),
                                    Text(doller,
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                SizedBox(width: 20.w),
                                const VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                  // indent: 40,
                                  endIndent: 0,
                                  width: 20,
                                ),
                                SizedBox(width: 20.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(High_Bid_point,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 5.h),
                                    Text(High_Bid,
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///____________________ Swipe button ___________________
          PhloxAnimations(
            duration: Duration(seconds: 1),
            fromY: 80,
            fromOpacity: 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(50.r)),
                  child: SwipeableButtonView(
                      buttontextstyle:
                          TextStyle(fontSize: 20.sp, color: Colors.white),
                      buttonText: "Make a Bid       > > >",
                      buttonWidget: Text(
                        Bid,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      activeColor: Colors.pinkAccent,
                      isFinished: isFinished,
                      onWaitingProcess: () {
                        Future.delayed(Duration(seconds: 0), () {
                          setState(() {
                            isFinished = true;
                          });
                        });
                      },
                      onFinish: () async {
                        await Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: MakeBidPage(
                                  contents: widget.contents,
                                )));

                        setState(() {
                          isFinished = false;
                        });
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
