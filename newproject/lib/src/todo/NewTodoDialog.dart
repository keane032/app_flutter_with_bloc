import 'package:flutter/material.dart';
import 'package:newproject/src/todo/todo.dart';


class NewTodoDialog extends StatelessWidget {

  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
           title: Text('New todo'),
           content: TextField(controller: controller,autofocus: true,),
           actions: <Widget>[
             FlatButton(
               child: Text('Cancel'),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
             FlatButton(
               child: Text('Adicionar'),
               onPressed:(){
                   final todo = new Todo(title: controller.value.text);
                   controller.clear();
                  if (todo != null) {
                    // setState(() {
                    //   todos.add(todo);
                    //  });
                   }
                  Navigator.of(context).pop();
               }
              )
           ],
         );;
  }

}