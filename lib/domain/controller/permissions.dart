import 'package:get/get.dart';
import 'package:souls_anime/domain/use_case/permission_management.dart';


class PermissionsController extends GetxController {
  // Observables
  final _location = false.obs;
  late PermissionManager _manager;

  set permissionManager(PermissionManager manager) {
    _manager = manager;
    _initPermissions(manager);
  }

  set gpsPermission(bool granted) {
    _location.value = granted;
  }

  // Getters
  bool get locationGranted => _location.value;

  PermissionManager get manager => _manager;

  // Update permission state with current value
  _initPermissions(PermissionManager manager) async {
    _location.value = await _manager.requestGpsPermission();
  }
}
