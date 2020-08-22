class MusicModel {
  final int id;
  final String title;
  final String album;
  final double duration;

  MusicModel({this.id, this.title, this.album, this.duration});

  static List<MusicModel> list = [
    MusicModel(
      id: 1,
      title: "Champ",
      album: "Apollo",
      duration: 179,
    ),
    MusicModel(
      id: 2,
      title: 'ELI',
      album: 'Apollo',
      duration: 172,
    ),
    MusicModel(
      id: 3,
      title: 'Spell',
      album: 'Apollo',
      duration: 173,
    ),
    MusicModel(
      id: 4,
      title: 'Tattoo',
      album: 'Apollo',
      duration: 176,
    ),
    MusicModel(
      id: 5,
      title: 'Favourite Song',
      album: 'Apollo',
      duration: 173,
    )
  ];
}
