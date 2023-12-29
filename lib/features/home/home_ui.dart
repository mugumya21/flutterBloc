import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glocery/features/cart/cart_ui.dart';
import 'package:glocery/features/home/bloc/home_bloc.dart';
// import 'package:glocery/features/home/bloc/home_bloc.dart';


class Home extends StatefulWidget {
    final String title;

  const Home({super.key, required this.title});



  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is !HomeActionState,
      listener: (context, state) {
        if(state is HomeNavigateToCartPAgeActionState){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cart()));
        }
      },
      builder: (context, state) {
       return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            homeBloc.add(HomeWishListButtonNavigateEvent());

          },
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            homeBloc.add(HomeCartButtonNavigateEvent());
          },
        ),
      ],
    ),
    // Other widgets for the body of the scaffold can be added here
  );
    },

    );
}

}
