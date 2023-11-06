void main(){
  //assigment_1
  var car = Car(maxSpeed: 200);
  print("The maximum speed of this car is ${car.speed()}");
  var bike = Bike(maxSpeed: 150);
  print("The speed of bike is ${bike.speed()}");

  //assigment_2
  var guitar = Guitar(name: "Blackie");
  print("This is coolest guitar and its name ${guitar.play()}");
  var piano = Piano(name: "Grand");
  print("The best type of piano is ${piano.play()}");

  //assigment_3
  var laptop = Laptop(status: "MacBro_15");
  print(laptop.powerOn());
  var smartphone = Smartphone(status: "NothingPhone_X");
  print(smartphone.powerOn());

  //assigment_4
  var table = Table(d: 10);
  print("The dimention of the table is ${table.dimensions()}");
  var chair = Chair(d: 15);
  print("The dimention of the cair is ${chair.dimensions()}");

  //assigment_5
  var refrigerator = Refrigerator(d: 10);
  print("The power usage of the refrigerator is ${refrigerator.powerUsage()}");
  var oven = Oven(d: 15);
  print("The power usage of the oven is ${oven.powerUsage()}");
}

//assigment_1
abstract class Vehicle{
  double speed();
}
class Car extends Vehicle {
  double maxSpeed;
  
  Car({required this.maxSpeed});
  
  @override
  double speed(){
    return maxSpeed;
  }
}
class Bike extends Vehicle {
  double maxSpeed;
  
  Bike({required this.maxSpeed});
  
  @override
  double speed(){
    return maxSpeed;
  }
}

//assigment_2
abstract class Instrument{
  String play();
}
class Guitar extends Instrument {
  String name; 
  Guitar({required this.name});
  @override
  String play(){
    return name;
  }
}
class Piano extends Instrument {
  String name; 
  Piano({required this.name});
  @override
  String play(){
    return name;
  }
}

//assigment_3
abstract class Device{
  String powerOn();
}
class Laptop extends Device {
  String status; 
  Laptop({required this.status});
  @override
  String powerOn(){
    return "I can power on the ${status} laptop";
  }
}
class Smartphone extends Device {
  String status; 
  Smartphone({required this.status});
  @override
  String powerOn(){
    return "I can power on your ${status} smartphone";
  }
}

//assigment_4
abstract class Furniture {
  double dimensions();
}
class Table extends Furniture {
  double d;
  Table({required this.d}); 
  @override
  double dimensions(){
    return d;
  }
}
class Chair extends Furniture {
  double d;
  Chair({required this.d});
  @override
  double dimensions(){
    return d;
  }
}

//assigment_5
abstract class Appliance {
  double powerUsage();
}
class Refrigerator extends Appliance {
  double d;
  Refrigerator({required this.d}); 
  @override
  double powerUsage(){
    return d;
  }
}
class Oven extends Appliance {
  double d;
  Oven({required this.d});
  @override
  double powerUsage(){
    return d;
  }
}
