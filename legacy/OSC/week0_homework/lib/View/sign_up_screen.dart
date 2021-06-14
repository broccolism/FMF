import 'dart:io';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static Color orangeColor = Colors.orange[600];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _topContents(),
              _bottomText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _prevScreenIcon(),
        _signUpText(),
        _signUpButtons(),
      ],
    );
  }

  Widget _prevScreenIcon() {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Icon(
        Icons.arrow_back_ios,
        color: orangeColor,
      ),
    );
  }

  Widget _signUpText() {
    return Padding(
      padding: EdgeInsets.only(bottom: 32, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "열정 품은 타이머",
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "가입하기",
            style: TextStyle(
              color: orangeColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _signUpButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: _buttonDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.mail, color: Colors.black38),
              Expanded(
                child: Text(
                  "이메일로 시작하기",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: _buttonDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/facebook.png',
                width: 24,
              ),
              Expanded(
                child: Text(
                  "페이스북으로 시작하기",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: _buttonDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/kakao.png',
                width: 24,
              ),
              Expanded(
                child: Text(
                  "카카오로 시작하기",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: _buttonDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/naver.png',
                width: 24,
              ),
              Expanded(
                child: Text(
                  "네이버로 시작하기",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        _appleLogin(),
      ],
    );
  }

  Widget _appleLogin() {
    if (Platform.isIOS) {
      Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: _buttonDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/apple.png',
              width: 24,
            ),
            Expanded(
              child: Text(
                "Apple로 로그인",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Container();
  }

  Widget _bottomText() {
    return Container(
      height: 120,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "이미 계정이 있나요?",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              "로그인",
              style: TextStyle(
                fontSize: 16,
                color: orangeColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buttonDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Colors.black12,
      ),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    );
  }
}
