import 'package:codignus_demo_project/bloc/product_bloc.dart';
import 'package:codignus_demo_project/core/constants.dart';
import 'package:codignus_demo_project/model/product_banners.dart';
import 'package:codignus_demo_project/model/product_catagory.dart';
import 'package:codignus_demo_project/presentation/widgets/logo_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context).add(GetAllProductCatagories());
    BlocProvider.of<ProductBloc>(context).add(GetAllProductBanners());

    super.initState();
  }

  List<ProductBanners> bannersList = [];
  List<ProductCatagory> catagoryList = [];

  @override
  Widget build(BuildContext context) {
    double screenHeight = screenSize(context).height;
    double screenWidth = screenSize(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: headerSection(screenHeight, screenWidth),
              ),
              searchAndNotificationSection(screenWidth, screenHeight),
              kheigh,
              bannerSection(screenHeight, screenWidth),
              kheigh,
              popularRestuarentSection(screenHeight, screenWidth)
            ],
          ),
        ),
      ),
    );
  }

  Container bannerSection(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.25,
      width: screenWidth * 1,
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          bannersList = BlocProvider.of<ProductBloc>(context).productBannerList;
          return ListView.builder(
            shrinkWrap: true,
            itemCount: bannersList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.65),
                        Colors.pink,
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: screenHeight * 0.15,
                          width: screenWidth * 0.4,
                          child: Image.network(bannersList[index].photo!),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Special Deal For December',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10)),
                              alignment: Alignment.center,
                              child: const Text(
                                'Shop Now',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Row searchAndNotificationSection(double screenWidth, double screenHeight) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoSearchTextField(
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white24),
              backgroundColor: Colors.grey.withOpacity(0.5),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: screenWidth * 0.1,
            height: screenHeight * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.withOpacity(0.6),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wifi_sharp,
                color: Colors.pink,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row headerSection(double screenHeight, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            LogoContainer(
              screenHeight: screenHeight * 0.08,
              screenWidth: screenWidth * 0.15,
            ),
            kWidth,
            const Text(
              'Hello Daniel !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active,
            color: Colors.pink,
          ),
        ),
      ],
    );
  }

  Widget popularRestuarentSection(double screenHeight, double screenWidth) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Restuarents',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'See All!',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ],
          ),
        ),
        kheigh,
        SizedBox(
          height: screenHeight * 0.3,
          child:
              BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
            catagoryList =
                BlocProvider.of<ProductBloc>(context).productCategoryList;
            if (state is GetAllProductCatagoriesSuccessfull) {
              return ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.2,
                        width: screenWidth * 0.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.7),
                          image: DecorationImage(
                            image: NetworkImage(
                              catagoryList[index].photo!,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      kheigh,
                      Text(
                        '${catagoryList[index].name}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
        ),
      ],
    );
  }
}
