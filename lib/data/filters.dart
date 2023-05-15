// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:genshin_counter/models/hero.dart';
import 'package:genshin_counter/resourses/images/filters_image.dart';

class FilterModel {
  bool isElement;
  String name;
  String imagePath;
  FilterModel({
    required this.isElement,
    required this.name,
    required this.imagePath,
  });
}

List<FilterModel> allFilters = [
  FilterModel(
      isElement: true, name: "Агат Агнидус", imagePath: FiltersImage.pyro),
  FilterModel(
      isElement: true, name: "Изумруд Нагадус", imagePath: FiltersImage.dendro),
  FilterModel(
      isElement: true, name: "Топаз Притхива", imagePath: FiltersImage.geo),
  FilterModel(
      isElement: true, name: "Нефрит Шивада", imagePath: FiltersImage.cryo),
  FilterModel(
      isElement: true,
      name: "Аметист Ваджрада",
      imagePath: FiltersImage.electro),
  FilterModel(
      isElement: true, name: "Лазурит Варунада", imagePath: FiltersImage.hydro),
  FilterModel(
      isElement: true, name: "Бирюза Вайюда", imagePath: FiltersImage.anemo),
  FilterModel(
      isElement: false,
      name: HeroesWepons.bow.name,
      imagePath: FiltersImage.bow),
  FilterModel(
      isElement: false,
      name: HeroesWepons.sword.name,
      imagePath: FiltersImage.sword),
  FilterModel(
      isElement: false,
      name: HeroesWepons.claymore.name,
      imagePath: FiltersImage.claymore),
  FilterModel(
      isElement: false,
      name: HeroesWepons.catalyst.name,
      imagePath: FiltersImage.catalyst),
  FilterModel(
      isElement: false,
      name: HeroesWepons.polearm.name,
      imagePath: FiltersImage.polearm),
];
