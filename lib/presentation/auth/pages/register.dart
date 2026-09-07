import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_app/common/widgets/feilds/custom_text_form_field.dart';
import 'package:spotify_app/core/configs/assets/app_icon.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/styles.dart';
import 'package:spotify_app/core/configs/theme/app_color.dart';
import 'package:spotify_app/data/models/auth/create_user_request.dart';
import 'package:spotify_app/domain/usecase/auth/signup.dart';
import 'package:spotify_app/presentation/auth/pages/sign_in.dart';
import 'package:spotify_app/presentation/auth/widgets/arrow_back_icon.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_app_bar.dart';
import 'package:spotify_app/presentation/home/pages/home_page.dart';
import 'package:spotify_app/service_locator.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          kToolbarHeight,
        ), // Set your desired height
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Register', style: Styles.bold30(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If You Need Any Support',
                  style: Styles.regular14(context),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Click Here',
                    style: Styles.regular14(
                      context,
                    ).copyWith(color: AppColor.primary),
                  ),
                ),
              ],
            ),
            Gap(38),
            CustomTextFormField(controller: _fullName, text: 'Full Name'),
            Gap(16),
            CustomTextFormField(controller: _email, text: 'Enter Email'),
            Gap(16),
            CustomTextFormField(
              controller: _password,
              text: 'Password',
              icon: AppIcon.eyeSlash,
            ),
            Gap(22),
            BasicAppButton(
              onPress: () async {
                var result = await sl<SignupUseCase>().call(
                  params: CreateUserRequest(
                    fullName: _fullName.text.toString(),
                    email: _email.text.toString(),
                    password: _password.text.toString(),
                  ),
                );
                result.fold(
                  (l) {
                    var snackBar = SnackBar(content: Text(l));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  (r) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (root) => false,
                    );
                  },
                );
              },
              text: 'Create Account',
              fontWeight: FontWeight.bold,
            ),
            Gap(31),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1, color: AppColor.grey)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('Or', style: Styles.regular14(context)),
                ),
                Expanded(child: Divider(thickness: 1, color: AppColor.grey)),
              ],
            ),
            Gap(44),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcon.google, fit: BoxFit.none),
                Gap(58.28),
                SvgPicture.asset(AppIcon.apple, fit: BoxFit.none),
              ],
            ),
            Gap(57),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do You Have An Account',
                  style: Styles.regular16(
                    context,
                  ).copyWith(color: AppColor.darkGrey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Sign In',
                    style: Styles.bold16(
                      context,
                    ).copyWith(color: AppColor.blueTextButton),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
