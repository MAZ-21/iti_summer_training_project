import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';

class NewRecordings extends StatelessWidget {
  const NewRecordings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 120,
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Green Card
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    // Wave Background
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SizedBox(
                        width: 160,
                        height: 120,
                        child: SvgPicture.asset(
                          AppImages.waveTopRight,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    // Text Content
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 10,
                        bottom: 10
                      ),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Recordings',
                              style: Styles.bold12(context),
                            ),
                            Text(
                              'Relaxing And Peace Of Mind',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.bold20(context),
                            ),
                            Text(
                              'Sheikk Elawleed',
                              style: Styles.bold14(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Sheikh Image
            Positioned(
              bottom: 0,
              right: 20,
              child: Image.asset(
                AppImages.elwaleedWithoutBG,
                height: 170,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}