import 'package:ecommerce_interview_test/bloc/product_bloc/product_bloc.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:ecommerce_interview_test/presentation/widgets/app_drawer.dart';
import 'package:ecommerce_interview_test/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context).add(GetAllProductsEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ShopMe'),
          centerTitle: true,
        ),
        drawer: const AppDrawer(),
        body: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            if (state is GetAllProductsLoading) {
              const Center(child: CircularProgressIndicator());
            }
            if (state is GetAllProductFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Failed to Load Data')));
            }
            if (state is GetAllProductSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Successfully Data Fetched')));
            }
          },
          builder: (context, state) {
            List<Product> productList =
                BlocProvider.of<ProductBloc>(context).productList;
            return ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) => ProductCard(
                product: productList[index],
              ),
            );
          },
        ));
  }
}
