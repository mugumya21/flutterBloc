part of 'home_bloc.dart';

abstract class HomeState{}

abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState{
  
}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishLIstActionState extends HomeActionState{}

class HomeNavigateToCartPAgeActionState extends HomeActionState{}
