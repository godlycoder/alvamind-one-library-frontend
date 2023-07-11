import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/organism/modal/modal_popup.dart';

import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_button.dart';
import '../../widget/molecule/app_dialog.dart';

class ModalPopupButtonSamplesView extends StatefulWidget {
  const ModalPopupButtonSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-modal-popup-button-samples';

  @override
  State<ModalPopupButtonSamplesView> createState() => _ModalPopupButtonSamplesViewState();
}

class _ModalPopupButtonSamplesViewState extends State<ModalPopupButtonSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Modal Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            modalPopUp(),
            modalPopUpWithMiniTitle(),
            modalPopUpWithAddress(),
            modalPopUpWithPrice(),
            modalPopUpWithSlider(),
          ],
        ),
      ),
    );
  }

  Widget modalPopUp() {
    return SampleWrapper(
      title: 'Modal PopUp',
      widget: AppButton(
        text: 'Modal PopUp',
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: ModalPopup(
              backgroundColor: AppColors.white,
              title: 'Modal',
              titleColor: AppColors.redLv1,
              miniTitle: 'Are you sure you want to log out?',
              subtitle: 'Lorem ipsum dolor sit amet hua qui lori ipsum sit ghui amet poety amet',
              subtitleColor: AppColors.black,
              children: [
                AppButton(
                  onTap: () {},
                  text: 'Cancel',
                  textColor: AppColors.primary,
                  buttonColor: AppColors.blueLv5,
                  rounded: true,
                  width: 135,
                ),
                SizedBox(width: AppSizes.padding / 2),
                AppButton(
                  onTap: () {},
                  text: 'Yes, Logout',
                  rounded: true,
                  width: 130,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget modalPopUpWithMiniTitle() {
    return SampleWrapper(
      title: 'Modal PopUp with Text',
      widget: AppButton(
        text: 'Modal PopUp with Text',
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: ModalPopup(
              backgroundColor: AppColors.white,
              title: 'Logout',
              titleColor: AppColors.redLv1,
              miniTitle: 'Are you sure you want to log out?',
              children: [
                AppButton(
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.padding * 2,
                    vertical: AppSizes.padding,
                  ),
                  text: 'Cancel',
                  textColor: AppColors.primary,
                  buttonColor: AppColors.blueLv5,
                  rounded: true,
                ),
                SizedBox(width: AppSizes.padding / 2),
                AppButton(
                  onTap: () {},
                  text: 'Yes, Logout',
                  rounded: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.padding * 1.5,
                    vertical: AppSizes.padding,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget modalPopUpWithAddress() {
    return SampleWrapper(
      title: 'Modal PopUp with Address',
      widget: AppButton(
        text: 'Modal PopUp with Adress',
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: ModalPopup(
              backgroundColor: AppColors.white,
              title: 'Pin Poin Alamat',
              titleColor: AppColors.black,
              directionButton: Axis.vertical,
              textAddress: true,
              titleAddress: 'Rancamulya',
              subtitleAddress: 'Pameungpek, Kab. Bandung, Jawa barat',
              children: [
                AppButton(
                  onTap: () {},
                  text: 'Pilih Lokasi dan Lanjut Isi Alamat',
                  rounded: true,
                ),
                SizedBox(
                  height: AppSizes.padding / 2,
                ),
                AppButton(
                  onTap: () {},
                  text: 'Tidak Ketemu? Isi Alamat Manual',
                  textColor: AppColors.primary,
                  buttonColor: AppColors.blueLv5,
                  rounded: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget modalPopUpWithPrice() {
    return SampleWrapper(
      title: 'Modal PopUp with Price',
      widget: AppButton(
        text: 'Modal PopUp with Price',
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: ModalPopup(
              backgroundColor: AppColors.white,
              title: 'Logout',
              miniTitle: 'Are you sure you want to log out?',
              titleColor: AppColors.black,
              directionButton: Axis.vertical,
              price: true,
              textPrice: '29',
              statusPrice: '/night',
              children: [],
              priceButton: () {
                // TODO
              },
            ),
          );
        },
      ),
    );
  }

  Widget modalPopUpWithSlider() {
    return SampleWrapper(
      title: 'Modal PopUp with Slider',
      widget: AppButton(
        text: 'Modal PopUp with Slider',
        onTap: () {
          final navigator = Navigator.of(context);
          AppDialog.show(
            navigator,
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.transparent,
            child: ModalPopup(
              backgroundColor: AppColors.white,
              title: 'Atur Jarak Absen',
              titleColor: AppColors.black,
              directionButton: Axis.vertical,
              slider: true,
              children: [
                AppButton(
                  onTap: () {},
                  text: 'Pilih Lokasi dan Lanjut Isi Alamat',
                  rounded: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}