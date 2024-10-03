import 'package:zena_app/models/category_modle.dart';

List<CategoryModle> getCategories() {
  List<CategoryModle> category = [];
  CategoryModle categoryModle = new CategoryModle();
  categoryModle.categoryName = "General";
  categoryModle.image =
      "https://i.pinimg.com/564x/76/02/4d/76024dd01bdb4ae6b774b9c004da6d05.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Business";
  categoryModle.image =
      "https://i.pinimg.com/564x/80/79/9f/80799f725b1409dacb05338a110bdbd1.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();

  categoryModle.categoryName = "Entertainment";
  categoryModle.image =
      "https://i.pinimg.com/564x/ef/1e/4a/ef1e4a07a17372215bd1d7f44014a65e.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();

  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Health";
  categoryModle.image =
      "https://i.pinimg.com/564x/5a/39/f7/5a39f7f985b2d6aab2bc35b0ff008a9c.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Sports";
  categoryModle.image =
      "https://i.pinimg.com/564x/42/b3/41/42b341861001b2e60a21a0040e3184a8.jpg";
  category.add(categoryModle);
  categoryModle = new CategoryModle();
  categoryModle.categoryName = "Science";
  categoryModle.image =
      "https://i.pinimg.com/564x/36/9e/41/369e4128b77f1b098dd57abd412bf723.jpg";
  category.add(categoryModle);
  return category;
}
