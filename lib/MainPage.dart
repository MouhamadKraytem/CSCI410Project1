import 'package:flutter/material.dart';
import 'package:mouhamad_kraytem_project/NewUser.dart';
import 'AllUsers.dart';
import 'ViewUsers.dart';
import 'NewUser.dart';
class MainPage extends StatefulWidget {
  MainPage({Key ? key}) : super(key: key);

  @override
  _MainPageState createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  
  void displayUser(){
    Navigator.of(context).push(MaterialPageRoute(builder: (c){
      return ViewUsers();
    }));
  }


  void emptyUsers(){
    showDialog(context: context, builder: (c){
      return AlertDialog(
        title: Text("Alert "),
        content: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("no users"),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (c){
                  return NewUser();
                }));
              }, child: Icon(Icons.add),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),

                ),
              )
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

    return Scaffold(
      appBar: AppBar(
        title:Text("Seelfa") ,
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
       body: Center(
       child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Column(
             children: [
               Text(
                   "View All Custumers",
                 style: TextStyle(
                   fontSize: 25,
                 ),
               ),
               ElevatedButton(onPressed: (){
                 if(allUsers.length> 0){
                   Navigator.of(context).push(MaterialPageRoute(builder: (c){
                     return ViewUsers();
                   }));
                 }else{
                   emptyUsers();
                 }
               }, child: Icon(Icons.account_circle) , ),
             ],
           ),

           Column(
             children: [
               Text(
               "Add New Custumers",
               style: TextStyle(
                 fontSize: 25,
               ),
               ),
               FloatingActionButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (c){

                   return NewUser();
                 }));

               },child: Icon(Icons.add) ,
               ) ,
             ],
           )



         ],
       ),
       )
    );
  }
}