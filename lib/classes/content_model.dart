class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Gain total control of your money',
      image: 'assets/images/gainmoneycontrol.jpg',
      discription: "Become your own money manager and make every cent count"),
  UnbordingContent(
      title: 'KNOW WHERE YOUR MONEY GOES',
      image: 'assets/images/exportdata.jpg',
      discription:
          "Track your transaction easily with categories and financial report "),
  UnbordingContent(
      title: 'PLANNING AHEAD',
      image: 'assets/images/planingahead.jpg',
      discription:
          "set up your budget for each category so that your are in control "),
];
