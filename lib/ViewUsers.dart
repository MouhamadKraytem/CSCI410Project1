import 'package:flutter/material.dart';
import 'AllUsers.dart';
import 'User.dart';
class ViewUsers extends StatefulWidget {
  ViewUsers({Key ?key}) : super(key: key);

  @override
  _ViewUsersState createState() {
    return _ViewUsersState();
  }
}

class _ViewUsersState extends State<ViewUsers> {

  @override
  void initState() {
    super.initState();
  }
  int t= 0;
  void getTotal(){
    setState(() {
      t=0;
      for(int i =0 ; i < allUsers.length ; i++){
        t += allUsers[i].total;
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
  }
  void delete(User u){
    setState(() {
      allUsers.remove(u);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Total $t \$"),
            ElevatedButton(onPressed: (){
              getTotal();
            },
                child: Icon(Icons.remove_red_eye_outlined))
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(size: 20),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: ListView.builder(itemBuilder: (b, position){
          String u = allUsers[position].toString();

          return Container(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(children: [
                  Icon(Icons.paid_outlined ),
                  Text(u),
                  SizedBox(width: 30,),
                  ElevatedButton(onPressed: (){

                    delete(allUsers[position]);
                    getTotal();
                  }, child: Text("delete"))
                ],
                ),

            ],
            ),
          );
        },itemCount: allUsers.length,),
      color: Colors.black26,
      ),
    );
  }
}