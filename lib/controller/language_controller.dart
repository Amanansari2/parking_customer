import 'package:get/get.dart';
import 'package:parkinghawkernew/constant/constant.dart';
import 'package:parkinghawkernew/model/language_model.dart';
import 'package:parkinghawkernew/utils/fire_store_utils.dart';
import 'package:parkinghawkernew/utils/preferences.dart';

class LanguageController extends GetxController {
  Rx<LanguageModel> selectedLanguage = LanguageModel().obs;
  RxBool isLoading = true.obs;
  RxList<LanguageModel> languageList = <LanguageModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getLanguage();
    super.onInit();
  }

  getLanguage() async {
    await FireStoreUtils.getLanguage().then((value) {
      if (value != null) {
        languageList.value = value;
        if (Preferences.getString(Preferences.languageCodeKey).toString().isNotEmpty) {
          LanguageModel pref = Constant.getLanguage();

          for (var element in languageList) {
            if (element.id == pref.id) {
              selectedLanguage.value = element;
            }
          }
        }
      }
    });
    isLoading.value = false;
    update();
  }
}
