import 'package:flutter/material.dart';

import '../models/index.dart';
import 'containers/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(builder: (BuildContext context, AppUser? user) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(user!.displayName),
        ),
      );
    });
  }
}
