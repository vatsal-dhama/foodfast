import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/cart_item.dart';
import '../models/order_item.dart';

class OrderProvider with ChangeNotifier {
  late OrderItem order;

  // get all orders
  Future<void> getorder() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
      .collection('Orders')
      .doc('l54bKCfJj8LpZ9bIsBCe')
      .get();

    if(snapshot.exists) {
      Map<String, dynamic> data = snapshot.data();
//       print(data['datetime']);
//       order.datetime = data['datetime'];
      
//       order.type = data['type'];
//       order.userid = data['id'];
//       var cartData = data['cart'] as Map<String, dynamic>;
// // Iterating through a map and parsing every
//       cartData.forEach((key, value) {
//         CartItem cata = CartItem.fromJson(value);
//         order.cart.putIfAbsent(key, () => cata);
//       });

    }
    else{
      print('no snapshot');
    }
    notifyListeners();
  }

  

}