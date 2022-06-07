import 'package:daiwa_mobile/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String _title = 'ADMIN LOGIN';
  bool _loginLoading = false;

  _login() {
    setState(() {
      _loginLoading = true;
    });

    Future.delayed(
      const Duration(seconds: 5),
      () => {setState(() => _loginLoading = false)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login-bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 300.0,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 60.0,
                  ),
                ],
              ),
              child: Card(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Lato-Bold',
                        ),
                        _title,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                        child: Column(
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Admin ID",
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Password",
                                ),
                                obscureText: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Button(
                        text: 'LOGIN',
                        onPressed: _login,
                        isLoading: _loginLoading,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
