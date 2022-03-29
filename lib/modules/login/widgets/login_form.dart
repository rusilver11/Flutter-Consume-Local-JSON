import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monster_group/modules/login/controller/login_controller.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';
import 'package:monster_group/widgets/default_button.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {

  final loginCtrl = Get.put(LoginController());
  var isObscure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginCtrl.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: loginCtrl.usernameController,
            style: TextStyle(fontSize: 3.0.wp),
            decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Please Input Username'),
            validator: (value) {
              if (value!.isEmpty) return 'Username cannot Empty';
            },
          ),
          SizedBox(height: 3.0.hp),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            controller: loginCtrl.passwordController,
            style: TextStyle(fontSize: 3.0.wp),
            decoration: InputDecoration(
                labelText: 'Password', hintText: 'Please Input Password'),
            validator: (value) {
              if (value!.isEmpty) return 'Password cannot Empty';
            },
          ),
          SizedBox(height: 3.0.hp),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: kSaffron),
            ),
          ),
          SizedBox(height: 3.0.hp),
          DefaultButton(
            text: 'Login',
            press: () {
              if (loginCtrl.formKey.currentState!.validate()) {
                loginCtrl.login();
              }
            },
          ),
        ],
      ),
    );
  }
}
