import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context)
                      .dispatch(const LogoutUserStart());
                  Navigator.pushReplacementNamed(context, '/login');
                },
                icon: const Icon(Icons.power_settings_new_sharp))
          ],
        ),
        body: Center(
          child: Text(user!.displayName),
        ),
      );
    });
  }
}
