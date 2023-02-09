import 'package:get/get.dart';

class SetYourFingerprintController extends GetxController {
  final _onclick = true.obs;
  bool get onclick => _onclick.value;
  set onclick(bool value) => _onclick.value = value;
}
