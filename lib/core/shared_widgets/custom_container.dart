import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:high_fidelity/features/home/data/models/container_model.dart';
import '../../features/onboarding/data/models/text_model.dart';
import 'custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.containerModel});

  final ContainerModel containerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerModel.containerWidth ?? 90.w,
      height: 40.h,
      padding: EdgeInsets.symmetric(
        horizontal: containerModel.containerPaddingAndWidth ?? 0,
      ),
      decoration: ShapeDecoration(
        color: containerModel.containerColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Row(
        mainAxisAlignment:
            containerModel.mainAxisAlignment ?? MainAxisAlignment.center,
        children: [
          containerModel.icon ?? const SizedBox(),
          SizedBox(width: containerModel.containerPaddingAndWidth ?? 0),
          Center(
            child: CustomText(
              textModel: TextModel(
                title: containerModel.title,
                textColor: containerModel.textColor,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
