class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Enjoy Unlimited Memes",
    image: "assets/images/image1.png",
    desc: "You can now enjoy unlimited memes of\n your favorite creators",
  ),
  OnboardingContents(
    title: "Create & Earn",
    image: "assets/images/image2.png",
    desc: "Keep creating fun and engaging\n content and get paid",
  ),
  OnboardingContents(
    title: "Win Prizes & Rewards",
    image: "assets/images/image3.png",
    desc: "Collect coins and trade them in for\n Prizes & Rewards",
  ),
];
