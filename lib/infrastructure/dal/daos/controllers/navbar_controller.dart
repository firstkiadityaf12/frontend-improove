import 'package:get/get.dart';

class NavbarController extends GetxController {
  var isHoveringHome = false.obs;
  var isHoveringSearch = false.obs;
  var isHoveringBlog = false.obs;

  void onHoverHome(bool hover) {
    isHoveringHome.value = hover;
  }

  void onHoverSearch(bool hover) {
    isHoveringSearch.value = hover;
  }

  void onHoverBlog(bool hover) {
    isHoveringBlog.value = hover;
  }
}
