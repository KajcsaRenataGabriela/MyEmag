import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _onNext() {
    final String email = _email.text;
    final String password = _password.text;

    if (!email.contains('@')) {
      return;
    }
    if (password.length < 6) {
      return;
    }
    StoreProvider.of<AppState>(context).dispatch(CreateUserStart(email: email, password: password, result: _onResult));
  }

  void _onResult(dynamic action) {
    if (action is CreateUserSuccessful) {
      Navigator.pushReplacementNamed(context, '/');
    } else if (action is CreateUserError) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${action.error}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            return Column(
              children: <Widget>[
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                TextField(
                  controller: _password,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 32.0),
                if (pending.contains(CreateUser.pendingKey))
                  const Center(
                    child: CircularProgressIndicator(),
                  )
                else ...<Widget>[
                  ElevatedButton(
                    onPressed: _onNext,
                    child: const Text('Create'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text('Go to login'),
                  ),
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}
