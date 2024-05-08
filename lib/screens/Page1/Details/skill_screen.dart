import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/Color.dart';
import '../../../utilis/custom_text.dart';
import '../../../utilis/custom_text_form_field.dart';
import '../../../utilis/rate.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  int item = 1;
  List controller = [];

  void controllerFunction() {
    final text1Controller = TextEditingController();
    int skillrate = 0;
    controller.add([text1Controller, skillrate]);
  }

  @override
  void initState() {
    controllerFunction();

    super.initState();
  }

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
          text: "Education",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: item,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              Colors.lightBlueAccent.shade100.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.r),
                                  topRight: Radius.circular(10.r)),
                              color: Colors.blueGrey,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                    text: "Skill${index + 1}",
                                    color: Colors.white,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        item--;
                                        controller.removeAt(index);
                                        setState(() {});
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  controller: controller[index][0],
                                  title: 'Skill ',
                                  textInputType: TextInputType.name,
                                  weight: FontWeight.w500,
                                  hintText: 'Enter Skill Name',
                                  contentPadding:
                                      EdgeInsets.only(left: 12, top: 10),
                                  hintFontFamily: 'Roboto',
                                  hintWeight: FontWeight.w300,
                                  hintColor: greyColor1,
                                  backgroundColor: textFormFieldBackground,
                                  inputBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: borderFormFieldColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      RatingEmoji(
                                        value: 1,
                                        activeValue: controller[index][1],
                                        onTap: () {
                                          setState(() {
                                            controller[index][1] = 1;
                                          });
                                        },
                                      ),
                                      RatingEmoji(
                                        value: 2,
                                        activeValue: controller[index][1],
                                        onTap: () {
                                          setState(() {
                                            controller[index][1] = 2;
                                          });
                                        },
                                      ),
                                      RatingEmoji(
                                        value: 3,
                                        activeValue: controller[index][1],
                                        onTap: () {
                                          setState(() {
                                            controller[index][1] = 3;
                                          });
                                        },
                                      ),
                                      RatingEmoji(
                                        value: 4,
                                        activeValue: controller[index][1],
                                        onTap: () {
                                          setState(() {
                                            controller[index][1] = 4;
                                          });
                                        },
                                      ),
                                      RatingEmoji(
                                        value: 5,
                                        activeValue: controller[index][1],
                                        onTap: () {
                                          setState(() {
                                            controller[index][1] = 5;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Add more Skill",
                    color: Colors.blue,
                  ),
                  IconButton(
                    onPressed: () {
                      item++;
                      controllerFunction();
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
