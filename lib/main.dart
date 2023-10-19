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
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(400, 40),
      backgroundColor: Colors.lightBlueAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)),

      )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack'),
        actions: [
          IconButton(onPressed: (){Shrabonsnack("Hi I am Shrabon", context);}, icon:Icon( Icons.notifications))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [ Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
        ElevatedButton(onPressed: (){Shrabonsnack('Nice To Meet You', context);}, child: Text('Elevated Button',style: TextStyle(fontSize: 20),),style: buttonStyle,),

        ] )
        ],
      ),



    );

  }

}