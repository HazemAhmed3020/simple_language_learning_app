class Numbers{
  String image;
  String jpName;
  String enName;
  String sound;
  Numbers({required this.enName , required this.jpName , required this.image ,required this.sound });
}

var data = [
  Numbers(enName: 'one', jpName: 'ichi', image: 'assets/images/numbers/number_one.png',sound: 'sounds/numbers/number_one_sound.mp3'),
  Numbers(enName: 'two', jpName: 'ni', image: 'assets/images/numbers/number_two.png', sound:'sounds/numbers/number_two_sound.mp3'),
  Numbers(enName: 'three', jpName: 'san', image: 'assets/images/numbers/number_three.png', sound:'sounds/numbers/number_three_sound.mp3'),
  Numbers(enName: 'four', jpName: 'shi / yon', image: 'assets/images/numbers/number_four.png', sound:'sounds/numbers/number_four_sound.mp3'),
  Numbers(enName: 'five', jpName: 'go', image: 'assets/images/numbers/number_five.png', sound:'sounds/numbers/number_five_sound.mp3'),
  Numbers(enName: 'six', jpName: 'roku', image: 'assets/images/numbers/number_six.png', sound:'sounds/numbers/number_six_sound.mp3'),
  Numbers(enName: 'seven', jpName: 'shichi / nana', image: 'assets/images/numbers/number_seven.png', sound:'sounds/numbers/number_seven_sound.mp3'),
  Numbers(enName: 'eight', jpName: 'hachi', image: 'assets/images/numbers/number_eight.png', sound:'sounds/numbers/number_eight_sound.mp3'),
  Numbers(enName: 'nine', jpName: 'kyu / ku', image: 'assets/images/numbers/number_nine.png', sound:'sounds/numbers/number_nine_sound.mp3'),
  Numbers(enName: 'ten', jpName: 'juu', image: 'assets/images/numbers/number_ten.png', sound:'sounds/numbers/number_ten_sound.mp3'),

];