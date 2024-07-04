import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple[600],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
          child: Column(
            children: <Widget>[
              Text(
                'Experiment!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 24.5,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30.0),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      maxLength: 40,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide an Email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please provide a password';
                        }
                        if (value.length < 8) {
                          return 'Password should be at least 8 characters long';
                        }
                        if (value.length > 20) {
                          return 'Password must be 20 characters long only';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          print(email);
                          print(password);
                          Navigator.pushReplacementNamed(context, '/');
                          // Implement your login logic here
                        }
                      },
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple[600],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'or Login with',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement your Google login logic here
                      },
                      child: Text(' Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple[600],
                      ),
                    ),
                    SizedBox(height: 12.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement your Facebook login logic here
                      },
                      child: Text(' Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.deepPurple[600],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Dont have an account?',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        InkWell(
                          child: Text(
                            'Signup Here',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onTap: ()=> Navigator.popAndPushNamed(context, '/signup'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
