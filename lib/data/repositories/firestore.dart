import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  // get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  // save order to db
}
