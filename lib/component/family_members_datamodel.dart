class FamilyMembers{
  String image;
  String jpName;
  String enName;
  String sound;
  FamilyMembers({required this.enName , required this.jpName , required this.image ,required this.sound });
}

var familyData = [
  FamilyMembers(enName: 'Father', jpName: 'chichi', image: 'assets/images/family_members/family_father.png',sound: 'sounds/family_members/father.wav'),
  FamilyMembers(enName: 'Mother', jpName: 'haha', image: 'assets/images/family_members/family_mother.png', sound:'sounds/family_members/mother.wav'),
  FamilyMembers(enName: 'Grandfather', jpName: 'Ojīsan', image: 'assets/images/family_members/family_grandfather.png', sound:'sounds/family_members/grand father.wav'),
  FamilyMembers(enName: 'Grandmother', jpName: 'sobo', image: 'assets/images/family_members/family_grandmother.png', sound:'sounds/family_members/grand mother.wav'),
  FamilyMembers(enName: 'Older Brother', jpName: 'Oniisan', image: 'assets/images/family_members/family_older_brother.png', sound:'sounds/family_members/older bother.wav'),
  FamilyMembers(enName: 'Older Sister', jpName: 'ane', image: 'assets/images/family_members/family_older_sister.png', sound:'sounds/family_members/older sister.wav'),
  FamilyMembers(enName: 'Younger Brother', jpName: 'otouto', image: 'assets/images/family_members/family_younger_brother.png', sound:'sounds/family_members/younger brohter.wav'),
  FamilyMembers(enName: 'Younger Sister', jpName: 'imouto', image: 'assets/images/family_members/family_younger_sister.png', sound:'sounds/family_members/younger sister.wav'),
  FamilyMembers(enName: 'Son', jpName: 'musuko', image: 'assets/images/family_members/family_son.png', sound:'sounds/family_members/son.wav'),
  FamilyMembers(enName: 'Daughter', jpName: 'musume', image: 'assets/images/family_members/family_daughter.png', sound:'sounds/family_members/daughter.wav'),

];