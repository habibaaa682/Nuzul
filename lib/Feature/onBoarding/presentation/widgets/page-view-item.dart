import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String image;
  final String title;
  const PageViewItem({super.key, required this.image, required this.title});
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Center(
            child: Container(
              width: size.width * 0.8,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
