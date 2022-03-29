import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:monster_group/modules/login/controller/login_controller.dart';
import 'package:monster_group/modules/login/widgets/login_form.dart';
import 'package:monster_group/utils/constant.dart';
import 'package:monster_group/utils/extension.dart';
import 'package:monster_group/utils/size_config.dart';
import 'package:monster_group/widgets/background.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(automaticallyImplyLeading: false),
        body: SafeArea(
          child: BackgroundBase(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding + 2.0.wp),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    width: 35.0.wp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kBrown, width: 0.5.wp),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0,
                              spreadRadius: 0.0,
                              offset: Offset(0.5, 3.0))
                            ],
                        shape: BoxShape.circle
                        ),
                    child: const ClipRRect(
                      child: Image(
                        image: AssetImage('assets/images/coffee-bag.png')),
                    ),
                  ),
                  SizedBox(height: 8.5.hp),
                  FormLogin(),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

