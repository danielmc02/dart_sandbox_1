import 'dart:async';

class FirebaseAccount {
  final String name;
  final int age;
  final bool isOlderThan18;

  FirebaseAccount(this.name, this.age, this.isOlderThan18);

  void getAcountInfo() async {
    String ans = await _getAcountInfo(name, age, isOlderThan18);
    print(ans);
  }

  Future<String> _getAcountInfo(String name, int age, bool is18) async {
    String data = await Future.delayed(
      Duration(seconds: 10),
      () {
        return "Hello $name, your are $age years old. Access to explicit content is $is18 \n";
      },
    );
    return data;
  }
}

void main() {
  //lets make a simulation of firebase auth
  print("Start\n");
  FirebaseAccount Daniel = FirebaseAccount("Daniel", 19, true);
  Daniel.getAcountInfo();
  print("end\n");
}
