import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/index.dart';

part 'auth/create_user.dart';
part 'auth/login_user.dart';
part 'auth/logout_user.dart';
part 'auth/initialize_app.dart';
part 'auth/update_cart.dart';
part 'auth/update_profile_url.dart';
part 'orders/submit_order.dart';
part 'orders/listen_to_orders.dart';
part 'index.freezed.dart';
part 'products/list_category.dart';
part 'products/list_products.dart';
part 'products/list_vendors.dart';
part 'products/set.dart';

abstract class PendingAction {
  String get pendingId;
}

abstract class StartAction implements PendingAction {}

abstract class StopAction implements PendingAction {}

typedef ActionResult = void Function(dynamic action);
