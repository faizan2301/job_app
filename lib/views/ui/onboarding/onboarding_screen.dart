import 'package:flutter/material.dart';
import 'package:job_app/controllers/exports.dart';
import 'package:job_app/views/ui/onboarding/widgets/page_one.dart';
import 'package:job_app/views/ui/onboarding/widgets/page_three.dart';
import 'package:job_app/views/ui/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardNotifier>(
      builder: (context, onBoardNotifier, child) {
        return Scaffold(
          body: Stack(
            children: [
              PageView(
                physics: const NeverScrollableScrollPhysics(),
                children: [PageOne(), PageTwo(), PageThree()],
              ),
            ],
          ),
        );
      },
    );
  }
}
