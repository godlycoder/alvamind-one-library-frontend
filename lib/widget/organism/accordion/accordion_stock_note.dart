import 'package:flutter/material.dart';

import '../../../app/const/countries.dart';
import '../../../app/const/unitWeight.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

import '../../../model/drop_down_model.dart';
import '../../../model/unit_weight_model.dart';
import '../../molecule/app_drop_down.dart';
import '../../molecule/app_expansion_list_tile.dart';
import '../../molecule/app_text_field.dart';

class AccordionStockNote extends StatelessWidget {
  const AccordionStockNote({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    UnitWeightModel _unitWeight = unitWeight.first;
    return AppExpansionListTile(
      title: 'Pengingat Stok',
      expand: true,
      backgroundColor: AppColors.white,
      paddingChild: EdgeInsets.all(AppSizes.padding),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stok minimum Perusahaan',
              style: AppTextStyle.bodyMedium(
                fontWeight: AppFontWeight.medium,
              ),
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: '00.00',
                  ),
                ),
                SizedBox(
                  width: AppSizes.padding / 2,
                ),
                Container(
                  width: 100,
                  child: AppDropDown(
                    hintStyle: AppTextStyle.medium(
                      size: 14,
                      color: AppColors.black,
                    ),
                    iconsColor: AppColors.black,
                    contentPadding: EdgeInsets.all(AppSizes.padding),
                    onTapItem: (item) {
                      _unitWeight = unitWeight.firstWhere((e) => e.codeUnit == item.value);
                    },
                    hintText: 'KG',
                    selectedItem: _unitWeight.textUnit,
                    items: List.generate(
                      countries.length,
                      (i) => DropDownModel(text: unitWeight[i].textUnit, value: unitWeight[i].codeUnit),
                    ),
                    itemsBuilder: (item) {
                      return Text(
                        item.text,
                        style: AppTextStyle.semibold(size: 12),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stok minimum Outlet',
              style: AppTextStyle.bodyMedium(
                fontWeight: AppFontWeight.medium,
              ),
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    hintText: '00.00',
                  ),
                ),
                SizedBox(
                  width: AppSizes.padding / 2,
                ),
                Container(
                  width: 100,
                  child: AppDropDown(
                    hintStyle: AppTextStyle.medium(
                      size: 14,
                      color: AppColors.black,
                    ),
                    iconsColor: AppColors.black,
                    contentPadding: EdgeInsets.all(AppSizes.padding),
                    onTapItem: (item) {
                      _unitWeight = unitWeight.firstWhere((e) => e.codeUnit == item.value);
                    },
                    hintText: 'KG',
                    selectedItem: _unitWeight.textUnit,
                    items: List.generate(
                      countries.length,
                      (i) => DropDownModel(text: unitWeight[i].textUnit, value: unitWeight[i].codeUnit),
                    ),
                    itemsBuilder: (item) {
                      return Text(
                        item.text,
                        style: AppTextStyle.semibold(size: 12),
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
