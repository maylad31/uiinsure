import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NomineeShowWidget extends StatefulWidget {
  const NomineeShowWidget({Key? key}) : super(key: key);

  @override
  _NomineeShowWidgetState createState() => _NomineeShowWidgetState();
}

class _NomineeShowWidgetState extends State<NomineeShowWidget> {
  List<String>? checkboxGroupValues;

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetNomineesCall.call(
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
        final bottomSheetMaterialGetNomineesResponse = snapshot.data!;
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Select nominees:',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: FlutterFlowCheckboxGroup(
                  options: (getJsonField(
                    bottomSheetMaterialGetNomineesResponse.jsonBody,
                    r'''$.nominees''',
                  ) as List)
                      .map<String>((s) => s.toString())
                      .toList()!
                      .toList(),
                  onChanged: (val) => setState(() => checkboxGroupValues = val),
                  activeColor: FlutterFlowTheme.of(context).primaryColor,
                  checkColor: Colors.white,
                  checkboxBorderColor: Color(0xFF95A1AC),
                  textStyle: FlutterFlowTheme.of(context).bodyText1,
                  initialized: checkboxGroupValues != null,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('addNomineePage');
                },
                text: 'Add new nominee',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().nomineemails = checkboxGroupValues!.toList();
                    });
                    Navigator.pop(context);
                  },
                  text: 'Confirm',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFFFF9700),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        );
      },
    );
  }
}
