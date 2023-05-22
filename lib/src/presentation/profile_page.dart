import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Future<ImageSource?> _pickSource(BuildContext context) async {
    return showModalBottomSheet<ImageSource?>(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 160,
            child: Column(
              children: <Widget>[
                const Text('Where do you want to pick profile pic from?'),
                const SizedBox(height: 24.0),
                ListTile(
                  title: const Text('Gallery'),
                  onTap: () {
                    Navigator.pop(context, ImageSource.gallery);
                  },
                ),
                ListTile(
                  title: const Text('Camera'),
                  onTap: () {
                    Navigator.pop(context, ImageSource.camera);
                  },
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                final Store<AppState> store = StoreProvider.of<AppState>(context);
                final ImageSource? source = await _pickSource(context);
                if (source == null) {
                  return;
                }
                final XFile? file = await ImagePicker().pickImage(source: source);
                if (file == null) {
                  return;
                }

                store.dispatch(UpdateProfileUrl.start(file.path));
              },
              child: Align(
                child: PendingContainer(builder: (BuildContext context, Set<String> vm) {
                  return UserContainer(builder: (BuildContext context, AppUser? user) {
                    if (user!.pictureUrl == null) {
                      return Container(
                        decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                        width: 96.0,
                        height: 96.0,
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          user.email[0].toUpperCase(),
                          style: const TextStyle(fontSize: 64.0, color: Colors.white),
                        ),
                      );
                    }

                    return CircleAvatar(
                      foregroundImage: NetworkImage(user.pictureUrl!),
                      radius: 96.0 / 2,
                    );
                  });
                }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
