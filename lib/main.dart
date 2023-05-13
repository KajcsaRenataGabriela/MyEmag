import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'firebase_options.dart';
import 'src/actions/index.dart';
import 'src/data/auth_api.dart';
import 'src/epics/app_epics.dart';
import 'src/epics/auth_epics.dart';
import 'src/models/index.dart';
import 'src/presentation/containers/index.dart';
import 'src/presentation/create_user_page.dart';
import 'src/presentation/home_page.dart';
import 'src/presentation/login_page.dart';
import 'src/reducer/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final AuthApi authApi = AuthApi(FirebaseAuth.instance);
  final AuthEpics auth = AuthEpics(authApi);
  final AppEpics epic = AppEpics(auth);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.call).call,
    ],
  );

  store.dispatch(const CheckUserStart());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Emag',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context){
            return UserContainer(builder: (BuildContext context, AppUser? user){
              if(user == null){
                return const LoginPage();
              }else{
                return const HomePage();
              }
            });
          },
          '/login': (BuildContext context) => const LoginPage(),
          '/create': (BuildContext context) => const CreateUserPage(),
        },
      ),
    );
  }
}
