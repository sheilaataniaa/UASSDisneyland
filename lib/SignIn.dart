import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Transisi3.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn ({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF71BBE4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 62),
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transisi3()),
                );
              },
            ),
            SizedBox(height: 30),
            Text(
              'Sign in now',
              style: GoogleFonts.rosarivo(
                textStyle: TextStyle(
                  color: Color(0xFF1B1E28),
                  fontSize: 26,
                ),
              ),
            ),
            Text(
              'Please sign in to continue our app',
              style: GoogleFonts.rosarivo(
                textStyle: TextStyle(
                  color: Color(0xFF7C838D),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 50),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF6F6F8),
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF6F6F8),
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF023141),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: GoogleFonts.rosarivo(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: GoogleFonts.rosarivo(
                      textStyle: TextStyle(
                        color: Color(0xFF707B81),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.rosarivo(
                        textStyle: TextStyle(
                          color: Color(0xFFFF7029),
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
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
