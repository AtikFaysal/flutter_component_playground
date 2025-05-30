import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  final bool isLoading;
  const LoadingWidget({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return const LoadingIndicator(
      indicatorType: Indicator.ballPulse,

      /// Required, The loading type of the widget
      colors: [Colors.black],

      /// Optional, The color collections
      strokeWidth: 2,

      /// Optional, The stroke of the line, only applicable to widget which contains line
      backgroundColor: Colors.black,

      /// Optional, Background of the widget
      pathBackgroundColor: Colors.black,

      /// Optional, the stroke backgroundColor
    );
  }
}
