
import 'package:alzheimerapp/picturematch.dart';
import 'package:alzheimerapp/quiz2.dart';
import 'package:flutter/material.dart';
import 'package:alzheimerapp/quiz1intro.dart';
import 'package:alzheimerapp/main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        
        appBar: AppBar(
        
      leading: IconButton(
        icon: Icon(
           Icons.arrow_left, 
        ),
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return   MyApp();
                      }));
        }),
     
  
 
        title: Center
        (child: Text('SELECT A GAME'),
              ),
             
        backgroundColor: Colors.teal,),
        
        
        body:Center(
          
          child: SingleChildScrollView(
            
           
                    child: Column(
  children: [
             
   
              new Padding(padding: EdgeInsets.all(20.0)),
               Container(
               // padding: const EdgeInsets.all(20.0),
                width:300.0,
                height:200.0,
                
                decoration: BoxDecoration(
                

                   
                    image: DecorationImage(
                     image: AssetImage("assests/memorymaster.jpg"),
                    

                    
                  )
                    ),
                    
                
                child:GestureDetector(
            onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Intro();
                      }));
                    },
            
  ),
   
            ),
            
            //child: Text("Geeks",style: TextStyle(color:Colors.white,fontSize:25),),
            
            
   new Padding(padding: EdgeInsets.all(20.0)),          
            Container(
              
              padding: const EdgeInsets.all(20.0),
              width:300.0,
              height:200.0,

              decoration: BoxDecoration(
               
                 image: DecorationImage(
                     image: AssetImage("assests/color-quiz.jpg"),
                 

                    
                  )
                  
                  
              ),
              child :GestureDetector(
            onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  Quiz2();
                    }));
                  },
              
  ),
   
              ),
                 new Padding(padding: EdgeInsets.all(20.0)),
            Container(
              padding: const EdgeInsets.all(20.0),
              width:300.0,
              height:200.0,
              
              decoration: BoxDecoration(
                  
                    image: DecorationImage(
                     image: AssetImage("assests/picturematch.png"),
                 

                    
                  )
                   
                  
              ),
              child :GestureDetector(
            onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return  Picture();
                    }));
                  },
            
  ),
   
            ),
  ],
),
    ),
        )));
    
    
      
    
  
}

  

}