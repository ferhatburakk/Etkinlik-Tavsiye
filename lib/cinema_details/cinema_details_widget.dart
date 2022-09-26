import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CinemaDetailsWidget extends StatefulWidget {
  const CinemaDetailsWidget({
    Key key,
    this.filmName,
    this.filmImage,
    this.description,
    this.vote,
  }) : super(key: key);

  final String filmName;
  final String filmImage;
  final String description;
  final String vote;

  @override
  _CinemaDetailsWidgetState createState() => _CinemaDetailsWidgetState();
}

class _CinemaDetailsWidgetState extends State<CinemaDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Sinema Detayları',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/21121.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.cover,
              ),
              Divider(),
              Text(
                'Film Adı: ${widget.filmName}',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Text(
                'Açıklama: ${widget.description}',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Text(
                'Puan: ${widget.vote}',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  await launchURL('https://www.cinemaximum.com.tr');
                },
                text: 'Bilet Al',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
