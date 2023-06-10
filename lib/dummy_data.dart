class WhosWatchingDataModel {
  final String name;
  final bool isLocked;
  final String image;
  final num? pin;

  WhosWatchingDataModel(
      {required this.isLocked,
      required this.name,
      required this.image,
      this.pin});
}

List<WhosWatchingDataModel> watchingData = [
  WhosWatchingDataModel(
      isLocked: true,
      name: "ChocoSanju",
      image: "assets/images/watching1.jpeg",
      pin: 1234),
  WhosWatchingDataModel(
    isLocked: true,
    name: "Prabhakaran",
    image: "assets/images/watching2.jpeg",
    pin: 1234,
  ),
  WhosWatchingDataModel(
      isLocked: true,
      name: "Dk",
      image: "assets/images/watching3.jpeg",
      pin: 1234),
  WhosWatchingDataModel(
      isLocked: true,
      name: "Surya",
      image: "assets/images/watching4.jpeg",
      pin: 1234),
  WhosWatchingDataModel(
      isLocked: false, name: "Children", image: "assets/images/watching5.jpeg"),
];
