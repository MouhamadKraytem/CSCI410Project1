class User{
  String name;
  int total;

  List <int>bills = [];
  User(this.name , this.total);

  @override
  String toString(){
    return "$name , total : $total";
  }
}