import 'package:flutter/material.dart';

import '../../core/assets/colors.dart';
import '../../core/assets/images.dart';
import '../../core/icons/TfIcons_icons.dart';
import '../../widgets/default_primary_input_field.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.04, horizontal: size.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  IconButton(
                      icon: const Icon(
                        TfIcons.arrow_back,
                        color: TfColors.primary,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: size.width * 0.1,
                          backgroundImage: AssetImage(TfImages.userimage),
                        ),
                      ),
                      IconButton(
                          icon: Opacity(
                            opacity: 0.4,
                            child: Transform.translate(
                              offset: const Offset(18, 45),
                              child: const Icon(
                                TfIcons.edit,
                                color: TfColors.primary,
                                size: 10,
                              ),
                            ),
                          ),
                          onPressed: () {}),
                    ],
                  ),
                  const Opacity(
                      opacity: 0,
                      child: IconButton(
                          icon: Icon(TfIcons.arrow_back), onPressed: null)),
                ],
              ),
            ),
            const DefaultPrimaryTextInputField(
              description: "First Name",
              
            ),
            const DefaultPrimaryTextInputField(
              description: "Last Name",
            ),
            const DefaultPrimaryTextInputField(
              description: "Email",
              canVerify: true,
            ),
            const DefaultPrimaryTextInputField(
              description: "Phone Number",
              canVerify: true,
            ),
            Transform.translate(
              offset: const Offset(0, -10),
              child: SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.05,
                child: const Divider(),
              ),
            ),
            const DefaultPrimaryTextInputField(
              description: "Address",
            ),
            const DefaultPrimaryTextInputField(
              description: "City",
            ),
            const DefaultPrimaryTextInputField(
              description: "Zipcode/PoBox",
            ),
            const DefaultPrimaryTextInputField(
              description: "State",
            ),
          ],
        ),
      ),
    );
  }
}
