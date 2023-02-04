import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListInvestmentByNomineeWidget extends StatefulWidget {
  const ListInvestmentByNomineeWidget({
    Key? key,
    this.category,
  }) : super(key: key);

  final String? category;

  @override
  _ListInvestmentByNomineeWidgetState createState() =>
      _ListInvestmentByNomineeWidgetState();
}

class _ListInvestmentByNomineeWidgetState
    extends State<ListInvestmentByNomineeWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetdocumentsByNomineeCall.call(
        jwt: FFAppState().token,
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
        final listInvestmentByNomineeGetdocumentsByNomineeResponse =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              context.pushNamed(
                'addInvestmentPage',
                queryParams: {
                  'category': serializeParam(
                    widget.category,
                    ParamType.String,
                  ),
                }.withoutNulls,
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 240),
                  ),
                },
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            elevation: 8,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).alternate,
              size: 32,
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).customColor1,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                context.pushNamed('HomePage');
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).dark400,
                size: 24,
              ),
            ),
            title: Text(
              'Insurances',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Builder(
                        builder: (context) {
                          final investments = getJsonField(
                            listInvestmentByNomineeGetdocumentsByNomineeResponse
                                .jsonBody,
                            r'''$.documents''',
                          ).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: investments.length,
                            itemBuilder: (context, investmentsIndex) {
                              final investmentsItem =
                                  investments[investmentsIndex];
                              return Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3,
                                        color: Color(0x35000000),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 4, 4, 4),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 0, 0),
                                              child: Image.asset(
                                                'assets/images/insurance_(1).png',
                                                width: 50,
                                                height: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 10, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      () {
                                                        if (getJsonField(
                                                              investmentsItem,
                                                              r'''$.category''',
                                                            ) ==
                                                            'insurance') {
                                                          return getJsonField(
                                                            investmentsItem,
                                                            r'''$.policy_number''',
                                                          ).toString();
                                                        } else if (getJsonField(
                                                              investmentsItem,
                                                              r'''$.category''',
                                                            ) ==
                                                            'mutual_fund') {
                                                          return getJsonField(
                                                            investmentsItem,
                                                            r'''$.folio_number''',
                                                          ).toString();
                                                        } else if (getJsonField(
                                                              investmentsItem,
                                                              r'''$.category''',
                                                            ) ==
                                                            'bank') {
                                                          return getJsonField(
                                                            investmentsItem,
                                                            r'''$.account_number''',
                                                          ).toString();
                                                        } else {
                                                          return 'adsa';
                                                        }
                                                      }(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        getJsonField(
                                                          investmentsItem,
                                                          r'''$.category''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 10, 12, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 4, 0, 0),
                                                    child: Text(
                                                      getJsonField(
                                                        investmentsItem,
                                                        r'''$.user_name''',
                                                      ).toString(),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .grayIcon,
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                context.pushNamed(
                                                  'viewInvestmentByNominee',
                                                  queryParams: {
                                                    'id': serializeParam(
                                                      getJsonField(
                                                        investmentsItem,
                                                        r'''$.document_id''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                    'category': serializeParam(
                                                      getJsonField(
                                                        investmentsItem,
                                                        r'''$.category''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'View',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Color(0xFFFF9700),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .underline,
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
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
