import 'package:flutter/material.dart';

class SearchInputDecoration extends InputDecoration {
  final TextCapitalization textCapitalization;
  final TextStyle? searchStyle;
  final Color cursorColor;

  SearchInputDecoration({
    this.textCapitalization = TextCapitalization.none,
    this.searchStyle,
    this.cursorColor = Colors.black,
    super.hintText,
    super.prefixIcon,
    super.suffixIcon,
    super.border,
  });

  @override
  SearchInputDecoration copyWith({
    TextCapitalization? textCapitalization,
    TextStyle? searchStyle,
    Color? cursorColor,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    InputBorder? border,
  }) {
    return SearchInputDecoration(
      textCapitalization: textCapitalization ?? this.textCapitalization,
      searchStyle: searchStyle ?? this.searchStyle,
      cursorColor: cursorColor ?? this.cursorColor,
      hintText: hintText ?? this.hintText,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      border: border ?? this.border,
    );
  }
}
