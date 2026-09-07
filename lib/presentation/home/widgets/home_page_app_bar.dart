
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/presentation/auth/widgets/arrow_back_icon.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.isDarkMode
          ? AppColor.darkBackground
          : AppColor.lightBackground,
      centerTitle: true,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      title: SizedBox(
        height: 36,
        width: 141,
        child: SvgPicture.asset(AppImages.spotifyLogo),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: SvgPicture.asset(AppIcon.search, fit: BoxFit.none,),
      ),
    );
  }
}
