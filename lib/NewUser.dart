import 'package:flutter/material.dart';
import 'User.dart';
import 'AllUsers.dart';
import 'ViewUsers.dart';
import 'MainPage.dart';
class NewUser extends StatefulWidget {
  NewUser({Key ?key}) : super(key: key);

  @override
  _NewUserState createState() {
    return _NewUserState();
  }
}
class _NewUserState extends State<NewUser> {
  TextEditingController newUser = TextEditingController();
  TextEditingController total = TextEditingController();

  void addUser(){
    String user = newUser.text;
    int t = int.parse(total.text);
     if(user.isNotEmpty){
       allUsers.add(User(user , t));
       newUser.text = "";
       total.text= "";

     }

  }

  void emptyUsers(){
    showDialog(context: context, builder: (c){
      return AlertDialog(
        title: Text("Alert "),
        content: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("no custumer"),

            ],
          ),
        ),
      );
    });
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text( "New Custumer"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(

        child: Column(

            children: [

              SizedBox(height: 50,),
              TextField(
                controller: newUser,
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter Custumer Name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    iconColor: Colors.green,
                    icon: Icon(Icons.person_2),
                  ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: total,
                style: TextStyle(
                  color: Colors.indigo,
                ),
                decoration: InputDecoration(
                  labelText: "Enter bill",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  iconColor: Colors.green,
                  icon: Icon(Icons.person_2),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton.icon(onPressed: (){
                  addUser();
                }, icon: Icon(Icons.add), label: Text("Add Custumer")),
              SizedBox(height: 30,),
              ElevatedButton.icon(onPressed: (){
                if(allUsers.length == 0){
                 emptyUsers();
                }else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return ViewUsers();
                  }));
                }

              }, icon: Icon(Icons.add), label: Text("View All Custumer")),

            ],
        ),
      ),
    );
  }
}