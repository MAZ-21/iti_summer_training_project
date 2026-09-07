import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:  Colors.black.withOpacity(0.04),
      ),
      child: SvgPicture.asset(
         context.isDarkMode ? AppIcon.arrowBackDarkMode : AppIcon.arrowBackLightMode,
         fit: BoxFit.none,
      ),
    );
  }
}
