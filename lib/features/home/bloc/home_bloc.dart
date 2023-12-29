import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc():super(HomeInitial()){
  on<HomeProductWishListButtonClickedEvent>(homeProductWishListButtonClickedEvent);
  on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
  on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
  }

  FutureOr<void> homeProductWishListButtonClickedEvent(HomeProductWishListButtonClickedEvent event, Emitter<HomeState> emit) {
    print("Wish List Button clicked ");
  }

  FutureOr<void> homeCartButtonNavigateEvent(HomeCartButtonNavigateEvent event, Emitter<HomeState> emit) {
        print("Cart Button clicked to navigate");
        emit(HomeNavigateToCartPAgeActionState());

  }

  FutureOr<void> homeProductCartButtonClickedEvent(HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
            print("Cart Button clicked");

  }

  FutureOr<void> homeWishListButtonNavigateEvent(HomeWishListButtonNavigateEvent event, Emitter<HomeState> emit) {
            print("Wish list Button clicked to navigate");

  }
}