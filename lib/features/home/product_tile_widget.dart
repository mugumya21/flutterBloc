import 'package:flutter/material.dart';
import 'package:glocery/features/home/home_product_data_model.dart';

class ProductTileWidget extends StatefulWidget {
  final ProductDataModel productDataModel;

  ProductTileWidget({required this.productDataModel, Key? key}) : super(key: key);

  @override
  State<ProductTileWidget> createState() => _ProductTileWidgetState();
}

class _ProductTileWidgetState extends State<ProductTileWidget> {
  @override
  Widget build(BuildContext context) {
    return 
     Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(widget.productDataModel.imageUrl)) ),
            ),
            Text(widget.productDataModel.name),
            Text(widget.productDataModel.description),
           
          ],
        ),
      );
    
  }
}
