import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/Color.dart';
import '../../../utilis/custom_button.dart';
import '../../../utilis/custom_text.dart';
import '../../../utilis/custom_text_form_field.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final f_name = TextEditingController();
  final l_name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final github = TextEditingController();
  final linked = TextEditingController();
  final leetcode = TextEditingController();
  final line1 = TextEditingController();
  final line2 = TextEditingController();
  final line3 = TextEditingController();
  String _value = 'M';

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
          text: "Personal Details",
          fontFamily: "Mulish",
          color: Colors.white,
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                controller: f_name,
                title: 'First Name',
                textInputType: TextInputType.name,
                weight: FontWeight.w500,
                hintText: 'Enter First Name',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
              CustomTextFormField(
                controller: l_name,
                title: 'Last Name',
                textInputType: TextInputType.name,
                weight: FontWeight.w500,
                hintText: 'Enter Last Name',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
              CustomTextFormField(
                controller: email,
                title: 'Enter Email',
                textInputType: TextInputType.emailAddress,
                weight: FontWeight.w500,
                hintText: 'Enter email address',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
              CustomTextFormField(
                title: 'Phone number',
                textInputType: TextInputType.phone,
                weight: FontWeight.w500,
                hintText: 'Enter phone number',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
                controller: phone,
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Gender',
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 'M',
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          }),
                      CustomText(
                        text: 'Male',
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Radio(
                          value: 'F',
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          }),
                      CustomText(
                        text: 'Female',
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Radio(
                          value: 'O',
                          groupValue: _value,
                          onChanged: (val) {
                            setState(() {
                              _value = val!;
                            });
                          }),
                      CustomText(
                        text: 'other',
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Spacer()
                ],
              ),
              CustomText(
                text: 'Address as per Aadhaar',
                color: black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: null,
                decoration: InputDecoration(
                  hintText: 'Flat/ House no./ Floor/ Building',
                  contentPadding: EdgeInsets.only(left: 12, top: 10),
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: greyColor1,
                  ),
                  fillColor: textFormFieldBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: null,
                decoration: InputDecoration(
                  hintText: 'Street and Landmark',
                  contentPadding: EdgeInsets.only(left: 12, top: 10),
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: greyColor1,
                  ),
                  fillColor: textFormFieldBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: line1,
                decoration: InputDecoration(
                  hintText: 'Locality/ Area/ Sector',
                  contentPadding: EdgeInsets.only(left: 12, top: 10),
                  hintStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    color: greyColor1,
                  ),
                  fillColor: textFormFieldBackground,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderFormFieldColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: Get.width * 0.42,
                    child: CustomTextFormField(
                      controller: line2,
                      title: 'City',
                      weight: FontWeight.w500,
                      hintText: 'Your City',
                      contentPadding: EdgeInsets.only(left: 12, top: 10),
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
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: Get.width * 0.42,
                    child: CustomTextFormField(
                      controller: line3,
                      textInputType: TextInputType.phone,
                      title: 'Pin Code',
                      weight: FontWeight.w500,
                      hintText: 'Postal Code',
                      contentPadding: EdgeInsets.only(left: 12, top: 10),
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
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: github,
                title: 'GitHub',
                weight: FontWeight.w500,
                hintText: 'Github link',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
              CustomTextFormField(
                controller: leetcode,
                title: 'LeetCode',
                weight: FontWeight.w500,
                hintText: 'LeetCode link',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
              CustomTextFormField(
                controller: linked,
                title: 'Linked',
                weight: FontWeight.w500,
                hintText: 'Linked link',
                contentPadding: EdgeInsets.only(left: 12, top: 10),
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
                padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.h),
                child: Row(
                  children: [
                    Center(
                      child: CustombuttonWidget(
                        onPressed: () async {},
                        text: 'Back',
                        textColor: white,
                        buttonWidth: Get.width * 0.35,
                        buttonborderRadius: 10,
                        buttonBackgroundColor: Colors.lightBlue,
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: CustombuttonWidget(
                        onPressed: () async {},
                        text: 'Next',
                        textColor: white,
                        buttonWidth: Get.width * 0.35,
                        buttonborderRadius: 10,
                        buttonBackgroundColor: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
