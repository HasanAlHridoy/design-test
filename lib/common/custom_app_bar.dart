import 'package:design_test/common/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,

      // Removes the shadow
      backgroundColor: Colors.transparent,
      // Adjust color as needed
      leading: Padding(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/images/avatar.png')),
      centerTitle: true,
      title: const Text(
        "Home",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            child: GradientButton(
              verticalPadding: 0,
              leadingIcon: SvgPicture.asset('assets/images/pro_icon.svg'),
              horizontalPadding: 16,
              text: 'Get Pro',
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
