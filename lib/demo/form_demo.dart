import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [RegisterForm()],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  void submitRegisterForm() {
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();

      debugPrint('username:$username');
      debugPrint('password:$password');
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Registering...'))
      );
    }else{
      setState(() {
        autovalidateMode=AutovalidateMode.always;
      });
    }

  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                helperText: '',
              ),
              onSaved: (value) {
                username = value;
              },
              validator: validateUsername,
              autovalidateMode: autovalidateMode,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                helperText: '',
              ),
              onSaved: (value) {
                password = value;
              },
              validator: validatePassword,
              autovalidateMode: autovalidateMode,
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: submitRegisterForm),
            )
          ],
        ));
  }
}

class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // textEditingController.text='hi';
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint('input:$value');
      // },
      onSubmitted: (value) {
        debugPrint('submit:$value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title',
        // border: InputBorder.none,
        // border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
