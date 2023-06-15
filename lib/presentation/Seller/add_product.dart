import 'package:flutter/material.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_button.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController productNameCtr = TextEditingController();
  TextEditingController productPricePerCtr = TextEditingController();
  TextEditingController productActualPriceCtr = TextEditingController();
  TextEditingController productOfferPriceCtr = TextEditingController();

  @override
  void dispose() {
    productNameCtr.dispose();
    productPricePerCtr.dispose();
    productActualPriceCtr.dispose();
    productOfferPriceCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KsText(
          text: "Add Product",
          fontColor: cBlack,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: cBlack,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sized0hx50,
              const CircleAvatar(
                radius: 50,
                backgroundColor: cPrimaryColor,
              ),
              sized0hx50,
              KsTextField(
                  textEditingController: productNameCtr,
                  hinText: "Enter Product name"),
              sized0hx20,
              KsTextField(
                  textEditingController: productPricePerCtr,
                  hinText: "Enter Price/kg"),
              sized0hx20,
              KsTextField(
                  textEditingController: productActualPriceCtr,
                  hinText: "Enter Actual Price"),
              sized0hx20,
              KsTextField(
                  textEditingController: productOfferPriceCtr,
                  hinText: "Enter Offer Price"),
              sized0hx50,
              KsButton(buttonText: "Add product")
            ],
          ),
        ),
      ),
    );
  }
}
