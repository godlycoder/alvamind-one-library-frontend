import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_text_field.dart';

class ChatForm extends StatefulWidget {
  final String textPlaceholder;
  final void Function(String)? onChanged;
  final void Function()? onTapEmoticonButton;
  final void Function()? onTapAddButton;
  final void Function()? onTapCameraButton;
  final void Function()? onTapSendButton;

  const ChatForm({
    super.key,
    required this.textPlaceholder,
    this.onTapAddButton,
    this.onTapCameraButton,
    this.onTapEmoticonButton,
    this.onTapSendButton,
    this.onChanged,
  });

  @override
  State<ChatForm> createState() => _ChatFormState();
}

class _ChatFormState extends State<ChatForm> {
  bool showRightButton = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Material(
            color: AppColors.transparent,
            child: AppTextField(
              hintText: widget.textPlaceholder,
              textInputType: TextInputType.text,
              prefixIcon: Icons.insert_emoticon,
              suffixWidget: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppIconButton(
                    padding: EdgeInsets.all(0),
                    buttonColor: AppColors.transparent,
                    icon: const Icon(
                      Icons.add,
                      size: 18,
                      color: AppColors.blackLv4,
                    ),
                    onTap: widget.onTapAddButton ?? () {},
                  ),
                  SizedBox(
                    width: AppSizes.padding / 2,
                  ),
                  AppIconButton(
                    buttonColor: AppColors.transparent,
                    padding: EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 18,
                      color: AppColors.blackLv4,
                    ),
                    onTap: widget.onTapCameraButton ?? () {},
                  ),
                ],
              ),
              onChanged: widget.onChanged ??
                  (value) {
                    setState(() {
                      showRightButton = false;
                      ;
                    });
                  },
              onEditingComplete: () {
                showRightButton = true;
              },
            ),
          ),
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.blueLv3,
                offset: Offset(
                  0.0,
                  2.0,
                ),
                blurRadius: 10.0,
                spreadRadius: -4.0,
              ), //BoxShadow
            ],
          ),
          child: AppIconButton(
            padding: EdgeInsets.all(18),
            gradient: const [
              AppColors.blueLv2,
              AppColors.blueLv1,
            ],
            icon: const Icon(
              Icons.send,
              color: AppColors.white,
            ),
            onTap: widget.onTapSendButton ?? () {},
          ),
        )
      ],
    );
  }
}
