import 'package:get/get.dart';
import 'package:souls_anime/domain/models/update_model.dart';

class UpdateController extends GetxController {
  var listUpdate = [].obs;

  addUpdate({username, message, date}) {
    var statemodel =
        UpdateModel(username: username, message: message, date: date);

    listUpdate.add(statemodel);
    print(listUpdate);
  }
}
