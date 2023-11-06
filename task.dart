void main(){
  //problem_1
  problem1();

   //problem_2
  problem2(5);

  //problem_3
  problem3();

  //problem_4
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  problem4(a);

  //problem_5
  problem5(10);

  //problem_6
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  problem6(a,b);

  //problem_7
  problem7(17);

  //problem_8
  List<int> a = [1, 1, 2, 3, 5, 8, 3, 21, 34, 55, 8];
  print(problem8(a));

  //problem_9.1
  List<int> res = problem9_1(10);
  for(int n in res){
    print(n);
  }
  
  //problem_9.2
  print(fibonacci(7));

  //problem_10
  print(fibonacci10(7));

  //problem_11
  problem11("Hello_10");

  //problem_12
  int row=3;
  int col=3;
  problem12(row, col);
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

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

int fibonacci10(int n) {
  if (memo.containsKey(n)) {
    return memo[n];
  }
  int result;
  if (n <= 1) {
    result = n;
  } else {
    result = fibonacci10(n - 1) + fibonacci10(n - 2);
  }
  memo[n] = result;
  return result;
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

void problem12(int row, int col){
  row+=(row+1);
  col+=(col+1);
  List<List<String>> matrix = List.generate(row, (r) => List<String>.filled(col, ''), growable: false);
  for(int i = 0; i<row; i++){
    for(int j=0; j<col; j++){
      if(i%2==0){
        if(j%2!=0){
          matrix[i][j]="_";
        }
      }else{
        if(j%2==0){
          matrix[i][j]="|";
        }
      }
    }
  }
  for(List temp in matrix){
    print(temp.toString());
  }
}
