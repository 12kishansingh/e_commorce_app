import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeshop = [
    Shoe(
      name: 'zoom freak',
      price: '236',
      imagePath: 'lib/images/freak.png',
      description: 'the forward thinking design',
    ),
    Shoe(
      name: 'zoom freak',
      price: '289',
      imagePath: 'lib/images/airjordan.png',
      description: 'the forward thinking design',
    ),
    Shoe(
      name: 'zoom freak',
      price: '259',
      imagePath: 'lib/images/freak.png',
      description: 'the forward thinking design',
    ),
    Shoe(
      name: 'zoom freak',
      price: '206',
      imagePath: 'lib/images/freak.png',
      description: 'the forward thinking design',
    ),
  ];
  // lis of items in user cart

  List<Shoe>usercart=[];

  // get list of shoe for sale
  List<Shoe>getShoeList(){
    return shoeshop;
  }


  // get cart
  List<Shoe>getusercart(){
    return usercart;
  }

  // add item to cart
  void additemtocart(Shoe shoe){
    usercart.add(shoe);
    notifyListeners();
  }


  // remove item to cart
  void removeitemfromcart(Shoe shoe){
    usercart.remove(shoe);
    notifyListeners();
  }
}
