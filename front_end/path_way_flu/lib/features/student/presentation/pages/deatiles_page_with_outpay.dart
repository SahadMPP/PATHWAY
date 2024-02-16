import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_way_flu/core/constants/constants.dart';
import 'package:path_way_flu/features/admin/data/models/tutoral_model.dart';
import 'package:path_way_flu/features/student/data/repositories/student_api.dart';
import 'package:path_way_flu/features/student/presentation/widgets/course_con_without_payment.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class StudentDeatileWithoutPay extends StatefulWidget {
  final String subjuct;

  const StudentDeatileWithoutPay({super.key, required this.subjuct});

  @override
  State<StudentDeatileWithoutPay> createState() =>
      _StudentDeatileWithoutPayState();
}

class _StudentDeatileWithoutPayState extends State<StudentDeatileWithoutPay> {
  late Razorpay _razorpay;
  void openCheckOut() async {
    int amount = 99*100;
    var options = {
      'key': 'rzp_test_ZKvZdREQ8HDWXq',
      'amount': amount,
      'name': 'Pathwaytest',
      'description': 'Learning app',
      'prefill': {'contact': '12345667', 'email': 'teast@razorpay.com'}
    };
    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint("error : $e");
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "payment sucessful${response.paymentId!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  void handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "payment fail ${response.message!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "External wallet ${response.walletName!}",
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          image: const DecorationImage(
              image: AssetImage("asset/images/ux_big-removebg-preview.png"),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("asset/icons/arrow-left.svg"),
                      SvgPicture.asset("asset/icons/more-vertical.svg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: const EdgeInsets.only(
                          left: 10, right: 20, top: 5, bottom: 5),
                      child: Text(
                        "best seller".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Design Thinking", style: kHeadingextStyle),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SvgPicture.asset("asset/icons/person.svg"),
                      const SizedBox(width: 5),
                      const Text("18K"),
                      const SizedBox(width: 20),
                      SvgPicture.asset("asset/icons/star.svg"),
                      const SizedBox(width: 5),
                      const Text("4.8"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text("\$50",
                          style: kHeadingextStyle.copyWith(fontSize: 32)),
                      const SizedBox(width: 5),
                      Text("\$70",
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Course Content',
                        style: kHeadingextStyle,
                      ),
                      const SizedBox(height: 30),
                      FutureBuilder(
                          future: StudentApi.getTotorialStudent(widget.subjuct),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                  child: CircularProgressIndicator(
                                color: Colors.grey[400],
                              ));
                            } else {
                              List<Tutorial> tutoral = snapshot.data!;
                              if (tutoral.isEmpty) {
                                return const Center(
                                    child: Text("Tutorial is empty"));
                              } else {
                                return SizedBox(
                                  child: ListView.builder(
                                    itemCount: tutoral.length,
                                    itemBuilder: (context, index) =>
                                        CourseContent(
                                            number: index,
                                            title: tutoral[index].title,
                                            creator: tutoral[index].creator),
                                  ),
                                );
                              }
                            }
                          }),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          openCheckOut();
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        height: 56,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: 56,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: kBlueColor),
                          child: Text(
                            "Buy Now",
                            style: kSubtitleTextSyule.copyWith(
                              color: Theme.of(context).colorScheme.background,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
