void main(){
  //assigment_1
  var animal = Animal(name: "Capybara", age: 13);
  animal.describe();

  //assigment_2
  var car = Car(make: "Unnamed", model: "LTS", year: 1910);
  car.describe();

  //assigment_3
  var book = Book(title: "Design Patter", author: "Erich Gamma", pages: 634);
  book.describe();

  //assigment_4
  var movie = Movie(title: "Super 30", director: "Anish Praddep", runtime: 2.3);
  movie.describe();

  //assigment_5
  var song = Song(title: "It's Okey", artist: "German guy", duration: 4.3);
  song.describe();
}

//assigment_1
class Animal {
  String name;
  int age;
  Animal({required this.name, required this.age});
  void describe(){
    print("Name: ${name}");
    print("Age: ${age}");
  }
}

//assigment_2
class Car {
  String make;
  String model;
  int year;
  
  Car({required this.make, required this.model, required this.year});
  
  void describe(){
    print("This is useless data regarding car");
    print("make: ${make}");
    print("model: ${model}");
    print("year: ${year}");
  }
}

//asigment_3
class Book {
  String title;
  String author;
  int pages;
  
  Book({required this.title, required this.author, required this.pages});
  
  void describe(){
    print("make: ${title}");
    print("model: ${author}");
    print("year: ${pages}");
  }
}

//assigment_4
class Movie {
  String title;
  String director;
  double runtime;
  
  Movie({required this.title, required this.director, required this.runtime});
  
  void describe(){
    print("Title: ${title}");
    print("Director: ${director}");
    print("Runtime: ${runtime}");
  }
}

//assigment_5
class Song {
  String title;
  String artist;
  double duration;
  
  Song({required this.title, required this.artist, required this.duration});
  
  void describe(){
    print("Title: ${title}");
    print("Artist: ${artist}");
    print("Duration: ${duration}");
  }
}
