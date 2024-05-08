import 'package:get/get.dart';
import 'package:resumeapp/controller/education.dart';
import 'package:resumeapp/controller/experience.dart';
import 'package:resumeapp/controller/personal_detail_controller.dart';
import 'package:resumeapp/controller/skill.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PersonalController());
    Get.put(EducationController());
    Get.put(ExperienceController());
    Get.put(skillController());
  }
}
