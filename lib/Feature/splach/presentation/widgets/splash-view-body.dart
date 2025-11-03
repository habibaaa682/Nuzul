import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuzul/Core/utiles/app_images.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.assetsImagesImage),
        SvgPicture.asset(Assets.assetsImagesName),
      ],
    );
  }
}
