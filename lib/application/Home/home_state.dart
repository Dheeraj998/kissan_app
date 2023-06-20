part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({File? image}) = _HomeState;

  factory HomeState.initial() => const HomeState(image: null);
}
