import 'package:flutter/material.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.08,
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[800],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10),
            child: Image.network(imageUrl),
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
