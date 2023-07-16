import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/status_card_complain/status_card_complain.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class StatusCardComplainSamplesView extends StatefulWidget {
  const StatusCardComplainSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-status-card-complain-samples';

  @override
  State<StatusCardComplainSamplesView> createState() => _StatusCardComplainSamplesViewState();
}

class _StatusCardComplainSamplesViewState extends State<StatusCardComplainSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Status Card Complain Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            statusCardComplain(),
          ],
        ),
      ),
    );
  }

  Widget statusCardComplain() {
    return SampleWrapper(
      title: 'Status Card Complain',
      widget: StatusCardComplain(
        tagStatus: 'Solusi Diajukan',
        countStatus: 80,
        functionButton: () {
          // TODO
        },
      ),
    );
  }
}
