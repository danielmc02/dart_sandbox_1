import 'dart:async';

int calculate() {
  return 6 * 7;
}


class Kid{
  final int age;
  final String name;
  Kid( this.age,  this.name);

  void sendRequest() async
  {
    String command = await makeFriendRequest();
    print("Congratulations : $command");
  }

  Future<String> makeFriendRequest()
  {
    Future<String> data = Future.delayed(Duration(seconds: 4),() {
      return "Sent sucesffuly";
    });
    return data;
  }

  void KidInfo()
  {
    print("Hi, my name is $name and I am $age years old\n");
  }

}

void main()
{
  print("start");

  var Daniel = Kid(19, "Daniel");
  Daniel.KidInfo();
  print("Request made now\n");
  Daniel.sendRequest();
  print("DONE");
}
