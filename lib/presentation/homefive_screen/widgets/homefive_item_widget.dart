import 'package:flutter/material.dart';
import 'package:vip_app/core/app_export.dart';

// ignore: must_be_immutable
class HomefiveItemWidget extends StatelessWidget {
  const HomefiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle11,
            height: 97.v,
            width: 132.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_riding_in_the_horse".tr,
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
