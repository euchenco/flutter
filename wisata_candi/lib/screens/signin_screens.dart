import 'package:flutter/material.dart';

class SigninScreens extends StatefulWidget {
  SigninScreens({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';
  bool _isSignedIn = false;
  bool _obscurePassword = true;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Sign In'),),
        body: Center(
          child : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "Nama Pengguna",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Kata Sandi",
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: (){
                      setState((){
                        _obscurePassword = !_obscurePassword;
                      });
                    }, 
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off
                        : Icons.visibility,
                    ),),
                  ),
                  obscureText: _obscurePassword,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Sign in')),
                SizedBox(height: 10),
                TextButton(onPressed: (){}, 
                child: Text('Belum punya akun? Daftar disini')),
                
              ],
              )),
        ),
      ),
      )
      );
    }
}