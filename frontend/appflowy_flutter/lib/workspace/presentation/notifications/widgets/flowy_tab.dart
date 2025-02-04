import 'package:appflowy/util/platform_extension.dart';
import 'package:flowy_infra/theme_extension.dart';
import 'package:flowy_infra_ui/style_widget/text.dart';
import 'package:flutter/material.dart';

class FlowyTabItem extends StatelessWidget {
  static const double mobileHeight = 40;
  static const EdgeInsets mobilePadding = EdgeInsets.symmetric(horizontal: 12);

  static const double desktopHeight = 26;
  static const EdgeInsets desktopPadding = EdgeInsets.symmetric(horizontal: 8);

  const FlowyTabItem({
    super.key,
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: PlatformExtension.isMobile ? mobileHeight : desktopHeight,
      child: Padding(
        padding: PlatformExtension.isMobile ? mobilePadding : desktopPadding,
        child: FlowyText.regular(
          label,
          color: isSelected
              ? AFThemeExtension.of(context).textColor
              : Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
