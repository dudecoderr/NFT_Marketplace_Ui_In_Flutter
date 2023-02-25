import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../String File/text_string.dart';
import 'bid_successful_page.dart';

class MakeBidPage extends StatefulWidget {
  final String? contents;

  const MakeBidPage({Key? key, this.contents}) : super(key: key);

  @override
  State<MakeBidPage> createState() => _MakeBidPageState();
}

class _MakeBidPageState extends State<MakeBidPage> {
  ///______ increment decrement ______________________
  int a = 0;
  void add1() {
    setState(() {
      a++;
    });
  }

  void minus1() {
    setState(() {
      if (a != 0) a--;
    });
  }

  ///____________ swipe btn ________
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhloxAnimations(
            duration: Duration(seconds: 1),
            fromY: -40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 360.h,
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
                SizedBox(height: 10.h),

                ///__________ middal part ___________
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    Make_Your_Bid,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 40.h),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(50.r)),
                          child: Icon(
                            Icons.explore_outlined,
                            color: Colors.black,
                            size: 25.sp,
                          ),
                        ),
                        SizedBox(width: 5.h),
                        Text(
                          ' $a',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      height: 35.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.pinkAccent.withOpacity(0.2)),
                      child: Center(
                        child: Text(doller,
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: -60,
            bottom: 160,
            child: PhloxAnimations(
              duration: Duration(seconds: 1),
              fromX: -40,
              // fromOpacity: 0.2,
              child: GestureDetector(
                onTap: minus1,
                child: Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        size: 30.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: -60,
            bottom: 160,
            child: PhloxAnimations(
              duration: Duration(seconds: 1),
              fromX: 40,
              child: GestureDetector(
                onTap: add1,
                child: Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 30.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          ///____________________ Swipe button ___________________
          PhloxAnimations(
            duration: Duration(seconds: 1),
            fromY: 50,
            fromOpacity: 0.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(50.r)),
                  child: SwipeableButtonView(
                      buttontextstyle:
                          TextStyle(fontSize: 20.sp, color: Colors.white),
                      buttonText: "Place a Bid      > > >",
                      buttonWidget: Text(
                        Bid,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      activeColor: Colors.deepPurple,
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
                                child: BidSuccessfulPage(
                                  images: widget.contents!,
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
