import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_list.dart';
import'package:todolist/screens/add_task_screen.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);
 // Widget buildBottomSheet(BuildContext context) => AddtaskScreen();
  @override
  Widget build(BuildContext context) {
       
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue[300],
        onPressed: (){
         showModalBottomSheet(
          context: context ,
         // builder:buildBottomSheet 
         //Passing an unanimous function to builder argument
         builder:(context)=> AddTaskScreen()
         );
        },
        child:Icon(Icons.add)
        ),
      body:SafeArea(
        child: Column(
          children: [
           
            Container(
              padding: EdgeInsets.only(top:60.0,left:30.0,right:30.0,bottom:30.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    
                   child:
                   Icon(
                    Icons.list,
                    size: 30.0,
                    ),
                    backgroundColor: Colors.white,
                    radius:30.0,
                   ),
                      Text('Todoey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight:FontWeight.w600,
                      ),
                      ),
                      Text('12 Tasks',
                      style:TextStyle(color:Colors.white,
                      fontSize: 18)
                      ),
            
                    ]
                  )

            ),
            
              Expanded(
                    child: Container(
                    //  color: Colors.white,
                      height:300.0,
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only
                        (
                          topLeft:Radius.circular(20.0) ,
                        topRight:Radius.circular(20)
                        )
                      ),
                          child:   TaskList(),
          
                  ), 
          
        )
  ]
                   
         ), 
      )
        );
      
  }
}


