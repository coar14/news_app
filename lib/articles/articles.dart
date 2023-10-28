class Article {
  Article({
    this.articlePicture = ' ',
    this.articleTitle = ' ',
    this.articleUserPic = ' ',
    this.articleUsername = ' ',
    this.articleDate = ' ',
    this.articleShare = ' ',
  });
  String articlePicture;
  String articleTitle;
  String articleUserPic;
  String articleUsername;
  String articleDate;
  String articleShare;
}

final List<Article> highlightArticle = [
  Article(
    articlePicture: 'assets/pic/1.jpg',
    articleTitle: 'Expedition into the Unknown: A Thrilling Adventure Ahead!',
    articleUserPic: 'assets/pic/dp.jpg',
    articleUsername: 'Eve Let',
    articleDate: 'May 5, 2022',
    articleShare: 'assets/icons/share_icon.svg',
  ),
  Article(
    articlePicture: 'assets/pic/2.jpg',
    articleTitle: 'Adventurers Unite: Conquer the Great Unknown with Grit',
    articleUserPic: 'assets/pic/dp2.jpg',
    articleUsername: 'Zcher Klir',
    articleDate: 'Aug 5, 2021',
    articleShare: 'assets/icons/share_icon.svg',
  ),
  Article(
    articlePicture: 'assets/pic/3.jpg',
    articleTitle: 'Beneath the Waves: A Sublime Sea Life Adventure',
    articleUserPic: 'assets/pic/dp3.jpg',
    articleUsername: 'Wrosk Brutz',
    articleDate: 'July 14, 2023',
    articleShare: 'assets/icons/share_icon.svg',
  ),
  Article(
    articlePicture: 'assets/pic/4.jpg',
    articleTitle: 'Infinite Blue Horizons: Embark on a Sea Life Odyssey',
    articleUserPic: 'assets/pic/dp5.jpg',
    articleUsername: 'Piertz Sekld',
    articleDate: 'Dec 5, 2022',
    articleShare: 'assets/icons/share_icon.svg',
  ),
  Article(
    articlePicture: 'assets/pic/5.jpg',
    articleTitle: 'Wanderlust and S\'mores: Camping Adventures Await You',
    articleUserPic: 'assets/pic/dp5.jpg',
    articleUsername: 'Xry Yuo',
    articleDate: 'Sept 15, 2021',
    articleShare: 'assets/icons/share_icon.svg',
  ),
];

class Popular {
  final posts = [
    'assets/pic/8.jpg',
    'assets/pic/7.jpg',
    'assets/pic/6.jpg',
    'assets/pic/5.jpg'
  ];
}

class DisplayPosts {
  final List listPost = [
    [
      'assets/pic/post2.jpg',
      'News: Philippines',
      'Cult Leader: Has the power to stop rain and make birds sing.',
      '30th Sept',
      '05:10 pm'
    ],
    [
      'assets/pic/post.png',
      'News: Technology',
      'Advantages: The Power of Hybrid Mobile Apps',
      '11th Aug',
      '09:11 am'
    ],
    [
      'assets/pic/post3.jpg',
      'News: Music',
      'More and More, OPM and Rising Filipino Artist',
      '28th Jun',
      '10:40 pm'
    ]
  ];
}
