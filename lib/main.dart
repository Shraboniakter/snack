import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(snack());
}
class snack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:snackbar(),
      debugShowCheckedModeBanner: false,


    );
  }

}

class snackbar extends StatelessWidget{
  Shrabonsnack(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack'),
        actions: [
          IconButton(onPressed: (){Shrabonsnack("Hi I am Shrabon", context);}, icon:Icon( Icons.notifications))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation:0,
        child: Icon(Icons.add),
        onPressed: () {
          Shrabonsnack('Add New Data', context);
        },),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add_call),label:'Call'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label:'Profile'),
        ],
        onTap: (int index){
          if(index==0){
            Shrabonsnack('Please Call ', context);
          }
          if(index==1){
            Shrabonsnack('My Home ', context);

          }
          if(index==2){
            Shrabonsnack('my profile', context);

          }
        },
      ),
      endDrawer: Drawer(child:
      ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.all(0),
          child:UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text('shrabon'),
            accountEmail: Text('shrabonbhuiyan708@gmail.com'),
            currentAccountPicture: Image.network('https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png'),
          ),

        ),
        ListTile(leading:Icon(Icons.home),title: Text('Home'),
          onTap: (){print('Go to Home');Shrabonsnack('Go to Home', context);

          },
          onLongPress: (){
            Shrabonsnack('Error', context);
          },

        ),
        ListTile(leading:Icon(Icons.contact_page_outlined),title: Text('Contact'),),
        ListTile(leading:Icon(Icons.account_balance_rounded),title: Text('Account'),),
        ListTile(leading:Icon(Icons.balance),title: Text('Balance'),),
        ListTile(leading:Icon(Icons.settings),title: Text('Setting'),),
        ListTile(leading:Icon(Icons.login),title: Text('Loging'),),




      ],
      ),
      ),
      drawer: Drawer(child:
      ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.all(0),
          child:UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text('shrabon'),
            accountEmail: Text('shrabonbhuiyan708@gmail.com'),
            currentAccountPicture: Image.network('https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png'),
          ),

        ),
        ListTile(leading:Icon(Icons.home),title: Text('Home'),
          onTap: (){print('Go to Home');Shrabonsnack('Go to Home', context);

          },
          onLongPress: (){
            Shrabonsnack('Error', context);
          },

        ),
        ListTile(leading:Icon(Icons.contact_page_outlined),title: Text('Contact'),),
        ListTile(leading:Icon(Icons.account_balance_rounded),title: Text('Account'),),
        ListTile(leading:Icon(Icons.balance),title: Text('Balance'),),
        ListTile(leading:Icon(Icons.settings),title: Text('Setting'),),
        ListTile(leading:Icon(Icons.login),title: Text('Loging'),),




      ],
      ),
      ),


    );

  }

}