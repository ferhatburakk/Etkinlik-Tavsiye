import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ConcertDetailsWidget extends StatefulWidget {
  const ConcertDetailsWidget({
    Key key,
    this.artistName,
    this.date,
    this.description,
    this.ticket,
    this.artistPhoto,
  }) : super(key: key);

  final String artistName;
  final String date;
  final String description;
  final String ticket;
  final String artistPhoto;

  @override
  _ConcertDetailsWidgetState createState() => _ConcertDetailsWidgetState();
}

class _ConcertDetailsWidgetState extends State<ConcertDetailsWidget> {
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
          'Konser Detayları',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 16,
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                widget.artistPhoto,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
              Divider(),
              Text(
                'Şarkıcı: ${widget.artistName}',
                style: FlutterFlowTheme.of(context).subtitle1,
              ),
              Divider(),
              Text(
                'Tarih: ${widget.date}',
                style: FlutterFlowTheme.of(context).subtitle1,
              ),
              Divider(),
              Text(
                'Açıklama',
                style: FlutterFlowTheme.of(context).subtitle1,
              ),
              Text(
                widget.description,
                style: FlutterFlowTheme.of(context).bodyText2,
              ),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  await launchURL(widget.ticket);
                },
                text: 'Bilet Al',
                options: FFButtonOptions(
                  width: 20,
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
                  borderRadius: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
