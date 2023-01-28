import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoInternetConnectionBody extends StatelessWidget {
  const NoInternetConnectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off_rounded,
            color: AppColors.primaryRed,
            size: Sizes.s120.w,
          ),
          Text(
            'Oops... No internet connection',
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: Sizes.s8.h,
          ),
          Text(
            'Please check your internet connection and try again',
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
