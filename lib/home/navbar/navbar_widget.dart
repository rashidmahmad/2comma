import '/cards/card_widgets/card_widgets_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/home_widget/home_widget_widget.dart';
import '/profile/profile_widget/profile_widget_widget.dart';
import '/statistics/stastic_widget/stastic_widget_widget.dart';
import 'package:flutter/material.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  static String routeName = 'Navbar';
  static String routePath = '/navbar';

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500.0,
                child: PageView(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  onPageChanged: (_) async {
                    FFAppState().bottomindex = _model.pageViewCurrentIndex;
                    safeSetState(() {});
                    _model.bottomAdd = _model.pageViewCurrentIndex;
                    safeSetState(() {});
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    wrapWithModel(
                      model: _model.homeWidgetModel,
                      updateCallback: () => safeSetState(() {}),
                      child: HomeWidgetWidget(),
                    ),
                    wrapWithModel(
                      model: _model.stasticWidgetModel,
                      updateCallback: () => safeSetState(() {}),
                      child: StasticWidgetWidget(),
                    ),
                    wrapWithModel(
                      model: _model.cardWidgetsModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CardWidgetsWidget(),
                    ),
                    wrapWithModel(
                      model: _model.profileWidgetModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileWidgetWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
