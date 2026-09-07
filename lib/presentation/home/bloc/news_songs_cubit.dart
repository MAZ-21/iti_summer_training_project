import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecase/song/get_news_songs.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_state.dart';
import 'package:spotify_app/service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoadingState());

  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetNewsSongsUseCase>().call();
    returnedSongs.fold((l) {
      return NewsSongsFailureState();
    }, (data) {
      NewsSongsLoadedState(songs: data);
    });
  }
}
