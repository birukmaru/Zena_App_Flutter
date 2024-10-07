import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildIndicator extends StatelessWidget {
  const BuildIndicator({
    super.key,
    required this.activeIndex,
  });

  final int activeIndex;

  @override
  Widget build(BuildContext context) => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 5,
      effect: SlideEffect(
          dotWidth: 15, dotHeight: 15, activeDotColor: Colors.blue));
}
