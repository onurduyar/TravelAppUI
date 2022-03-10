class Travel {
  final String cardTitle;
  final String cardImagePath;
  final String cardLocation;
  final int? reviews;
  final String description;
  final int amount;
  Travel(
      {required this.cardTitle,
      required this.cardImagePath,
      required this.cardLocation,
      this.reviews,
      required this.description,
      required this.amount});
}

List<Travel> cardContentList = [
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 52,
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. ',
    amount: 410,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 40,
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation. ',
    amount: 210,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 10,
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation.',
    amount: 500,
  ),
  Travel(
    cardTitle: 'Misty Rock Resort',
    cardImagePath: 'assets/images/travel.jpg',
    cardLocation: 'Wayanad',
    reviews: 5,
    description:
        'Ea non tempor et laborum proident laborum aliquip tempor aliquip excepteur aliqua culpa in eu. Dolore commodo eu velit commodo id id. Labore proident velit occaecat reprehenderit ullamco aliqua reprehenderit exercitation.',
    amount: 140,
  ),
];
