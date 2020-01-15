import 'package:flutter/material.dart';
import 'package:newproject/src/todo/todo_list.dart';

class Login_screen extends StatefulWidget {
  @override
  _Login_screen createState() => _Login_screen();
}

class _Login_screen extends State<Login_screen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passContreoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(controller: emailController,),
          TextFormField(controller: passContreoller,obscureText: true,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                navigateToSubPage(context);
                // Validate returns true if the form is valid, or false
                // otherwise.
                // if (_formKey.currentState.validate()) {
                //   // If the form is valid, display a Snackbar.
                //   Scaffold.of(context)
                //       .showSnackBar(SnackBar(content: Text(emailController.value.text+passContreoller.value.text)));
                // }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TodoList() ));
  }
}
