import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entities/song/song.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releasedDate;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releasedDate,
  });
  SongModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releasedDate = data['releaseDate'];
  }
}

extension SongModelX on SongModel {
  SongEntity toSongEntity() {
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releasedDate: releasedDate!,
    );
  }
}
