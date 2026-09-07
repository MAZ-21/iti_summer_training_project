import 'package:flutter/material.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';

class ChooseSound extends StatelessWidget {
  const ChooseSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 147,
          height: 185,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Image.asset(
            AppImages.yasser,
            width: 147,
            height: 185,
            
          ),
        ),
      ],
    );
  }
}
