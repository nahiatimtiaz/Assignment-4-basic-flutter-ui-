import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YAY! ><", 
        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ), 
        backgroundColor: const Color.fromARGB(255, 110, 157, 115), 
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true, 
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout), color: Colors.white,)]
        ),
      floatingActionButton: FloatingActionButton(backgroundColor: const Color.fromARGB(255, 130, 180, 135),
        onPressed: (){}, 
        child: Icon(Icons.add, color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      drawer: NavigationDrawer( backgroundColor: const Color.fromARGB(255, 234, 244, 211),
        children: [DrawerHeader(child: UserAccountsDrawerHeader(decoration: BoxDecoration(color: const Color.fromARGB(255, 94, 123, 95)),accountName: Text("Nahiat Imtiaz"), accountEmail: Text("nahiatimtiaz@gmail.com"),), ),
                   ListTile(onTap: (){}, leading: Icon(Icons.person),iconColor: const Color.fromARGB(255, 94, 123, 95), title: Text("User Profile"), textColor: const Color.fromARGB(255, 94, 123, 95)),
                   ListTile(onTap: (){}, leading: Icon(Icons.home),iconColor: const Color.fromARGB(255, 94, 123, 95), title: Text("Home"), textColor: const Color.fromARGB(255, 94, 123, 95),)
                  ]),
      body: Center(
        child: Image.asset("assets/cats.jpg", width: 500, alignment: AlignmentGeometry.center,), 
    )
    );
  }
}