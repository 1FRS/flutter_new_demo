import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/screen.dart';
import 'package:flutter_news/common/values/colors.dart';
import 'package:flutter_news/common/values/radii.dart';
import 'package:flutter_news/common/values/shadows.dart';
import 'package:flutter_news/common/widgets/button.dart';
import 'package:flutter_news/common/widgets/input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // email的控制器
  final TextEditingController _emailController = TextEditingController();
  // 密码的控制器
  final TextEditingController _passController = TextEditingController();
  //跳转
  _handleNavSignUp(){
    Navigator.pushNamed(context, "/sign-up");
  }

  _handleNavSignIn(){
    Navigator.pushNamed(context, "/sign-application");
  }

  Widget _buildLogo(){
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(40+44.0)), // 顶部系统栏 44px
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: duSetWidth(76),
            width: duSetWidth(76),
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: duSetWidth(76),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: const [
                          Shadows.primaryShadow,
                        ],
                        borderRadius: BorderRadius.all(
                            Radius.circular(duSetWidth(76*0.5))),
                      ),
                      child: Container(),
                    ),
                ),
                Positioned(
                  top: duSetWidth(13),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              "SECTOR",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: duSetFontSize(24),
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputForm(){
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(top: duSetHeight(49)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            inputTextEdit(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                marginTop: 0,
            ),
            inputTextEdit(
                controller: _passController,
                keyboardType: TextInputType.visiblePassword,
                hintText: "Password",
                isPassword: true,
            ),
          Container(
            height: duSetHeight(44),
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Row(
              children: [
                btnFlatButtonWidget(
                    onPressed: _handleNavSignUp,
                    gbColor: AppColors.thirdElement,
                    title: "Sign Up",
                ),
                const Spacer(),
                btnFlatButtonWidget(
                    onPressed: _handleNavSignIn,
                    gbColor: AppColors.primaryElement,
                  title: "Sign in"
                ),
              ],
            ),
          ),
          Container(
            height: duSetHeight(22),
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: TextButton(
                onPressed: (){},
                child: Text(
                  "Fogot password?",
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.secondaryElementText,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.w400,
                      fontSize: duSetFontSize(16),
                      height: 1, // 设置下行高，否则字体下沉
                    ),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildThirdPartyLogin(){
    return Container(
      width: duSetWidth(295),
      margin: EdgeInsets.only(bottom: duSetHeight(40)),
      child: Column(
        children: [
          Text(
            "Or sign in with social networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: duSetFontSize(16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: duSetHeight(20)),
            child: Row(
              children: [
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "twitter",
                ),
                const Spacer(),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "google",
                ),
                const Spacer(),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "facebook",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupButton(){
    return Container(
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: btnFlatButtonWidget(
          onPressed: _handleNavSignUp,
        width: 294,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
        title: "Sign up",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildInputForm(),
            const Spacer(),
            _buildThirdPartyLogin(),
            _buildSignupButton()
          ],
        ),
      ),
    );
  }
}

