void main(){
  //problem9_1
//   List<int> res = problem9_1(10);
//   for(int n in res){
//     print(n);
//   }
  
  //problem9_2
//   print(problem9_2(10));
  
  //problem10
  problem11("Hello_10");
}


class Person {
  String name;
  String email;
  int age;
  Person({required this.name, required this.email, required this.age});
}

void problem1(){
  var person = Person(name: "Najimov", email: "najimovm11@gmail.com", age: 20);
  print("Data of Person: ${person.name}, ${person.email}, ${person.age}");
}

void problem2(int num){
  if(num%2==0){
    print("EVEN");
  }else{
    print("ODD");
  }
}

void problem3(){
  for (int i = 1; i <= 100; i++) {
        if(i%2==0){
          print("EVEN");
        }else{
          print("ODD");
        }
  }
}

void problem4(List<int> myList){
  for(int i=0; i<myList.length; i++){
    int temp = myList[i];
    myList[i]=temp*temp;
  }
  print("List: ");
  for(int number in myList){
    print(" ${number}");
  }
}

void problem5(int num){
  print("Divisors of ${num} :");
  for(int i=1; i<=num; i++){
    if(num%i==0){
      print(" ${i}");
    }
  }
}

void problem6(List<int> a, List<int> b){
  List<int> c = [];
  for(int i=0; i<a.length; i++){
    for(int j=0; j<b.length; j++){
      if(a[i]==b[j]){
        c.add(a[i]);
        break;
      }else{
      }
    }
  }
  print("Matches int between a and b lists");
  for(int number in c){
    print(" ${number}");
  }
  
}

void problem7(int n){
  int count=0;
  if(n<=1){
    print("NOT PRIME");
  }else{
    for(int i=2;i<n;i++){
    if(n%i==0){
      count++;
    }
  }
  if(count>0){
    print("NOT PRIME");  }
  else{
    print("PRIME");
  }
  }
}

List<int> problem8(List<int> a){
  Set<int> b = {};
  for(int num in a){
    b.add(num);
  }
  return b.toList();
}

List<int> problem9_1(int k){
  List<int> fiboList = [];
  int f1=0, f2=1;
  int temp=0;
  int count=3;
  fiboList.add(f1);
  fiboList.add(f2);
  while(count <= k){
    temp = f1+f2;
    fiboList.add(temp);
    f1=f2;
    f2=temp;
    count++;
  }
  return fiboList;
}

int problem9_2(int k){
  if(k<=1){
    return k;
  }
  return problem9_2(k-1)+problem9_2(k-2);
}

void problem11(String str){
  if(str.length<=5){
    print("Week");
  }else if(str.contains(new RegExp('^[a-zA-Z0-9_]*'))){
    print("Strong");
  }else if(str.contains(new RegExp(r'[0-9]'))){
    print("Normal");
  }
}









