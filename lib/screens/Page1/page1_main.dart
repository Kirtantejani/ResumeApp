import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resumeapp/screens/Page1/Resume_main_page.dart';

import '../../utilis/custom_text.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: CustomText(
          text: "Resume",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: "IMPRESSIVE RESUMES EASY ONLINE BUILDER",
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: 16.sp,
                  ),
                  Expanded(
                    child: CustomText(
                        text:
                            "Professional out-of-the-box resumes, instantly generated by the most advanced resume builder technology available."),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: 16.sp,
                  ),
                  Expanded(
                    child: CustomText(
                        text:
                            "Effortless crafting. Real-time preview & pre-written resume examples.Dozens of HR-approved resume templates."),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_outlined,
                    size: 16.sp,
                  ),
                  Expanded(
                    child: CustomText(
                        text:
                            "Land your dream job with the perfect resume employers are looking for!"),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(),
                    backgroundColor: Colors.blueAccent),
                onPressed: () {
                  Get.to(ResumeMainScreen(),
                      transition: Transition.rightToLeft);
                },
                child: CustomText(
                  text: 'Start My Resume',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomText(
                color: Colors.blue.shade400,
                text: "3 EASY STEPS TO CREATE YOUR PERFECT RESUME",
                textDecoration: TextDecoration.underline,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.withOpacity(0.75)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade500),
                              child: Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomText(
                              text: "CHOOSE YOUR RESUME TEMPLATE",
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                              child: CustomText(
                                text:
                                    "Our professional resume templates are designed strictly following all industry guidelines and best practices that employers look for.",
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: VerticalDivider(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Column(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade500),
                              child: Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomText(
                              text: "SHOW WHAT YOU'RE MADE OF",
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                              child: CustomText(
                                text:
                                    "Not finding the right words to showcase yourself? We´ve added thousands of pre-written examples and resume samples. As easy as clicking.",
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: VerticalDivider(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                        child: Column(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.shade500),
                              child: Icon(
                                Icons.pending_actions,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomText(
                              text: "DOWNLOAD YOUR RESUME",
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                              child: CustomText(
                                text:
                                    "Start impressing employers. Download your awesome resume and land the job you are looking for, effortlessly.",
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
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
