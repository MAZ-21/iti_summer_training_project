import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/presentation/home/widgets/category_slide.dart';
import 'package:spotify_app/presentation/home/widgets/choose_sound.dart';
import 'package:spotify_app/presentation/home/widgets/home_page_app_bar.dart';
import 'package:spotify_app/presentation/home/widgets/new_recordings.dart';
import 'package:spotify_app/presentation/home/widgets/news_songs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              HomePageAppBar(),
              Gap(10),
              NewRecordings(),
              Gap(41),
              CategorySlide(),
              Gap(28),
              NewsSongs(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
