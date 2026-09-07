import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/presentation/choose_theme/bloc/theme_cubit.dart';

class ChooseModeButtons extends StatelessWidget {
  const ChooseModeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        final cubit = context.read<ThemeCubit>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                      debugPrint('tapped dark, current mode: ${cubit.state}');

                    cubit.updateTheme(ThemeMode.dark);
                  },
                  child: ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        width: 73,
                        height: 73,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff30393C).withOpacity(0.56),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  center: const Alignment(
                                    -0.6,
                                    0.7,
                                  ), // bottom left
                                  radius: mode == ThemeMode.dark ? 1.0 : 0.0,
                                  colors: [
                                    AppColor.primary.withOpacity(.45),
                                    AppColor.primary.withOpacity(.15),
                                    Colors.transparent,
                                  ],
                                  stops: const [0.0, 0.45, 1.0],
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              AppIcon.darkMode,
                              fit: BoxFit.none,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(17),
                Text(
                  'Dark Mode',
                  style: Styles.bold16(context).copyWith(color: Colors.white),
                ),
              ],
            ),
            const Gap(71),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                      debugPrint('tapped dark, current mode: ${cubit.state}');

                    cubit.updateTheme(ThemeMode.light);
                  },
                  child: ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        width: 73,
                        height: 73,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff30393C).withOpacity(0.56),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  center: const Alignment(
                                    -0.6,
                                    0.7,
                                  ), // bottom left
                                  radius: mode == ThemeMode.light ? 1.0 : 0.0,
                                  colors: [
                                    AppColor.primary.withOpacity(.45),
                                    AppColor.primary.withOpacity(.15),
                                    Colors.transparent,
                                  ],
                                  stops: const [0.0, 0.45, 1.0],
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              AppIcon.lightMode,
                              fit: BoxFit.none,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(17),
                Text(
                  'Light Mode',
                  style: Styles.bold16(context).copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
