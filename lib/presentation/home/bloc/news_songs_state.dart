import 'package:spotify_app/domain/entities/song/song.dart';

abstract class NewsSongsState {}

final class NewsSongsLoadingState extends NewsSongsState{} 
final class NewsSongsLoadedState extends NewsSongsState {
  final List<SongEntity> songs;
  NewsSongsLoadedState({required this.songs});
} 
final class NewsSongsFailureState extends NewsSongsState{} 