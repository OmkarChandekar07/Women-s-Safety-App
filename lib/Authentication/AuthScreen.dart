import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _firebase = FirebaseAuth.instance;

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  final _form = GlobalKey<FormState>();
  var _isLogin = true;
  var _enterEmail = "";
  var _enterPassword = "";

  Future<void> _submit() async {
    final isvalid = _form.currentState!.validate();

    if (!isvalid) {
      return;
    }
    _form.currentState!.save();

    try {
      if (_isLogin) {
        final UserCredentials = await _firebase.signInWithEmailAndPassword(
            email: _enterEmail, password: _enterPassword);
        
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enterEmail, password: _enterPassword);
        
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == "email-alredy-exist") {}
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? 'Authentication faild')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 17, 177),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("asset/Imges/wlogo.jpg"),
                radius: 150,
              ),
              Card(
                margin: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                        key: _form,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(labelText: "Email"),
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              validator: (value) {
                                if (value == null ||
                                    value.trim().isEmpty ||
                                    !value.contains('@')) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              onSaved: (Value) {
                                _enterEmail = Value!;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Password",
                                ),
                                obscureText: true,
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                                onSaved: (Value) {
                                  _enterPassword = Value!;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            ElevatedButton(
                              onPressed: _submit,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              child: Text(
                                _isLogin ? "Login" : "SignUp",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isLogin = !_isLogin;
                                  });
                                },
                                child: Text(
                                  _isLogin
                                      ? "Create an Account"
                                      : "Already Have a Account",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ))
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
