
class ColorsPronounce{
  String image;
  String jpName;
  String enName;
  String sound;
  ColorsPronounce({required this.enName , required this.jpName , required this.image ,required this.sound });
}

var dataColors = [
  ColorsPronounce(enName: 'black', jpName: 'drakoa', image: 'assets/images/colors/color_black.png', sound: 'sounds/colors/black.wav'),
  ColorsPronounce(enName: 'brown', jpName: 'Chairo', image: 'assets/images/colors/color_brown.png', sound: 'sounds/colors/brown.wav'),
  ColorsPronounce(enName: 'dusty yellow', jpName: 'okori boykirro', image: 'assets/images/colors/color_dusty_yellow.png', sound: 'sounds/colors/dusty yellow.wav'),
  ColorsPronounce(enName: 'gray', jpName: 'kodaih', image: 'assets/images/colors/color_gray.png', sound: 'sounds/colors/gray.wav'),
  ColorsPronounce(enName: 'green', jpName: 'Midori', image: 'assets/images/colors/color_green.png', sound: 'sounds/colors/green.wav'),
  ColorsPronounce(enName: 'red', jpName: 'Aka', image: 'assets/images/colors/color_red.png', sound: 'sounds/colors/red.wav'),
  ColorsPronounce(enName: 'white', jpName: 'Shiro', image: 'assets/images/colors/color_white.png', sound: 'sounds/colors/white.wav'),
  ColorsPronounce(enName: 'yellow', jpName: 'Kiiro', image: 'assets/images/colors/yellow.png', sound: 'sounds/colors/yellow.wav'),
];