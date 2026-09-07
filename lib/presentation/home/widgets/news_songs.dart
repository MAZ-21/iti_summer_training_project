import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/constants/app_urls.dart';
import 'package:spotify_app/domain/entities/song/song.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_state.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});
  static List<String> artist = [
    AppImages.yasser,
    AppImages.badr,
    AppImages.elsodes,
    AppImages.elwaleed,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsSongsCubit()..getNewsSongs(),
      child: SizedBox(
        height: 200,
        child: BlocBuilder<NewsSongsCubit, NewsSongsState>(
          builder: (context, state) {
            if (state is NewsSongsLoadedState) {
              return _songs(state.songs);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _songs(List<SongEntity> songs) {
    return ListView.separated(
      itemCount: songs.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      separatorBuilder: ((context, index) => SizedBox(width: 14)),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                   image: NetworkImage('https://res.cloudinary.com/ldde9w47/image/upload/v1788709306/elwaleed.jpg'),
                  ),
                ),
              ),
            ),
            Gap(10),
            Text(
              songs[index].title,
              style: Styles.bold16(context),
            ),
            Gap(5),
            Text(
              songs[index].artist,
              style: Styles.medium16(context),
            ),
          ],
        );
      },
    );
  }
}
