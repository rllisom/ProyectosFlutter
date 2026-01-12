import 'package:flutter/material.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(239, 225, 37, 8),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/path_logo.png',
                    width: 220,
                    height: 130,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Beautiful, Private sharing',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 239, 145, 139),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
            SizedBox(
              width: 230,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: const Color.fromARGB(239, 225, 37, 8),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Already have a Path account?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 239, 145, 139),
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          side: BorderSide(color: const Color.fromARGB(255, 239, 145, 139), width: 1),
                          backgroundColor: const Color.fromARGB(239, 225, 37, 8)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Log In',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 239, 145, 139),
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                                ),),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("By using Path, you agree to Path's",style: TextStyle(color:  const Color.fromARGB(255, 239, 145, 139)),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Terms of Use ",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                      Text('and ',style: TextStyle(color:  const Color.fromARGB(255, 239, 145, 139)),),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
