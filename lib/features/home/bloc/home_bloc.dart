import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:glocery/data/glocery_products.dart';
import 'package:glocery/features/home/home_product_data_model.dart';
import 'package:glocery/features/home/product_tile_widget.dart';

part 'home_event.dart';
part 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc():super(HomeInitial()){
  on<HomeInitialEvent>(homeInitialEvent);
  on<HomeProductWishListButtonClickedEvent>(homeProductWishListButtonClickedEvent);
  on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
  on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  on<HomeWishListButtonNavigateEvent>(homeWishListButtonNavigateEvent);
  }
   FutureOr<void> homeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async{
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    emit(HomeLoadedSuccessState(products: GloceryProducts.gProducts.map((e) => ProductDataModel(
      id: e['id'],
       name: e['name'],
        description: e['description'],
         price: e['price'],
         imageUrl: e['imageUrl'])).toList()));
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