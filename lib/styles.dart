import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 25.0;
  static const _textSizeDefault = 16.0;
  static final Color _textColorStrong = Color(0xFF000000);
  static final Color _textColorDefault = Color(0xFF666666);
  static final String _fontNameDefault = 'Muli';
  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );

  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );
}
