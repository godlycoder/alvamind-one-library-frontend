import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/view/samples/sample_wrapper.dart';
import 'package:alvamind_library/widget/atom/app_image.dart';
import 'package:alvamind_library/widget/organism/item_card/item_card_image.dart';
import 'package:alvamind_library/widget/organism/item_card/item_card_list.dart';
import 'package:alvamind_library/widget/organism/item_card/item_card_list_select_done.dart';
import 'package:alvamind_library/widget/organism/item_card/item_card_list_selected.dart';
import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';

class ItemCardsSamplesView extends StatefulWidget {
  const ItemCardsSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-item-cards-samples';

  @override
  State<ItemCardsSamplesView> createState() => _ItemCardsSamplesViewState();
}

class _ItemCardsSamplesViewState extends State<ItemCardsSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv9,
      appBar: AppBar(title: const Text('Item Cards Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemCardImage(),
            itemCardList(),
            Row(
              children: [
                itemCardListVerticalMode(),
              ],
            ),
            itemCardListSelectedDetail(),
            itemCardListSelected(),
            itemCardListSelectedDone(),
          ],
        ),
      ),
    );
  }

  Widget itemCardImage() {
    return SampleWrapper(
      title: 'Default Statistic Square',
      widget: ItemCardImage(
        image: randomImage,
        stars: '5.0',
        title: 'Title Here',
        subtitle: 'Subtitle here',
        price: 10000,
        onTapCard: () {},
        onTapLikeButton: () {},
      ),
    );
  }

  Widget itemCardList() {
    return const SampleWrapper(
      title: 'ItemCardList',
      widget: ItemCardList(
        starImageCount: '50',
        title: 'Barokah\nLaundry',
        isList: true,
        textPrice: 'Rp.00',
        statusPrice: '/00 days',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
      ),
    );
  }

  Widget itemCardListVerticalMode() {
    return SampleWrapper(
      title: 'ItemCardList Vertical',
      widget: ItemCardList(
        starImageCount: '50',
        title: 'Barokah Laundry',
        isVertical: true,
        textPrice: 'Rp.00',
        statusPrice: '/00 days',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.padding,
          vertical: AppSizes.padding,
        ),
      ),
    );
  }

  Widget itemCardListSelectedDetail() {
    return const SampleWrapper(
      title: 'ItemCardList Selected Original ',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isList: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
      ),
    );
  }

  Widget itemCardListSelected() {
    return const SampleWrapper(
      title: 'ItemCardList Selected',
      widget: ItemCardListSelected(
        starImageCount: '50',
        title: 'Cuci Kering',
        isSelected: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
      ),
    );
  }

  Widget itemCardListSelectedDone() {
    return const SampleWrapper(
      title: 'ItemCardList Selected',
      widget: ItemCardListSelectedDone(
        starImageCount: '50',
        title: 'Cuci Kering',
        isSelected: true,
        textPrice: 'Rp7rb',
        statusPrice: '/kg',
        dateProgress: '2 Agustus 2023',
        textLeftButton: 'Detail Pesanan',
        textRightButton: 'Lacak Pengiriman',
      ),
    );
  }
}
