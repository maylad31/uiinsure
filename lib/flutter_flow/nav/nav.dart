import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/martin-katler-DiJR_M1Mv_A-unsplash.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : SigninWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/martin-katler-DiJR_M1Mv_A-unsplash.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SigninWidget(),
          routes: [
            FFRoute(
              name: 'completeUserProfile',
              path: 'completeUserProfile',
              builder: (context, params) => CompleteUserProfileWidget(),
            ),
            FFRoute(
              name: 'onboarding',
              path: 'onboarding',
              builder: (context, params) => OnboardingWidget(),
            ),
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'HomePage')
                  : HomePageWidget(),
            ),
            FFRoute(
              name: 'settingPage',
              path: 'settingPage',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'settingPage')
                  : SettingPageWidget(),
            ),
            FFRoute(
              name: 'editProfile',
              path: 'editProfile',
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'createAccount',
              path: 'createAccount',
              builder: (context, params) => CreateAccountWidget(),
            ),
            FFRoute(
              name: 'subscription',
              path: 'subscription',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'subscription')
                  : SubscriptionWidget(),
            ),
            FFRoute(
              name: 'pinValidator',
              path: 'pinValidator',
              builder: (context, params) => PinValidatorWidget(),
            ),
            FFRoute(
              name: 'createMpin',
              path: 'createMpin',
              builder: (context, params) => CreateMpinWidget(),
            ),
            FFRoute(
              name: 'changeMpin',
              path: 'changeMpin',
              builder: (context, params) => ChangeMpinWidget(),
            ),
            FFRoute(
              name: 'listNomineePage',
              path: 'listNomineePage',
              builder: (context, params) => ListNomineePageWidget(),
            ),
            FFRoute(
              name: 'addNomineePage',
              path: 'addNomineePage',
              builder: (context, params) => AddNomineePageWidget(),
            ),
            FFRoute(
              name: 'editNomineePage',
              path: 'editNomineePage',
              builder: (context, params) => EditNomineePageWidget(
                nomineeId: params.getParam('nomineeId', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Signin',
              path: 'signin',
              builder: (context, params) => SigninWidget(),
            ),
            FFRoute(
              name: 'listInvestmentPage',
              path: 'listInvestmentPage',
              builder: (context, params) => ListInvestmentPageWidget(
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'viewInvestmentPage',
              path: 'viewInvestmentPage',
              builder: (context, params) => ViewInvestmentPageWidget(
                id: params.getParam('id', ParamType.String),
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'editInvestmentPage',
              path: 'editInvestmentPage',
              builder: (context, params) => EditInvestmentPageWidget(
                id: params.getParam('id', ParamType.String),
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'addInvestmentPage',
              path: 'addInvestmentPage',
              builder: (context, params) => AddInvestmentPageWidget(
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'listInvestmentByNominee',
              path: 'listInvestmentByNominee',
              builder: (context, params) => ListInvestmentByNomineeWidget(
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'viewInvestmentByNominee',
              path: 'viewInvestmentByNominee',
              builder: (context, params) => ViewInvestmentByNomineeWidget(
                id: params.getParam('id', ParamType.String),
                category: params.getParam('category', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'webview',
              path: 'webview',
              builder: (context, params) => WebviewWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
