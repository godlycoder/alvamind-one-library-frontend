import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

import '../../widget/molecule/app_card_container.dart';
import '../../widget/molecule/app_column_ink.dart';

import '../../widget/molecule/app_icon_button.dart';
import '../../widget/molecule/app_tags.dart';
import '../../widget/molecule/app_text_field.dart';
import '../../widget/organism/attedance_card/attedance_card.dart';
import '../../widget/organism/showcase_card/showcase_user_profile_card.dart';
import '../../widget/organism/tab _detail_outlet/tab_detail_outlet.dart';

import '../../widget/organism/table_organism/table_history_trasaction.dart';
import '../../widget/organism/tags_organism.dart/tags_organism.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import 'sample_wrapper.dart';

class UserProfileContainerEmployeeSamplesView extends StatefulWidget {
  const UserProfileContainerEmployeeSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-user-profile-container-employee-samples';

  @override
  State<UserProfileContainerEmployeeSamplesView> createState() => _UserProfileContainerEmployeeSamplesViewState();
}

class _UserProfileContainerEmployeeSamplesViewState extends State<UserProfileContainerEmployeeSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile Container Employee Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userProfileContainerTab(),
          ],
        ),
      ),
    );
  }

  int tabBarSelected = 0;
  int tagSelected = 0;

  Widget userProfileContainerTab() {
    return SampleWrapper(
      title: 'User Profile Container Employee List',
      widget: AppColumnInk(
        children: [
          TabBarDetailOutlet(
            leftIcon: const [
              CustomIcon.chartCurvedIcon,
              CustomIcon.timesquareIcon,
              CustomIcon.timesquareIcon,
              CustomIcon.timesquareIcon,
            ],
            listTabBar: const [
              'Ringkasan',
              'Presensi',
              'Gaji',
              'Komisi',
            ],
            onTap: (value) {
              // TODO
              setState(() {
                tabBarSelected = value;
              });
            },
          ),
          SizedBox(height: AppSizes.padding * 2),
          tabBarSelected == 0
              ? Center()
              : tabBarSelected == 1
                  ? employeeAttedanceListBody()
                  : tabBarSelected == 2
                      ? tableHistory()
                      : tableHistory()
        ],
      ),
    );
  }

// ======

  Widget tableHistory() {
    return AppColumnInk(children: [
      Row(
        children: [
          Expanded(
            child: AppTextField(
              suffixIcon: Icons.search,
              hintText: 'Search..',
              onChanged: (value) {},
              onEditingComplete: () {},
            ),
          ),
          SizedBox(
            width: AppSizes.padding / 2,
          ),
          AppIconButton(
            borderRadius: 15,
            icon: const Icon(
              Icons.sim_card_download_rounded,
              color: AppColors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
      SizedBox(
        height: AppSizes.padding,
      ),
      TableHistoryTransaction(),
    ]);
  }

//
  Widget employeeAttedanceListBody() {
    return SampleWrapper(
      title: 'Attedance Card',
      widget: AppCardContainer(
        backgroundColor: AppColors.transparent,
        padding: EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(0),
        child: Column(
          children: [
            UserProfileCard(
              onlyUser: true,
              onlyEmployee: true,
              nameUser: 'Amber Winston',
              idUser: 'ID Profil 5457383979',
              employeePlace: 'Barokah Laundry',
              employeeJob: 'Kasir, Produksi',
              onTapCopyButton: () {
                // TODO
              },
              onTapDetailButton: () {
                // TODO
              },
            ),
            SizedBox(height: AppSizes.padding),
            ListCard(
              leftIcon: CustomIcon.walletBoldIcon,
              rightIcon: Icons.chevron_right_rounded,
              title: 'Selasa, 23 Juni 2023',
              subtitle: 'Status Complain',
              textTags: 'Proses',
              onTapChevronButton: () {
                // TODO
              },
              onTapCard: () {
                // TODO
              },
            ),
            SizedBox(height: AppSizes.padding),
            TagsOrganism(
              listChips: const [
                'Semua',
                'Terlambat',
                'Masuk Kerja',
                'Tidak Masuk Kerja',
                'Izin',
              ],
              onTap: (value) {
                // TODO
              },
            ),
            SizedBox(height: AppSizes.padding * 1.5),
            const AppTags(
              text: '2 Agustus 2023',
              color: AppColors.blackLv8,
              textColor: AppColors.blackLv3,
            ),
            SizedBox(height: AppSizes.padding * 1.5),
            ...List.generate(3, (i) {
              return Padding(
                padding: i == 2
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(
                        bottom: AppSizes.padding,
                      ),
                child: AttedanceCard(
                  dateAttedance: '2 Agustus 2023',
                  timeStart: '08:00 AM',
                  timeEnd: i == 1
                      ? '-'
                      : i == 2
                          ? '-'
                          : '18:00 PM',
                  statusTags: AppTags(
                    text: i == 1
                        ? 'Terlambat'
                        : i == 2
                            ? 'Tidak Masuk Kerja'
                            : 'Masuk Kerja',
                    borderColor: i == 1
                        ? AppColors.yellowLv1
                        : i == 2
                            ? AppColors.redLv1
                            : AppColors.greenLv1,
                    textColor: i == 1
                        ? AppColors.yellowLv1
                        : i == 2
                            ? AppColors.redLv1
                            : AppColors.greenLv1,
                    borderWidth: 1,
                    color: AppColors.transparent,
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
//
}
