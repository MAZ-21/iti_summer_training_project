import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_app/data/repository/song/song_repository_impl.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_app/data/sources/song/song_firestore_service.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/domain/repository/song/song_repo.dart';
import 'package:spotify_app/domain/usecase/auth/signin.dart';
import 'package:spotify_app/domain/usecase/auth/signup.dart';
import 'package:spotify_app/domain/usecase/song/get_news_songs.dart';

final sl = GetIt.instance;

Future<void> initializeDepencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceimpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SongRepository>(SongRepositoryImpl());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
}
