import 'dart:io';
import 'dart:typed_data';

abstract class HomeRepository {
  Future uploadImageToStorage(String childName, Uint8List file);

  Future uploadPost(String productName, File? file, String pricePerKg,
      String actualPrice, String offerPrice);
}
