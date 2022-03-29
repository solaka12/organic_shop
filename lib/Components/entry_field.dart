import 'package:flutter/material.dart';
import 'package:organic_shop/Theme/colors.dart';

class EntryField extends StatefulWidget {
    TextEditingController? controller;
    String? label;
    String? image;
    String? initialValue;
    bool? readOnly;
    TextInputType? keyboardType;
    int? maxLength;
    int? maxLines;
    String? hint;
    IconData? suffixIcon;
    Function? onTap;
    TextCapitalization? textCapitalization;
    Function? onSuffixPressed;
    double? horizontalPadding;
    double? verticalPadding;
    FontWeight? labelFontWeight;
    double? labelFontSize;
    Color? underlineColor;
    TextStyle? hintStyle;

  EntryField(
  {Key? key,   this.controller,
    this.label,
    this.image,
    this.initialValue,
    this.readOnly,
    this.keyboardType,
    this.maxLength,
    this.hint,
    this.suffixIcon,
    this.maxLines,
    this.onTap,
    this.textCapitalization,
    this.onSuffixPressed,
    this.horizontalPadding,
    this.verticalPadding,
    this.labelFontWeight,
    this.labelFontSize,
    this.underlineColor,
    this.hintStyle,
  }) : super(key: key) {
    // TODO: implement 

  }

  @override
  _EntryFieldState createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  bool showShadow = false;
  bool showBorder = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalPadding ?? 20.0,
          vertical: widget.verticalPadding ?? 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(widget.label ?? '',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: kMainTextColor,
                  fontWeight: widget.labelFontWeight ?? FontWeight.bold,
                  fontSize: widget.labelFontSize ?? 21.7)),
          TextField(
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.sentences,
            cursorColor: kMainColor,
            autofocus: false,
            onEditingComplete: () {
              setState(() {
                showShadow = false;
              });
            },
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!();
              }
              setState(() {
                showShadow = true;
                showBorder = true;
              });
            },
            controller: widget.controller,
            readOnly: widget.readOnly ?? false,
            keyboardType: widget.keyboardType,
            minLines: 1,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines ?? 1,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: widget.underlineColor ?? Colors.grey), //Colors.grey[200]
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    widget.suffixIcon,
                    size: 40.0,
                    color: Theme.of(context).backgroundColor,
                  ),
                  onPressed:  null,
                 // onPressed: (widget.onSuffixPressed)! ?? null,
                ),
                hintText: widget.hint,
                hintStyle: widget.hintStyle ??
                    Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: kHintColor, fontSize: 18.3)),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
