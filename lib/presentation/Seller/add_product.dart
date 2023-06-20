import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/application/Home/home_bloc.dart';
import 'package:kisan_app/core/injection/injectable.dart';
import 'package:kisan_app/core/services/image_picker.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/domain/home/home_repository.dart';
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
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      getIt<ImagePickerClass>().imagePicker(context);
                    },
                    child: Container(
                      height: 180.h,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(15.r)),
                      child: state.image != null
                          ? Image.file(state.image!)
                          : const Center(
                              child:
                                  KsText(text: "Please Add Your Product Image"),
                            ),
                    ),
                  );
                },
              ),
              sized0hx50,
              KsTextField(
                  textEditingController: productNameCtr,
                  hinText: "Enter Product name"),
              sized0hx20,
              KsTextField(
                  textEditingController: productPricePerCtr,
                  textInputType: TextInputType.number,
                  hinText: "Enter Price/kg"),
              sized0hx20,
              KsTextField(
                  textEditingController: productActualPriceCtr,
                  textInputType: TextInputType.number,
                  hinText: "Enter Actual Price"),
              sized0hx20,
              KsTextField(
                  textEditingController: productOfferPriceCtr,
                  textInputType: TextInputType.number,
                  hinText: "Enter Offer Price"),
              sized0hx50,
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return KsButton(
                    buttonText: "Add product",
                    onTap: () {
                      getIt<HomeRepository>().uploadPost(
                          productNameCtr.text,
                          state.image,
                          productPricePerCtr.text,
                          productActualPriceCtr.text,
                          productOfferPriceCtr.text);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
