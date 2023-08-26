import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assests/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: " Enter User Name",
                            labelText: "User Name"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: " Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                         Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Log in",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          /*borderRadius:
                                BorderRadius.circular(changeButton ? 20 : 8)*/
                        ),
                      ),
                    ),
                    /* ElevatedButton(
                      child: Text("Log In"),
                      style: TextButton.styleFrom(minimumSize: Size(90, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    )*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
