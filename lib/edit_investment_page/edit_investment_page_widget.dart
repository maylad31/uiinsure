import '../backend/api_requests/api_calls.dart';
import '../components/nominee_show_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditInvestmentPageWidget extends StatefulWidget {
  const EditInvestmentPageWidget({
    Key? key,
    this.id,
    this.category,
  }) : super(key: key);

  final String? id;
  final String? category;

  @override
  _EditInvestmentPageWidgetState createState() =>
      _EditInvestmentPageWidgetState();
}

class _EditInvestmentPageWidgetState extends State<EditInvestmentPageWidget> {
  ApiCallResponse? apiResultjex;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  ApiCallResponse? editDocumentOutput;
  String? formDropdownValue;
  String? typeDropDownValue;
  TextEditingController? bankNameTextFieldController;
  TextEditingController? insurerTextFieldController;
  TextEditingController? providerTextFieldController;
  TextEditingController? storagePlaceTextFieldController;
  TextEditingController? folioNoTextFieldController;
  TextEditingController? accountNoTextFieldController;
  TextEditingController? insurancePolicyNoTextFieldController;
  TextEditingController? branchNameTextFieldController;
  TextEditingController? addressTextFieldController;
  TextEditingController? commentsTextFieldController;

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      apiResultjex = await GetnomineesfordocumentCall.call(
        jwt: FFAppState().token,
        id: widget.id,
      );
      if ((apiResultjex?.succeeded ?? true)) {
        FFAppState().update(() {
          FFAppState().nomineemails = (getJsonField(
            (apiResultjex?.jsonBody ?? ''),
            r'''$.nominees''',
          ) as List)
              .map<String>((s) => s.toString())
              .toList()!
              .toList();
        });
      }
    });
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    accountNoTextFieldController?.dispose();
    bankNameTextFieldController?.dispose();
    insurerTextFieldController?.dispose();
    providerTextFieldController?.dispose();
    storagePlaceTextFieldController?.dispose();
    folioNoTextFieldController?.dispose();
    insurancePolicyNoTextFieldController?.dispose();
    branchNameTextFieldController?.dispose();
    addressTextFieldController?.dispose();
    commentsTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: ViewDocumentCall.call(
        jwt: FFAppState().token,
        id: widget.id,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitCubeGrid(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final editInvestmentPageViewDocumentResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).customColor1,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                context.pop();
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).dark400,
                size: 24,
              ),
            ),
            title: Text(
              'Edit Insurance',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: FutureBuilder<ApiCallResponse>(
              future: GetnomineesfordocumentCall.call(
                jwt: FFAppState().token,
                id: widget.id,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitCubeGrid(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        size: 50,
                      ),
                    ),
                  );
                }
                final editInsuranceFormGetnomineesfordocumentResponse =
                    snapshot.data!;
                return Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.category == 'insurance')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: insurerTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.insurer''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Insurance Company Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'mutual_fund')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: providerTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.provider''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Mutual Fund Provider',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'jewellery')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: storagePlaceTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.decrypted_storage_place''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Storage Place',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if ((widget.category == 'bank_account') ||
                              (widget.category == 'bank_investment'))
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: bankNameTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.bank_name''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Bank Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if ((widget.category == 'insurance') ||
                              (widget.category == 'mutual_fund') ||
                              (widget.category == 'real_estate') ||
                              (widget.category == 'jewellery') ||
                              (widget.category == 'bank_account') ||
                              (widget.category == 'bank_investment'))
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: FlutterFlowDropDown<String>(
                                initialOption: typeDropDownValue ??=
                                    getJsonField(
                                  editInvestmentPageViewDocumentResponse
                                      .jsonBody,
                                  r'''$.type''',
                                ).toString(),
                                options: () {
                                  if (widget.category == 'insurance') {
                                    return FFAppState().insuranceType;
                                  } else if (widget.category == 'mutual_fund') {
                                    return FFAppState().mutualFundType;
                                  } else if (widget.category ==
                                      'bank_account') {
                                    return FFAppState().bankAccountType;
                                  } else if (widget.category ==
                                      'bank_investment') {
                                    return FFAppState().bankInvestmentType;
                                  } else if (widget.category == 'jewellery') {
                                    return FFAppState().jewelleryType;
                                  } else {
                                    return FFAppState().realEstateType;
                                  }
                                }()
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => typeDropDownValue = val),
                                width: double.infinity,
                                height: 60,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Type',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 15,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                borderColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderWidth: 2,
                                borderRadius: 8,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    24, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          if (widget.category == 'mutual_fund')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: folioNoTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.decrypted_folio_number''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Folio Number',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'jewellery')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                              child: FlutterFlowDropDown<String>(
                                initialOption: formDropdownValue ??=
                                    getJsonField(
                                  editInvestmentPageViewDocumentResponse
                                      .jsonBody,
                                  r'''$.form''',
                                ).toString(),
                                options: ['Physical', 'Digital'],
                                onChanged: (val) =>
                                    setState(() => formDropdownValue = val),
                                width: double.infinity,
                                height: 60,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Form ',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 15,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                borderColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderWidth: 2,
                                borderRadius: 8,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    24, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          if ((widget.category == 'bank_account') ||
                              (widget.category == 'bank_investment'))
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: accountNoTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.decrypted_account_number''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Account Number',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'insurance')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller:
                                    insurancePolicyNoTextFieldController ??=
                                        TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.decrypted_policy_number''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Policy Number',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'bank_account')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: branchNameTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.branch_name''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Branch Name',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if (widget.category == 'real_estate')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                              child: TextFormField(
                                controller: addressTextFieldController ??=
                                    TextEditingController(
                                  text: getJsonField(
                                    editInvestmentPageViewDocumentResponse
                                        .jsonBody,
                                    r'''$.property_address''',
                                  ).toString(),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Address',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 32, 20, 12),
                                ),
                                style: FlutterFlowTheme.of(context).title3,
                                textAlign: TextAlign.start,
                                maxLines: 3,
                              ),
                            ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                            child: TextFormField(
                              controller: commentsTextFieldController ??=
                                  TextEditingController(
                                text: getJsonField(
                                  editInvestmentPageViewDocumentResponse
                                      .jsonBody,
                                  r'''$.comments''',
                                ).toString(),
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Enter comments here...',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 32, 20, 12),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.start,
                              maxLines: 4,
                              keyboardType: TextInputType.multiline,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'Nominees',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    40, 10, 40, 0),
                                child: Builder(
                                  builder: (context) {
                                    final nominees =
                                        FFAppState().nomineemails.toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: nominees.length,
                                      itemBuilder: (context, nomineesIndex) {
                                        final nomineesItem =
                                            nominees[nomineesIndex];
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.person_pin_circle_sharp,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                nomineesItem,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height: 500,
                                        child: NomineeShowWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: 'Update nominees',
                              icon: Icon(
                                Icons.add,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 190,
                                height: 40,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                editDocumentOutput =
                                    await EditDocumentCall.call(
                                  jwt: FFAppState().token,
                                  comments:
                                      commentsTextFieldController?.text ?? '',
                                  folioNumber:
                                      folioNoTextFieldController?.text ?? '',
                                  form: folioNoTextFieldController?.text ?? '',
                                  accountNumber:
                                      accountNoTextFieldController?.text ?? '',
                                  storagePlace:
                                      storagePlaceTextFieldController?.text ??
                                          '',
                                  policyNumber:
                                      insurancePolicyNoTextFieldController
                                              ?.text ??
                                          '',
                                  branchName:
                                      branchNameTextFieldController?.text ?? '',
                                  provider:
                                      providerTextFieldController?.text ?? '',
                                  type: typeDropDownValue,
                                  insurer:
                                      insurerTextFieldController?.text ?? '',
                                  bankName:
                                      bankNameTextFieldController?.text ?? '',
                                  propertyAddress:
                                      addressTextFieldController?.text ?? '',
                                  id: widget.id,
                                );
                                if ((editDocumentOutput?.statusCode ?? 200) ==
                                    200) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'nominee added',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                  context.pop();
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'nominee added failure',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              text: 'Save',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFFFF9700),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
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
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
