import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gad_2023_early_2/firebase_options.dart';

import 'package:gad_2023_early_2/main.dart';
import 'package:gad_2023_early_2/src/actions/index.dart';
import 'package:gad_2023_early_2/src/data/auth_api.dart';
import 'package:gad_2023_early_2/src/data/products_api.dart';
import 'package:gad_2023_early_2/src/epics/app_epics.dart';
import 'package:gad_2023_early_2/src/epics/auth_epics.dart';
import 'package:gad_2023_early_2/src/epics/products_epics.dart';
import 'package:gad_2023_early_2/src/models/index.dart';
import 'package:gad_2023_early_2/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    final AuthApi authApi = AuthApi(FirebaseAuth.instance);
    final AuthEpics auth = AuthEpics(authApi);
    final ProductsApi productsApi = ProductsApi(FirebaseFirestore.instance);
    final ProductsEpics products = ProductsEpics(productsApi);
    final AppEpics epic = AppEpics(auth, products);

    final Store<AppState> store = Store<AppState>(
      reducer,
      initialState: const AppState(),
      middleware: <Middleware<AppState>>[
        EpicMiddleware<AppState>(epic.call).call,
      ],
    );

    store.dispatch(const InitializeApp.start());
    await tester.pumpWidget(MyApp(
      store: store,
    ));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
