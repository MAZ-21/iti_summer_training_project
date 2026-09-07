import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/presentation/choose_theme/pages/choose_theme_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(AppImages.mekka, fit: BoxFit.cover),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Center(child: SvgPicture.asset(AppImages.spotifyLogo)),
                  Spacer(),
                  Text(
                    'Listening to Haram\'s Imam Quran',
                    style: Styles.bold22(context).copyWith(color: Colors.white),
                  ),
                  Gap(21),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    style: Styles.regular16(
                      context,
                    ).copyWith(color: AppColor.grey),
                  ),
                  Gap(37),
                  BasicAppButton(
                    onPress: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ChooseThemePage(),
                        ),
                      );
                    },
                    fontWeight: FontWeight.bold,
                    text: 'Get Started',
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
