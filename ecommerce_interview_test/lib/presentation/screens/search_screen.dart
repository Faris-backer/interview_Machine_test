import 'package:ecommerce_interview_test/bloc/bloc/search_bloc.dart';
import 'package:ecommerce_interview_test/constants/screen_size.dart';
import 'package:ecommerce_interview_test/model/product.dart';
import 'package:ecommerce_interview_test/presentation/widgets/search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/Search-Screen';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: ScreenSize.size(context).width * 0.85,
              height: double.infinity,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                ),
                onFieldSubmitted: (value) {
                  BlocProvider.of<SearchBloc>(context)
                      .add(GetAllSearches(searchQuery: value));
                  print(value);
                },
              ),
            ),
          ),
        ],
      ),
      body: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) {
          if (state is SearchLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SearchFailure) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('SomeThing Went Wrong'),
                  content: const Text(
                      'Plaese Check Your KeyWord, \n Please Try Again Later'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Okay'))
                  ],
                );
              },
            );
          }
        },
        builder: (context, state) {
          List<Product> searchList =
              BlocProvider.of<SearchBloc>(context).searchList;
          print(searchList);
          return searchList.isEmpty
              ? Center(
                  child: Text(
                  'No results found',
                  style: TextStyle(color: Colors.grey[700]),
                ))
              : ListView.builder(
                  itemCount: searchList.length,
                  itemBuilder: (context, index) {
                    return SearchCard(product: searchList[index]);
                  },
                );
        },
      ),
    );
  }
}
