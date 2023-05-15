import 'package:get/get.dart';

import '../modules/boss_fragment_page/bindings/boss_fragment_page_binding.dart';
import '../modules/boss_fragment_page/views/boss_fragment_page_view.dart';
import '../modules/boss_material_page/bindings/boss_material_page_binding.dart';
import '../modules/boss_material_page/views/boss_material_page_view.dart';
import '../modules/currency_fragment/bindings/currency_fragment_binding.dart';
import '../modules/currency_fragment/views/currency_fragment_view.dart';
import '../modules/elementary_page/bindings/elementary_page_binding.dart';
import '../modules/elementary_page/views/elementary_page_view.dart';
import '../modules/fragment_page/bindings/fragment_page_binding.dart';
import '../modules/fragment_page/views/fragment_page_view.dart';
import '../modules/hero_page/bindings/hero_page_binding.dart';
import '../modules/hero_page/views/hero_page_view.dart';
import '../modules/hero_settings/bindings/hero_settings_binding.dart';
import '../modules/hero_settings/views/hero_settings_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/mob_fragments_page/bindings/mob_fragments_page_binding.dart';
import '../modules/mob_fragments_page/views/mob_fragments_page_view.dart';
import '../modules/specialties_page/bindings/specialties_page_binding.dart';
import '../modules/specialties_page/views/specialties_page_view.dart';
import '../modules/talent_fragments_page/bindings/talent_fragments_page_binding.dart';
import '../modules/talent_fragments_page/views/talent_fragments_page_view.dart';
import '../modules/test_hero_settings/bindings/test_hero_settings_binding.dart';
import '../modules/test_hero_settings/views/test_hero_settings_view.dart';
import '../modules/wish_list_page/bindings/wish_list_page_binding.dart';
import '../modules/wish_list_page/views/wish_list_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.HERO_PAGE,
      page: () => const HeroPageView(),
      binding: HeroPageBinding(),
    ),
    GetPage(
      name: _Paths.FRAGMENT_PAGE,
      page: () => const FragmentPageView(),
      binding: FragmentPageBinding(),
    ),
    GetPage(
      name: _Paths.BOSS_FRAGMENT_PAGE,
      page: () => const BossFragmentPageView(),
      binding: BossFragmentPageBinding(),
    ),
    GetPage(
      name: _Paths.BOSS_MATERIAL_PAGE,
      page: () => const BossMaterialPageView(),
      binding: BossMaterialPageBinding(),
    ),
    GetPage(
      name: _Paths.TALENT_FRAGMENTS_PAGE,
      page: () => const TalentFragmentsPageView(),
      binding: TalentFragmentsPageBinding(),
    ),
    GetPage(
      name: _Paths.ELEMENTARY_PAGE,
      page: () => const ElementaryPageView(),
      binding: ElementaryPageBinding(),
    ),
    GetPage(
      name: _Paths.SPECIALTIES_PAGE,
      page: () => const SpecialtiesPageView(),
      binding: SpecialtiesPageBinding(),
    ),
    GetPage(
      name: _Paths.MOB_FRAGMENTS_PAGE,
      page: () => const MobFragmentsPageView(),
      binding: MobFragmentsPageBinding(),
    ),
    GetPage(
      name: _Paths.WISH_LIST_PAGE,
      page: () => const WishListPageView(),
      binding: WishListPageBinding(),
    ),
    // GetPage(
    //   name: _Paths.TEST_HERO_SETTINGS,
    //   page: () => const TestHeroSettingsView(),
    //   binding: TestHeroSettingsBinding(),
    // ),
    GetPage(
      name: _Paths.CURRENCY_FRAGMENT,
      page: () => const CurrencyFragmentView(),
      binding: CurrencyFragmentBinding(),
    ),
  ];
}
