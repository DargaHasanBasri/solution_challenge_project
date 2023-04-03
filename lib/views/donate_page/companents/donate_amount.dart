import 'package:flutter/services.dart';
import 'package:solution_challenge_project/export.dart';

class DonateAmount extends StatefulWidget {
  const DonateAmount({
    super.key,
  });

  @override
  State<DonateAmount> createState() => _DonateAmountState();
}

class _DonateAmountState extends State<DonateAmount> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 875.h,
        width: 110.w,
        color: AppConstants.mainWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: const ArrowLeft(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 10.h),
              child: Text(
                "\$100.000",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.mainBlack,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 20.w),
              child: Column(
                children: [
                  Text(
                    "D",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "O",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "N",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "A",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "T",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                  Text(
                    "E",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: AppConstants.mainBlue,
                      fontFamily: FontConstants.playfairDisplaySemiBold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 160.h),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60.r),
                ),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Get.defaultDialog(
                        backgroundColor: AppConstants.mainWhite,
                        title: Text('New Card'.tr).data!,
                        content: SizedBox(
                          width: 800.w,
                          height: 300.h,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(19),
                                  CardNumberInputFormatter(),
                                ],
                                decoration: InputDecoration(
                                  hintText: "Card Number",
                                  prefixIcon: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.h),
                                    child: SizedBox(
                                      height: 24.h,
                                      width: 24.h,
                                      child: Image.asset(
                                          "assets/images/credit-card.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.h),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Full Name",
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.w),
                                      child: SizedBox(
                                        height: 24.h,
                                        width: 24.h,
                                        child: Image.asset(
                                            "assets/images/user.png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "CVV",
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: SizedBox(
                                            height: 24.h,
                                            width: 24.h,
                                            child: Image.asset(
                                                "assets/images/cvv.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "MM/YY",
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: SizedBox(
                                            height: 24.h,
                                            width: 24.h,
                                            child: Image.asset(
                                                "assets/images/calendar.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.w),
                                child: const ActionButton(
                                  buttonTitle: "Add Card",
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Ink(
                      width: 105.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: AppConstants.mainBlue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60.r),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/donate-image.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();

    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write(" ");
      }
    }

    return TextEditingValue(
        text: buffer.toString(),
        selection: TextSelection.collapsed(
          offset: buffer.toString().length,
        ));
  }
}
