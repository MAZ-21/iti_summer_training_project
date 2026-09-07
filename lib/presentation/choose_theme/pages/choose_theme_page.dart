import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/presentation/auth/pages/signup_or_signin_page.dart';
import 'package:spotify_app/presentation/choose_theme/widgets/choose_theme_buttons.dart';

class ChooseThemePage extends StatelessWidget {
  const ChooseThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(AppImages.yasser, fit: BoxFit.cover),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  Center(child: SvgPicture.asset(AppImages.spotifyLogo)),
                  Spacer(),
                  Text(
                    'Choose Mode',
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    style: Styles.bold22(context).copyWith(color: Colors.white),
                  ),
                  Gap(34),
                  ChooseModeButtons(),
                  Gap(68),
                  BasicAppButton(
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignupOrSigninPage()),
                      );
                    },
                    fontWeight: FontWeight.bold,
                     text: 'Continue',
                    ),
                  Gap(69),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
