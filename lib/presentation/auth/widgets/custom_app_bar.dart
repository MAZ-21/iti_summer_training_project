import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/presentation/auth/widgets/arrow_back_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.isDarkMode
          ? AppColor.darkBackground
          : AppColor.lightBackground,
      leading: Padding(
        padding: const EdgeInsets.only(left: 31.0),
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: ArrowBackIcon()),
      ),
      title: SizedBox(
        height: 36,
        width: 141,
        child: SvgPicture.asset(AppImages.spotifyLogo),
      ),
      centerTitle: true,
    );
  }

}