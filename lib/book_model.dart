class AlbumModel {
  final String name;
  final String decs;
  final String artist;
  final String imgPath;

  AlbumModel(
      {required this.name,
      required this.decs,
      required this.artist,
      required this.imgPath});
  static List<AlbumModel> list = [
    AlbumModel(
        name: "DONDA",
        decs: "2021 relaesed Greatest of Album of the Year by the Greatest Artist" +
            " having Triology of WeekEnd, Lil Baby and Kanye and some dope story telling.",
        artist: "Kanye West",
        imgPath: "assets/cover 1.jpg"),
    AlbumModel(
        name: "DAMN.",
        decs: "A unique album released in 2017 by one the Greatest Ever Kendrick Lamar(The Goat). This was " +
            "his Greatest Album got 24 nominations and Kendrick was awarded 4 Grammy's for this album ",
        artist: "Kendric Lamar",
        imgPath: "assets/cover2.jpg"),
    AlbumModel(
        name: "?",
        decs:
            "Some the saddest albums of this Genre. The reason behind the name is X is asking questions" +
                "one of his closests freind killed himself.",
        artist: "Xxxtentaction",
        imgPath: "assets/cover3.jpg"),
  ];
}
