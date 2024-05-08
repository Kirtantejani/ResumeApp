import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resumeapp/screens/Page1/Details/education_screen.dart';
import 'package:resumeapp/screens/Page1/Details/personal_details.dart';
import 'package:resumeapp/screens/Page1/Details/skill_screen.dart';
import 'package:resumeapp/screens/Page1/Details/summary.dart';
import 'package:resumeapp/screens/Page1/Details/work_exprience.dart';

import '../../utilis/custom_text.dart';

class ResumeMainScreen extends StatefulWidget {
  const ResumeMainScreen({super.key});

  @override
  State<ResumeMainScreen> createState() => _ResumeMainScreenState();
}

class _ResumeMainScreenState extends State<ResumeMainScreen> {
  List items = [
    {
      "icon": Icon(Icons.person_2, size: 30.sp, color: Colors.white),
      "name": "Personal Information",
      "onTap": () {
        Get.to(PersonalInformation(), transition: Transition.rightToLeft);
      }
    },
    {
      "icon": Icon(
        Icons.summarize_outlined,
        size: 30.sp,
        color: Colors.white,
      ),
      "name": "Summary",
      "onTap": () {
        Get.to(SummaryScreen(), transition: Transition.rightToLeft);
      }
    },
    {
      "icon": Icon(Icons.work, size: 30.sp, color: Colors.white),
      "name": "Work Experience",
      "onTap": () {
        Get.to(WorkExperience(), transition: Transition.rightToLeft);
      }
    },
    {
      "icon": Icon(Icons.school, size: 30.sp, color: Colors.white),
      "name": "Education",
      "onTap": () {
        Get.to(EducationScreen(), transition: Transition.rightToLeft);
      }
    },
    {
      "icon": Icon(Icons.accessibility, color: Colors.white),
      "name": "skill",
      "onTap": () {
        Get.to(SkillScreen(), transition: Transition.rightToLeft);
      }
    },
    {
      "icon": Icon(Icons.school, size: 30.sp, color: Colors.white),
      "name": "Project",
      "onTap": () {}
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        // automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 22.sp,
          ),
        ),
        backgroundColor: Colors.blue,
        title: CustomText(
          text: "Create Resume",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10.h, crossAxisSpacing: 10.w),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
            child: InkWell(
              onTap: items[index]["onTap"],
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.shade700,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    items[index]["icon"],
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0.h),
                      child: CustomText(
                        text: items[index]["name"],
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Mulish",
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
