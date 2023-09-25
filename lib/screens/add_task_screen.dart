import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
     
      color:Color(0xff757575),
      child: Container(
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)

          ),
        ),
        child: Center(
         
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
         
            children: [ 
            
               Text(
                'Add Task',
              textAlign: TextAlign.center,
               style: TextStyle(
                fontSize: 30.0, 
                color:Colors.lightBlueAccent
                ),
                ),
               TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed:(){},
               child: Text('Add')
               )
            ],
        
          ),
        )
      )
    );
  }
}