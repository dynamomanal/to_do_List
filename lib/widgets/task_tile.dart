import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_list.dart';



  class TaskTile extends StatefulWidget {
    
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
 bool isChecked =false;

  void toggleCheckedState (bool checkboxState){
    setState(() {
      isChecked = checkboxState ;
    });
   

  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
                      title:Text('1 Egg',
                      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null ),
                      
                      ),
                      selectedColor:Colors.cyan,
                      trailing:TaskCheckbox(
                      isChecked:isChecked,
                      checkboxCallback:toggleCheckedState,
                      ),
                      );
  }
}

class TaskCheckbox extends StatelessWidget {
 final bool isChecked;

 final Function checkboxCallback;
 TaskCheckbox({required this.isChecked, required this.checkboxCallback});



  @override
  Widget build(BuildContext context) {
   
    return  Checkbox(
      value: isChecked,
      onChanged: () {},
      );
    //
    
    
                        //  setState(()
                        //  {
                        //  isChecked = newValue!;
                        // isChecked = true; //this will make it true but when we click again it doesn't gets uncheck
                          
                           
                         
                       

                         }
}

