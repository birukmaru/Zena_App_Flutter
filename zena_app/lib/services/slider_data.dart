import 'package:zena_app/models/slider_model.dart';

List<sliderModel> getSliders() {
  List<sliderModel> slider = [];
  sliderModel categoryModle = new sliderModel();

  categoryModle.name = "Bow To The Authority of Silenforce";
  categoryModle.image = "../../images/business.jpg";
  slider.add(categoryModle);
  categoryModle = new sliderModel();

  categoryModle.name = "Bow To The Authority of Silenforce";
  categoryModle.image = "../../images/entertainment.jpg";
  slider.add(categoryModle);
  categoryModle = new sliderModel();
  categoryModle.name = "Bow To The Authority of Silenforce";
  categoryModle.image = "../../images/health.jpg";
  slider.add(categoryModle);
  categoryModle = new sliderModel();

  return slider;
}
