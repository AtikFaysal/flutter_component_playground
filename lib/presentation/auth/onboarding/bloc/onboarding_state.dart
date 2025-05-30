import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_state.freezed.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(false) bool isLastPage,
    @Default(false) bool shouldNavigateToNextScreen,
    @Default(0) int currentPage,
  }) = _OnboardingState;
}
