import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateMpinWidget extends StatefulWidget {
  const CreateMpinWidget({Key? key}) : super(key: key);

  @override
  _CreateMpinWidgetState createState() => _CreateMpinWidgetState();
}

class _CreateMpinWidgetState extends State<CreateMpinWidget> {
  TextEditingController? confirmPinCode;
  TextEditingController? pinCode;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPinCode = TextEditingController();
    pinCode = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    confirmPinCode?.dispose();
    pinCode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Enter  MPIN',
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).dark400,
                              ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      showCursor: true,
                      cursorColor: FlutterFlowTheme.of(context).primaryColor,
                      obscureText: true,
                      obscuringCharacter: '*',
                      hintCharacter: '-',
                      pinTheme: PinTheme(
                        fieldHeight: 60,
                        fieldWidth: 60,
                        borderWidth: 2,
                        borderRadius: BorderRadius.circular(12),
                        shape: PinCodeFieldShape.box,
                        activeColor: Color(0x00000000),
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedColor: Color(0x00000000),
                        activeFillColor: Color(0x00000000),
                        inactiveFillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedFillColor: Color(0x00000000),
                      ),
                      controller: pinCode,
                      onChanged: (_) => {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      'Confirm  MPIN',
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).dark400,
                              ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      enableActiveFill: false,
                      autoFocus: true,
                      showCursor: true,
                      cursorColor: FlutterFlowTheme.of(context).primaryColor,
                      obscureText: true,
                      obscuringCharacter: '*',
                      hintCharacter: '-',
                      pinTheme: PinTheme(
                        fieldHeight: 60,
                        fieldWidth: 60,
                        borderWidth: 2,
                        borderRadius: BorderRadius.circular(12),
                        shape: PinCodeFieldShape.box,
                        activeColor: Color(0x00000000),
                        inactiveColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedColor: Color(0x00000000),
                        activeFillColor: Color(0x00000000),
                        inactiveFillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        selectedFillColor: Color(0x00000000),
                      ),
                      controller: confirmPinCode,
                      onChanged: (_) => {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 40),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('submitButton pressed ...');
                      },
                      text: 'Create',
                      options: FFButtonOptions(
                        width: 170,
                        height: 50,
                        color: Color(0xFFFF9700),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
