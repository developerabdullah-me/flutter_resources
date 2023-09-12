import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomeActivity(),);
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

// /////My Alert Dialog ///////

 MyAlertDialog(context){
     return showDialog(context: context,
         builder: (BuildContext context){
       return Expanded(child: AlertDialog(
         title: Text("Alart"),
         content: Text("do you want to delete now"),
         actions: [
           ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Yes")),
           ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no")),
         ],
       ),);
         });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("InvenTory"),
      ),
      drawer: Drawer(),

      // BottomNavigationBar
  bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label:"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:"Profile"),
          ],
      ),
      // Body
      body:Scrollbar(
        thickness: 20,
        radius: Radius.circular(10),
        child:GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,),
        children: [
        
          ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text("Click Me")),
    
                  // ///////TextFild //////////


       Padding(padding: EdgeInsets.all(20),
         child:  TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             labelText: "first Name",
           ),
         ),
       ),

        ],
        )),
    );
    
  }
}