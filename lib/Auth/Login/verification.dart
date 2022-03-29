//
import 'package:flutter/material.dart';
import 'package:organic_shop/Components/custom_button.dart';
import 'package:organic_shop/Components/entry_field.dart';
import 'package:organic_shop/Locale/locales.dart';
import 'package:organic_shop/Theme/colors.dart';

class VerificationPage extends StatefulWidget {
  final VoidCallback onVerificationDone;

  VerificationPage(this.onVerificationDone);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (locale?.verification)!,
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 48),
            child: Text(
              (locale?.pleaseEnterVerificationCodeSentGivenNumber)!,
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 28.0, left: 18, right: 18, bottom: 4),
            child: Text(
              (locale?.enterVerificationCode)!,
              style: Theme.of(context).textTheme.headline3?.copyWith(
                  fontSize: 22,
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          EntryField(
            hint: (locale?.enterVerificationCode)!,
          ),
          Spacer(),
          CustomButton(
            onTap: widget.onVerificationDone, color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
