import '../pages/cart/export_cart.dart';
import 'package:ecommerce/pages/home/ui/index.dart';
import '../pages/main/export_main.dart';
import '../pages/search/export_search.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:get/get.dart';

class Pages {
  static final List<GetPage<dynamic>> pages = [
    GetPage<HomePage>(
      name: Routes.initial,
      page: () => const Main(),
      binding: MainBindings(),
      transition: Transition.fadeIn,
      preventDuplicates: true,
    ),
    GetPage<HomePage>(
      name: Routes.home,
      page: () => HomePage(),
      transition: Transition.fadeIn,
      preventDuplicates: true,
    ),
    GetPage<SearchPage>(
      name: Routes.search,
      page: () => const SearchPage(),
      binding: SearchBinding(),
      transition: Transition.downToUp,
      preventDuplicates: true,
    ),
    GetPage<CartPage>(
      name: Routes.cart,
      page: () => const CartPage(),
      binding: CartBindings(),
      transition: Transition.upToDown,
      preventDuplicates: true,
    ),
  ];
}
