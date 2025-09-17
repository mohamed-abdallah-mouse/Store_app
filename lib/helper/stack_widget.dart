import 'package:flutter/material.dart';
import 'package:store_app/store_model.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key, required this.storeModel});
  StoreModel storeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 5,
            shadowColor: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    storeModel.title,
                    style: TextStyle(
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$'
                        '${storeModel.price.toString()}',
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -50,
            left: 60,
            child: Image.network(storeModel.image!, width: 100, height: 100),
          ),
        ],
      ),
    );
  }
}
