import 'package:get/get.dart';
import 'package:souls_anime/domain/models/state_model.dart';

class StateController extends GetxController {
  var listState = [].obs;

  addState({userName, message, date}) {
    var statemodel =
        StateModel(userName: userName, message: message, date: date);

    listState.add(statemodel);
    print(listState);
  }
}
