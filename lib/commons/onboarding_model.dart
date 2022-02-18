
class OnBoardingContent {
  final String? backgroundImage;
  final String? title;

  OnBoardingContent({this.backgroundImage, this.title});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
    title: 'Добро пожаловать \n в 7FOOD',
    backgroundImage: 'images/onboarding1.jpg',
  ),
  OnBoardingContent(
    title: 'Отсканируйте QR-код, \n чтобы выбрать еду',
    backgroundImage: 'images/refrigerator.jpg',
  ),
];
