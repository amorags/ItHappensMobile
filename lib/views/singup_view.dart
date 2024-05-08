import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_happens/bLoC/ithappens_bloc.dart'; // Import your bloc
import 'package:it_happens/models/events.dart'; // Import your events

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SignupForm(),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _userType_idController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _firstnameController.dispose();
    _lastnameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _userType_idController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a username';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _firstnameController,
            decoration: InputDecoration(
              labelText: 'Firstname',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a firstname';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _lastnameController,
            decoration: InputDecoration(
              labelText: 'Lastname',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a lastname';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an email';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _phoneController,
            decoration: InputDecoration(
              labelText: 'Phone',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
              contentPadding: EdgeInsets.all(16.0),
            ),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a phone number';
              }
              if (value.length != 8) {
                return 'Phone number must be 8 digits';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Get text input from controllers
                String username = _usernameController.text;
                String firstname = _firstnameController.text;
                String lastname = _lastnameController.text;
                String password = _passwordController.text;
                String email = _emailController.text;
                String phone = _phoneController.text;
                int userTyper_id = 1;

                // Log the data being sent to the backend
                print('Sending signup request: '
                    'username=$username, firstname=$firstname, lastname=$lastname, '
                    'password=$password, email=$email, phone=$phone');

                // Create signup event and add it to the bloc using context.read<ItHappensBloc>()
                context.read<ItHappensBloc>().add(ClientWantsToSignup(
                  eventType: ClientWantsToSignup.name,
                  username: username,
                  firstname: firstname,
                  lastname: lastname,
                  password: password,
                  email: email,
                  phone: int.parse(phone), // Parse phone string to integer
                  userType_id: userTyper_id,
                ));
              }
            },
            child: Text('Signup'),
          ),
        ],
      ),
    );
  }
}

