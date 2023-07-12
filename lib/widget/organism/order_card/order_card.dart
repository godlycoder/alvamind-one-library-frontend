import 'package:alvamind_library/widget/atom/app_divider.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_button.dart';
import '../../molecule/app_card.dart';
import '../../molecule/app_progress_line.dart';
import '../../molecule/app_tags.dart';

class OrderCard extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool? isProgress;
  final bool? isDone;
  final String? dateDone;
  final String? textPrice;
  final String? statusPrice;
  final String? dateProgress;
  final String? statustProgressText;
  final String? dataProgress;
  final String? textLeftButton;
  final String? textRightButton;
  final String? labelingText;
  final double? labelingCount;
  final String? starImageCount;
  final void Function()? functionRightButton;
  final void Function()? functionLeftButton;

  const OrderCard({
    super.key,
    required this.title,
    this.padding,
    this.dataProgress,
    this.isDone,
    this.dateDone,
    this.dateProgress,
    this.isProgress,
    this.statusPrice,
    this.functionLeftButton,
    this.functionRightButton,
    this.labelingText,
    this.labelingCount,
    this.statustProgressText,
    this.textLeftButton,
    this.textPrice,
    this.textRightButton,
    this.starImageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(AppSizes.padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              imageCard(),
              SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isProgress == true ? statusProgress() : SizedBox.shrink(),
                  isProgress == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.bold(size: 20),
                      ),
                      isDone == true ? SizedBox(height: AppSizes.padding / 2) : SizedBox.shrink(),
                      isDone == true
                          ? Text(
                              dateDone ?? '',
                              style: AppTextStyle.regular(size: 14),
                            )
                          : SizedBox.shrink(),
                      SizedBox(height: AppSizes.padding / 2),
                      priceStatus(),
                    ],
                  )
                ],
              )
            ],
          ),
          AppDivider(
            thickness: 2,
            color: AppColors.blackLv8,
            padding: EdgeInsets.symmetric(vertical: AppSizes.padding),
          ),
          //
          // isProgress
          isProgress == true
              ? AppProgressLine(
                  value: labelingCount ?? 20,
                  maxValue: 100,
                  label: labelingText ?? 'Labeling',
                )
              : const SizedBox.shrink(),
          isProgress == true
              ? SizedBox(
                  height: AppSizes.padding,
                )
              : const SizedBox.shrink(),
          //
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton(
                onTap: functionLeftButton ?? () {},
                text: textLeftButton ?? '',
                rounded: true,
                width: 165,
                borderWidth: 2,
                borderColor: AppColors.primary,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
              ),
              AppButton(
                onTap: functionRightButton ?? () {},
                width: 165,
                padding: EdgeInsets.symmetric(
                  vertical: AppSizes.padding / 2.5,
                ),
                text: textRightButton ?? '',
                textColor: AppColors.primary,
                buttonColor: AppColors.white,
                borderWidth: 2,
                borderColor: AppColors.primary,
                rounded: true,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget statusProgress() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dateProgress ?? '',
            style: AppTextStyle.medium(size: 14),
          ),
          SizedBox(
            width: AppSizes.padding * 1.5,
          ),
          const AppTags(
            text: 'Sedang Progress',
            color: AppColors.white,
            textColor: AppColors.primary,
            borderWidth: 1,
            borderColor: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget imageCard() {
    return AppCard(
      onTap: () {},
      backgroundImage: randomImage,
      height: 100,
      width: 100,
      borderRadius: 20,
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.padding / 2,
        horizontal: AppSizes.padding / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppTags(
              text: starImageCount ?? '',
              color: AppColors.blackLv9.withOpacity(0.54),
              borderRadius: 100,
              textColor: AppColors.primary,
              leftIcon: Icons.star,
              iconsColor: AppColors.orangeLv1,
              fontSize: 10,
              padding: EdgeInsets.all(AppSizes.padding / 4),
            ),
          ),
        ],
      ),
    );
  }

  Widget priceStatus() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            isDone == true
                ? const Icon(
                    Icons.attach_money_sharp,
                    color: AppColors.primary,
                    size: 26,
                  )
                : const SizedBox.shrink(),
            Text(
              textPrice ?? '',
              style: AppTextStyle.bold(
                size: 24,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            statusPrice ?? '',
            style: AppTextStyle.medium(
              size: 10,
              color: AppColors.blackLv4,
            ),
          ),
        ),
        isDone == true
            ? SizedBox(
                width: AppSizes.padding / 4,
              )
            : const SizedBox.shrink(),
        isDone == true
            ? const AppTags(
                text: 'Paid',
                color: AppColors.white,
                textColor: AppColors.primary,
                borderWidth: 1,
                borderColor: AppColors.primary,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}