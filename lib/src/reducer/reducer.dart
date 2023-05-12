import 'package:flutter/foundation.dart';

import '../models/index.dart';
import 'auth_reducer.dart';

AppState reducer(AppState state, dynamic action){
  if(kDebugMode){
    print(action);
  }

  return state.copyWith(
      auth: authReducer(state.auth, action),
  );
}
