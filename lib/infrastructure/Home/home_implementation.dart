import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kisan_app/core/injection/injectable.dart';
import 'package:kisan_app/domain/home/home_repository.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: HomeRepository)
class HopmeImpl implements HomeRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    String downloadUrl = '';
    String id = const Uuid().v1();

    try {
      Reference ref = _storage.ref().child(childName).child(id);
      UploadTask uploadTask = ref.putData(file);

      TaskSnapshot snapshot = await uploadTask;
      downloadUrl = await snapshot.ref.getDownloadURL();
    } catch (e) {
      log(e.toString());
    }

    return downloadUrl;
  }

  @override
  Future uploadPost(String productName, File? file, String pricePerKg,
      String actualPrice, String offerPrice) async {
    Uint8List bytes = await file!.readAsBytes();
    String id = const Uuid().v1();

    String photoUrl =
        await getIt<HomeRepository>().uploadImageToStorage('product', bytes);

    final body = {
      "image_url": photoUrl,
      "product_name": productName,
      "price_per_kg": pricePerKg,
      "actual_price": actualPrice,
      "user_id": _auth.currentUser?.uid,
      "offer_price": offerPrice
    };
    _firestore.collection('products').doc(id).set(body);
  }
}
