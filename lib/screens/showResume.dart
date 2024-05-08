import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:resumeapp/controller/education.dart';
import 'package:resumeapp/controller/experience.dart';
import 'package:resumeapp/controller/personal_detail_controller.dart';
import 'package:resumeapp/controller/skill.dart';

import '../utilis/custom_text.dart';

class ResumeShow extends StatelessWidget {
  const ResumeShow({super.key});

  @override
  Widget build(BuildContext context) {
    final personalDetail = Get.find<PersonalController>();
    final education = Get.find<EducationController>();
    final skill = Get.find<skillController>();
    final experince = Get.find<ExperienceController>();

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
          text: "Skills",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person),
                CustomText(
                    text: personalDetail.personalDetails!.firstName +
                        " " +
                        personalDetail.personalDetails!.lastName),
              ],
            ),
            Row(
              children: [
                Icon(Icons.email),
                CustomText(text: personalDetail.personalDetails!.email),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone),
                CustomText(text: personalDetail.personalDetails!.phoneNumber),
                Row(
                  children: [
                    Icon(Icons.my_location),
                    CustomText(
                        text: personalDetail.personalDetails!.line1 +
                            ", " +
                            personalDetail.personalDetails!.line2 +
                            ", " +
                            personalDetail.personalDetails!.line3),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
