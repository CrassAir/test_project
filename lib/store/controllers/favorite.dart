import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_project/utils.dart';

class FavoriteCtrl extends GetxController {
  RxList<String> favorite = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    getFavorites();
  }

  void getFavorites() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? items = prefs.getStringList('favorites');
    if (items.hasData) {
      favorite.addAll(items!);
    }
  }

  void setFavorites(String fav) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (favorite.contains(fav)) {
      favorite.remove(fav);
    } else {
      favorite.add(fav);
    }
    await prefs.setStringList('favorites', favorite);
  }
}