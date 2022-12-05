import 'package:flutter/material.dart';
import 'package:starter/ui/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.png'),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 360,
              height: 42,
              child: ElevatedButton(
                  child: const Text('SIGN IN', style: TextStyle(),),
                  onPressed: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                  style: ElevatedButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      primary: Color.fromARGB(255, 0, 198, 208),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ?',
                  style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w700),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    ' Register Now!',
                    style: TextStyle(
                        color: Colors.blue, fontFamily: 'Roboto',fontWeight: FontWeight.w700),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
