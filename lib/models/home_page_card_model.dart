class Travel {
  final String cardTitle;
  final String cardImagePath;
  final String cardLocation;
  final int? reviews;
  Travel(
      {required this.cardTitle,
      required this.cardImagePath,
      required this.cardLocation,
      this.reviews});
}

List<Travel> cardContentList = [
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 52,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 40,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 10,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 5,
  ),
];
