import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kisan_app/core/utils/constant.dart';
import 'package:kisan_app/core/utils/themes.dart';
import 'package:kisan_app/presentation/widgets/ks_text.dart';
import 'package:kisan_app/presentation/widgets/ks_textfield.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController homeSearchCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cWhite,
        elevation: 2,
        title: KsText(
          text: "Kisan",
          fontColor: cBlack,
        ),
        leading: SizedBox(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            sized0hx10,
            KsTextField(
              textEditingController: homeSearchCtr,
              hinText: "search...",
              isDense: true,
              prefixIcon: Icon(Icons.search),
            ),
            sized0hx10,
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    childAspectRatio: .85 / 1,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    // height: 600,
                    decoration: BoxDecoration(
                        color: productTileColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://images.unsplash.com/photo-1561136594-7f68413baa99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                height: 85.h,
                                // width: 132.w,
                              ),
                              KsText(
                                text: "Tomato",
                                fontSize: 16.sp,
                              ),
                              sized0hx05,
                              KsText(
                                text: "by Weight,\$40/kg ",
                                fontSize: 10.sp,
                                fontColor: Color(0xFF61AF9C),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            sized0wx10,
                            KsText(
                              text: "\$58",
                              fontSize: 10.sp,
                            ),
                            sized0wx05,
                            KsText(
                              text: "\$58",
                              fontSize: 10.sp,
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10, left: 10, top: 10, bottom: 10),
                              // width: 35,
                              decoration: BoxDecoration(
                                  color: cPrimaryColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.r),
                                      bottomRight: Radius.circular(15.r))),
                              child: Icon(
                                Icons.card_travel,
                                size: 14,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
