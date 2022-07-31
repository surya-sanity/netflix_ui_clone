class WhosWatchingDataModel {
  final String name;
  final bool isLocked;
  final String image;

  WhosWatchingDataModel(
      {required this.isLocked, required this.name, required this.image});
}

List<WhosWatchingDataModel> watchingData = [
  WhosWatchingDataModel(
      isLocked: true,
      name: "ChocoSanju",
      image: "assets/images/watching1.jpeg"),
  WhosWatchingDataModel(
      isLocked: true,
      name: "Prabhakaran",
      image: "assets/images/watching2.jpeg"),
  WhosWatchingDataModel(
      isLocked: true, name: "Dk", image: "assets/images/watching3.jpeg"),
  WhosWatchingDataModel(
      isLocked: true, name: "Surya", image: "assets/images/watching4.jpeg"),
  WhosWatchingDataModel(
      isLocked: false, name: "Children", image: "assets/images/watching5.jpeg"),
];
