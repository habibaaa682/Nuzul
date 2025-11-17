import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuzul/Core/utiles/app_images.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesImage,
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        SvgPicture.asset(
          Assets.assetsImagesName,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ],
    );
  }
}
