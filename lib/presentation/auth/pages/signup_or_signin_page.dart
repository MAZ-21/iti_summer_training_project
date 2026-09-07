import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/presentation/auth/pages/register.dart';
import 'package:spotify_app/presentation/auth/pages/sign_in.dart';
import 'package:spotify_app/presentation/auth/widgets/arrow_back_icon.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //leading bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 34),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ArrowBackIcon(),
                ),
              ),
              SvgPicture.asset(AppImages.waveTopRight),
            ],
          ),
          const Gap(70),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 235,
                    height: 71,
                    child: SvgPicture.asset(AppImages.spotifyLogo),
                  ),
                  const Gap(55),
                  Text(
                    'Enjoy listening to Quran',
                    style: Styles.bold26(context),
                  ),
                  Gap(21),
                  Text(
                    'Spotify is a proprietary Swedish audio streaming and media services provider',
                    textAlign: TextAlign.center,
                    style: Styles.regular18(
                      context,
                    ).copyWith(color: AppColor.greyText),
                  ),
                  Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 80,
                          child: BasicAppButton(
                            text: 'Register',
                            fontWeight: FontWeight.w400,
                            onPress: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => RegisterPage())
                                );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 80,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => SignIn())
                                );
                            },
                            child: Text('Sign in', style: Styles.bold20(context).copyWith(
                              color: context.isDarkMode ? Colors.white : AppColor.greyText, 
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppImages.waveBottomRight),
          ),
        ],
      ),
    );
  }
}