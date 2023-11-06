void main(){
  //assigment_1
  var bird = Bird();
  bird.fly();

  //assigment_2
  var fish = Fish();
  fist.swim();
  
  //assigment_3
  var dog = Dog();
  fist.run();
  
  //assigment_4
  var monkey = Monkey();
  fist.climb();

  //assigment_5
  var kangaroo = Kangaroo();
  kangaroo.jump();
}

//assigment_1
mixin Fly {
  void fly(){
    print("Flying...");
  }
}

class Bird with Fly {}

//assigment_2
mixin Swim {
  void swim(){
    print("Swimming...");
  }
}

class Fish with Swim {}

//assigment_3
mixin Run {
  void run(){
    print("Running...");
  }
}

class Dog with Run {}

//assigment_4
mixin Climb {
  void climb(){
    print("Climbing...");
  }
}

class Monkey with Climb {}

//assigment_5
mixin Jump {
  void jump(){
    print("Jumping...");
  }
}

class Kangaroo with Jump {}
