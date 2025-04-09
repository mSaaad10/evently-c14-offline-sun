import 'package:evently/DM/categort_DM.dart';
import 'package:evently/core/resources/assets_manager.dart';

class ConstantManager {
  static List<CategoryDM> categories = [
    CategoryDM(id: "1", name: "All", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(id: "2", name: "Sport", iconPath: SvgIconsAssets.sportsCategory),
    CategoryDM(
        id: "3", name: "BirthDay", iconPath: SvgIconsAssets.birthDayCategory),
    CategoryDM(
        id: "4", name: "Meeting", iconPath: SvgIconsAssets.bookClubCategory),
    CategoryDM(id: "5", name: "Gamin", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(id: "6", name: "Eating", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(
        id: "7", name: "Holiday", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(
        id: "8", name: "Exhibition", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(
        id: "9", name: "WorkShop", iconPath: SvgIconsAssets.allCategories),
    CategoryDM(
        id: "9", name: "WorkShop", iconPath: SvgIconsAssets.allCategories)
  ];
}
