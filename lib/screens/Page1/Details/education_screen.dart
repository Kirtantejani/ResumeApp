import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/Color.dart';
import '../../../utilis/custom_text.dart';
import '../../../utilis/custom_text_form_field.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  int item = 1;
  List controller = [];

  void controllerFunction() {
    final text1Controller = TextEditingController();
    final text2Controller = TextEditingController();
    final text3Controller = TextEditingController();
    final text4Controller = TextEditingController();
    bool isCurrentWork = false;
    bool isPercentage = true;
    controller.add([
      text1Controller,
      text2Controller,
      text3Controller,
      text4Controller,
      isCurrentWork,
      isPercentage
    ]);
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
                                    text: "Education${index + 1}",
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
                                  title: 'College/School Name',
                                  textInputType: TextInputType.name,
                                  weight: FontWeight.w500,
                                  hintText: 'Enter College/School Name',
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                            value: true,
                                            groupValue: controller[index][5],
                                            onChanged: (val) {
                                              setState(() {
                                                controller[index][5] = val!;
                                              });
                                            }),
                                        CustomText(
                                          text: "Percentage",
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Radio(
                                            value: false,
                                            groupValue: controller[index][5],
                                            onChanged: (val) {
                                              setState(() {
                                                controller[index][5] = val!;
                                              });
                                            }),
                                        CustomText(
                                          text: "CGPA",
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                CustomTextFormField(
                                  controller: controller[index][1],
                                  title: 'Percentage/CGPA',
                                  textInputType: TextInputType.name,
                                  weight: FontWeight.w500,
                                  hintText: 'Enter Percentage/CGPA',
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                            value: true,
                                            groupValue: controller[index][4],
                                            onChanged: (val) {
                                              setState(() {
                                                controller[index][4] = val!;
                                              });
                                            }),
                                        CustomText(
                                          text: "Pursuing",
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Radio(
                                            value: false,
                                            groupValue: controller[index][4],
                                            onChanged: (val) {
                                              setState(() {
                                                controller[index][4] = val!;
                                              });
                                            }),
                                        CustomText(
                                          text: "Not Pursuing",
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: Get.width * 0.45,
                                      child: CustomTextFormField(
                                        controller: controller[index][2],
                                        title: 'From Year',
                                        textInputType: TextInputType.datetime,
                                        weight: FontWeight.w500,
                                        hintText: 'Enter Year',
                                        contentPadding:
                                            EdgeInsets.only(left: 12, top: 10),
                                        hintFontFamily: 'Roboto',
                                        hintWeight: FontWeight.w300,
                                        hintColor: greyColor1,
                                        backgroundColor:
                                            textFormFieldBackground,
                                        inputBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: borderFormFieldColor,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    controller[index][4]
                                        ? Container()
                                        : SizedBox(
                                            width: Get.width * 0.45,
                                            child: CustomTextFormField(
                                              controller: controller[index][3],
                                              title: 'To Year',
                                              textInputType:
                                                  TextInputType.datetime,
                                              weight: FontWeight.w500,
                                              hintText: 'Enter Year',
                                              contentPadding: EdgeInsets.only(
                                                  left: 12, top: 10),
                                              hintFontFamily: 'Roboto',
                                              hintWeight: FontWeight.w300,
                                              hintColor: greyColor1,
                                              backgroundColor:
                                                  textFormFieldBackground,
                                              inputBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: borderFormFieldColor,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
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
                    text: "Add more Education",
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
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
