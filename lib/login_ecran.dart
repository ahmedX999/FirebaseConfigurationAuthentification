import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginEcran extends StatelessWidget {
  const LoginEcran({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erreur: ${snapshot.error}');
        } else {
          final user = snapshot.data;

          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (user != null)
                  Column(
                    children: [
                      Text(
                        'Email: ${user.email ?? "Non connecté"}',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.signOut();
                        },
                        child: Text('Se déconnecter'),
                      ),
                    ],
                  ),
                if (user == null)
                  Column(
                    children: [
                      Text(
                        'Connectez-vous',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 16.0),
                      _buildLoginForm(),
                    ],
                  ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget _buildLoginForm() {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Column(
      children: [
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextFormField(
          controller: passwordController,
          decoration: InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () async {
            try {
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailController.text,
                password: passwordController.text,
              );
            } catch (e) {
              print('Login error: $e');
            }
          },
          child: Text('Se connecter'),
        ),
      ],
    );
  }
}