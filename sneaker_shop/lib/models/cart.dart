import 'package:flutter/cupertino.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'KD Trey',
      price: '12000',
      imagePath: 'images/kdtrey.png',
      description: 'The forward thinking design of this latest signature shoe.',
    ),
    Shoe(
      name: 'Air Max',
      price: '17000',
      imagePath: 'images/airmaxalpha.png',
      description:
          'Finish your last rep with power and rack it with a roar that stuns the gym floor',
    ),
    Shoe(
      name: 'KD 16',
      price: '29000',
      imagePath: 'images/kd16.jpeg',
      description:
          'Kyrie Irving plays the game as if he were a director starring in his own movie.',
    ),
    Shoe(
      name: 'Air Force',
      price: '18000',
      imagePath: 'images/airforce.png',
      description: 'Your style is iconic and your taste is next level.',
    ),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
