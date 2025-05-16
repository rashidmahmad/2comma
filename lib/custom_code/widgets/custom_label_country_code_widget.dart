// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart';

class CustomLabelCountryCodeWidget extends StatefulWidget {
  const CustomLabelCountryCodeWidget({
    super.key,
    this.width,
    this.height,
    this.initialValue,
  });

  final double? width;
  final double? height;
  final String? initialValue;

  @override
  State<CustomLabelCountryCodeWidget> createState() =>
      _CustomLabelCountryCodeWidgetState();
}

class _CustomLabelCountryCodeWidgetState
    extends State<CustomLabelCountryCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      showCountryFlag: false,
      autofocus: false,
      dropdownIcon: Icon(
        Icons.keyboard_arrow_down,
        size: 12,
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'SF UI Font',
            color: FlutterFlowTheme.of(context).tertiary,
            fontSize: 17,
            fontWeight: FontWeight.normal,
            useGoogleFonts: false,
            lineHeight: 1.5,
          ),
      dropdownIconPosition: IconPosition.trailing,
      dropdownTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'SF UI Font',
            color: FlutterFlowTheme.of(context).tertiary,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            useGoogleFonts: false,
            lineHeight: 1.5,
          ),
      dropdownDecoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10)),
      initialValue: widget.initialValue,
      flagsButtonMargin: EdgeInsets.only(left: 16),
      keyboardType: TextInputType.phone,
      cursorColor: FlutterFlowTheme.of(context).tertiary,
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
      decoration: InputDecoration(
        // labelText: "Phone number",
        // labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
        //       fontFamily: 'SF Pro Display',
        //       color: FlutterFlowTheme.of(context).grey400,
        //       fontSize: 13,
        //       useGoogleFonts: false,
        //     ),
        alignLabelWithHint: false,
        label: Text(
          "Phone number",
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'SF UI Font',
                color: FlutterFlowTheme.of(context).tertiary,
                fontSize: 14,
                useGoogleFonts: false,
                lineHeight: 1.2,
              ),
        ),
        hintText: 'Phone number',
        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'SF UI Font',
              color: FlutterFlowTheme.of(context).black40,
              fontSize: 17,
              fontWeight: FontWeight.normal,
              useGoogleFonts: false,
              lineHeight: 1.5,
            ),
        counterText: '',

        // errorText: 'Please enter valid number ',
        errorStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'SF UI Font',
              color: FlutterFlowTheme.of(context).error,
              fontSize: 15,
              fontWeight: FontWeight.normal,
              useGoogleFonts: false,
              lineHeight: 1.5,
            ),
        // contentPadding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        contentPadding: EdgeInsets.only(top: 13, bottom: 12, left: 16),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).darkInput, width: 1)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).darkInput, width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error, width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).darkInput, width: 1)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).darkInput, width: 1)),
      ),
      initialCountryCode: 'IN',
      validator: (num) {
        return "Please enter valid number ";
      },
      invalidNumberMessage: "Please enter valid phone number",
      onChanged: (value) {
        FFAppState().update(() {
          FFAppState().phone = value.number;
        });
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onCountryChanged: (value) {
        FFAppState().update(() {
          FFAppState().countryCode = value.dialCode.toString();
        });
      },
    );
  }
}
