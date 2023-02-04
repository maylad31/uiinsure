import '../backend/api_requests/api_calls.dart';
import '../components/nominee_show_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddInvestmentPageWidget extends StatefulWidget {
  const AddInvestmentPageWidget({
    Key? key,
    this.category,
  }) : super(key: key);

  final String? category;

  @override
  _AddInvestmentPageWidgetState createState() =>
      _AddInvestmentPageWidgetState();
}

class _AddInvestmentPageWidgetState extends State<AddInvestmentPageWidget> {
  ApiCallResponse? addDocumentOutput;
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
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    accountNoTextFieldController = TextEditingController();
    bankNameTextFieldController = TextEditingController();
    insurerTextFieldController = TextEditingController();
    providerTextFieldController = TextEditingController();
    storagePlaceTextFieldController = TextEditingController();
    folioNoTextFieldController = TextEditingController();
    insurancePolicyNoTextFieldController = TextEditingController();
    branchNameTextFieldController = TextEditingController();
    addressTextFieldController = TextEditingController();
    commentsTextFieldController = TextEditingController();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor1,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: FlutterFlowTheme.of(context).dark400,
          size: 24,
        ),
        title: Text(
          'Add Insurance',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (widget.category == 'insurance')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: insurerTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Insurance Company Name',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'mutual_fund')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: providerTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Mutual Fund Provider',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'jewellery')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: storagePlaceTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Storage Place',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if ((widget.category == 'bank_account') ||
                      (widget.category == 'bank_investment'))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: bankNameTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Bank Name',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
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
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: FlutterFlowDropDown<String>(
                        options: () {
                          if (widget.category == 'insurance') {
                            return FFAppState().insuranceType;
                          } else if (widget.category == 'mutual_fund') {
                            return FFAppState().mutualFundType;
                          } else if (widget.category == 'bank_account') {
                            return FFAppState().bankAccountType;
                          } else if (widget.category == 'bank_investment') {
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
                        textStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintText: 'Type',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 15,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).grayIcon,
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  if (widget.category == 'mutual_fund')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: folioNoTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Folio Number',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'jewellery')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                      child: FlutterFlowDropDown<String>(
                        options: ['Physical', 'Digital'],
                        onChanged: (val) =>
                            setState(() => formDropdownValue = val),
                        width: double.infinity,
                        height: 60,
                        textStyle: FlutterFlowTheme.of(context).bodyText1,
                        hintText: 'Form ',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 15,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2,
                        borderColor: FlutterFlowTheme.of(context).grayIcon,
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(24, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  if ((widget.category == 'bank_account') ||
                      (widget.category == 'bank_investment'))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: accountNoTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Account Number',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'insurance')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: insurancePolicyNoTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Policy Number',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'bank_account')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: branchNameTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Branch Name',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).grayIcon,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  if (widget.category == 'real_estate')
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                      child: TextFormField(
                        controller: addressTextFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: FlutterFlowTheme.of(context)
                              .title3
                              .override(
                                fontFamily: 'Outfit',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                              EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                        ),
                        style: FlutterFlowTheme.of(context).title3,
                        textAlign: TextAlign.start,
                        maxLines: 3,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: TextFormField(
                      controller: commentsTextFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText:
                            'Enter any instructions you feel would be helpful for your family here, such as \"contact Mr. Sharma.\"',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grayIcon,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grayIcon,
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
                            EdgeInsetsDirectional.fromSTEB(20, 32, 20, 12),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  if (FFAppState().nomineemails.length == 0)
                    Text(
                      'You haven\'t added any nominees yet',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.of(context).viewInsets,
                              child: Container(
                                height: 500,
                                child: NomineeShowWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      text: 'Add nominees',
                      icon: Icon(
                        Icons.add,
                        size: 15,
                      ),
                      options: FFButtonOptions(
                        width: 160,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                  if (FFAppState().nomineemails.length > 0)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Nominees',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                          child: Builder(
                            builder: (context) {
                              final addedNominees =
                                  FFAppState().nomineemails.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: addedNominees.length,
                                itemBuilder: (context, addedNomineesIndex) {
                                  final addedNomineesItem =
                                      addedNominees[addedNomineesIndex];
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_pin_circle_sharp,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          addedNomineesItem,
                                          style: FlutterFlowTheme.of(context)
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        addDocumentOutput = await AddDocumentCall.call(
                          jwt: FFAppState().token,
                          comments: commentsTextFieldController!.text,
                          insurer: insurerTextFieldController!.text,
                          type: typeDropDownValue,
                          policyNumber:
                              insurancePolicyNoTextFieldController!.text,
                          category: widget.category,
                          folioNumber: folioNoTextFieldController!.text,
                          bankName: bankNameTextFieldController!.text,
                          provider: providerTextFieldController!.text,
                          accountNumber: accountNoTextFieldController!.text,
                          branchName: branchNameTextFieldController!.text,
                          storagePlace: storagePlaceTextFieldController!.text,
                          form: formDropdownValue,
                          propertyAddress: addressTextFieldController!.text,
                          nomineeEmailsList: FFAppState().nomineemails,
                        );
                        if ((addDocumentOutput?.statusCode ?? 200) == 200) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'nominee added',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor: Color(0x00000000),
                            ),
                          );
                          FFAppState().update(() {
                            FFAppState().nomineemails = [];
                          });
                          context.pop();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'nominee added failure',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
        ),
      ),
    );
  }
}
