void main() {
  Human tanner = Human(startingHeight: 15);

  print(tanner.height);

  tanner.talk('Why is the sky blue');
  
  
  Human jack = Human(startingHeight: 16);

  print(jack.height);

  jack.talk('Why is the sky blue');
  
  
}

class Human {
  late double height;
  int age = 0;

  Human({required double startingHeight}) {
    height = startingHeight;
  }

  void talk(String whatToSay) {
    print(whatToSay);
  }
}
