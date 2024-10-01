import 'package:zena_app/models/category_modle.dart';

List<CategoryModle> getCategories() {
  List<CategoryModle> category = [];
  CategoryModle categoryModle = new CategoryModle();
  categoryModle.categoryName = "Business";
  categoryModle.image = "../../images/business.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();

  categoryModle.categoryName = "Entertainment";
  categoryModle.image = "../../images/entertainment.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "General";
  categoryModle.image = "../../images/general.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Health";
  categoryModle.image = "../../images/health.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Sports";
  categoryModle.image = "../../images/sport.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Science";
  categoryModle.image = "../../images/science.jpg";
  category.add(categoryModle);
  return category;
}
