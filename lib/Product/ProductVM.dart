import 'ProductModel.dart';

class ProductVM extends ProductModel {
  ProductVM() {
    setBrand(collectionofBrand: ["Nike", "Adidas", "Puma", "All"]);
    setProduct(collectionOfProducts: [
      {
        "Brand": "Nike",
        "Category": "Mens' T-shirt",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person1.png",
      },
      {
        "Brand": "Adidas",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person2.png",
      },
      {
        "Brand": "Puma",
        "Category": "Mens' T-shirt",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person3.png",
      },
      {
        "Brand": "Adidas",
        "Category": "Mens' Shirt",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person4.png",
      },
      {
        "Brand": "Puma",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person1.png",
      },
      {
        "Brand": "Adidas",
        "Category": "Men's Pant",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person2.png",
      },
      {
        "Brand": "Nike",
        "Category": "Mens' Shirt",
        "ProductImage": "lib/Helpers/Resources/asset/Images/person4.png",
      }
    ]);
    tempProduct(collectionOfTempProducts: collectionOfProducts);
  }

  productFilter({required int brandindex}) {
    setProduct(collectionOfProducts: []);

    for (var element in collectionOfTempProducts) {
      if (collectionofBrand[brandindex] == element["Brand"]) {
        collectionOfProducts.add(element);
      }
    }
    if (collectionofBrand[brandindex] == "All") {
      setProduct(collectionOfProducts: collectionOfTempProducts);
    }
  }
}
