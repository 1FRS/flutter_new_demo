import 'package:flutter/material.dart';
import 'package:flutter_news/common/values/radii.dart';
import '../../common/utils/screen.dart';
import '../../common/values/colors.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});


  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(60 + 44.0)),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color:AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
          height: 1
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  Widget _buildFeatureItem(String imageName,String intro,double marginTop){
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetWidth(80),
            child: Image.asset( "assets/images/$imageName.png",
              fit: BoxFit.none,),
          ),
          const Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
              ),
            ),
          )
        ],
      ),
    );
  }
  /// 开始按钮
  Widget _buildStartButton(BuildContext context){
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: ElevatedButton(
        onPressed: (){
            Navigator.pushNamed(context, "/sign-in",);
        },
        child: const Text("Get started"),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            const Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),
    );
  }
}

