import 'package:flutter/material.dart';
import 'package:store_app/helper/stack_widget.dart';
import 'package:store_app/services/get_all_products.dart';
import 'package:store_app/store_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('StoreApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_grocery_store_rounded),
          ),
        ],
      ),
      body: FutureBuilder(
        future: GetAllProducts().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<StoreModel> products = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return StackWidget(storeModel: products[index]);
                },
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
