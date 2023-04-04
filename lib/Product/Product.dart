import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gymperdynamic/Product/ProductVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Productlist extends StatelessWidget {
  Productlist({super.key});
  ProductVM _instance = ProductVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D031B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(children: [
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "GYMPERS",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            child: Observer(builder: (context) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _instance.collectionofBrand.length,
                itemBuilder: (BuildContext context, int index) {
                  return MaterialButton(
                    onPressed: () {
                      _instance.productFilter(brandindex: index);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        _instance.collectionofBrand[index] == "Nike"
                            ? "lib/Helpers/Resources/asset/Images/nike.png"
                            : _instance.collectionofBrand[index] == "Adidas"
                                ? "lib/Helpers/Resources/asset/Images/adidas.png"
                                : _instance.collectionofBrand[index] == "Puma"
                                    ? "lib/Helpers/Resources/asset/Images/puma.png"
                                    : _instance.collectionofBrand[index] ==
                                            "All"
                                        ? "lib/Helpers/Resources/asset/Images/all.png"
                                        : "lib/Helpers/Resources/asset/Images/all.png",
                        height: 20,
                        width: 30,
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          const SizedBox(
            height: 28,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "T-Shirt",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  letterSpacing: 1),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.center,
            child: Observer(builder: (context) {
              return GridView.builder(
                itemCount: _instance.collectionOfProducts.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 56,
                  mainAxisSpacing: 25,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 146,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: const Color(0xff56505F),
                            ),
                            child: Image.asset(
                              _instance.collectionOfProducts[index]["Brand"] ==
                                      "Nike"
                                  ? _instance.collectionOfProducts[index]
                                      ["ProductImage"]
                                  : _instance.collectionOfProducts[index]
                                              ["Brand"] ==
                                          "Adidas"
                                      ? _instance.collectionOfProducts[index]
                                          ["ProductImage"]
                                      : _instance.collectionOfProducts[index]
                                                  ["Brand"] ==
                                              "Puma"
                                          ? _instance
                                                  .collectionOfProducts[index]
                                              ["ProductImage"]
                                          : _instance
                                                  .collectionOfProducts[index]
                                              ["ProductImage"],
                              height: 127,
                              width: 102,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              _instance.collectionOfProducts[index]["Brand"] ==
                                      "Nike"
                                  ? _instance.collectionOfProducts[index]
                                      ["Brand"]
                                  : _instance.collectionOfProducts[index]
                                              ["Brand"] ==
                                          "Adidas"
                                      ? _instance.collectionOfProducts[index]
                                          ["Brand"]
                                      : _instance.collectionOfProducts[index]
                                                  ["Brand"] ==
                                              "Puma"
                                          ? _instance
                                                  .collectionOfProducts[index]
                                              ["Brand"]
                                          : _instance
                                                  .collectionOfProducts[index]
                                              ["Brand"],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              _instance.collectionOfProducts[index]["Brand"] ==
                                      "Nike"
                                  ? _instance.collectionOfProducts[index]
                                      ["Category"]
                                  : _instance.collectionOfProducts[index]
                                              ["Brand"] ==
                                          "Adidas"
                                      ? _instance.collectionOfProducts[index]
                                          ["Category"]
                                      : _instance.collectionOfProducts[index]
                                                  ["Brand"] ==
                                              "Puma"
                                          ? _instance
                                                  .collectionOfProducts[index]
                                              ["Category"]
                                          : _instance
                                                  .collectionOfProducts[index]
                                              ["Category"],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ]);
                },
              );
            }),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(Icons.home_outlined, color: Colors.white),
                SizedBox(
                  width: 35,
                ),
                Icon(Icons.search_outlined, color: Colors.white),
                SizedBox(
                  width: 35,
                ),
                Icon(Icons.shopping_cart_outlined, color: Colors.white),
                SizedBox(
                  width: 35,
                ),
                Icon(Icons.person_outlined, color: Colors.white),
              ]),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
