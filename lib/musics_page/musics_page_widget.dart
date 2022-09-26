import '../add_music/add_music_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../concert_details/concert_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login_page/login_page_widget.dart';
import '../profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MusicsPageWidget extends StatefulWidget {
  const MusicsPageWidget({Key key}) : super(key: key);

  @override
  _MusicsPageWidgetState createState() => _MusicsPageWidgetState();
}

class _MusicsPageWidgetState extends State<MusicsPageWidget> {
  PagingController<DocumentSnapshot, UserConcertsRecord> _pagingController;
  Query _pagingQuery;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Konser Etkinlikleri',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 18,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileWidget(),
                ),
              );
            },
          ),
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.logout,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await signOut();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPageWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: Color(0xFFDCDCDC),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddMusicWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child:
                    PagedListView<DocumentSnapshot<Object>, UserConcertsRecord>(
                  pagingController: () {
                    final Query<Object> Function(Query<Object>) queryBuilder =
                        (userConcertsRecord) => userConcertsRecord.where('uid',
                            isEqualTo: currentUserUid);
                    if (_pagingController != null) {
                      final query = queryBuilder(UserConcertsRecord.collection);
                      if (query != _pagingQuery) {
                        // The query has changed
                        _pagingQuery = query;

                        _pagingController.refresh();
                      }
                      return _pagingController;
                    }

                    _pagingController = PagingController(firstPageKey: null);
                    _pagingQuery = queryBuilder(UserConcertsRecord.collection);
                    _pagingController.addPageRequestListener((nextPageMarker) {
                      queryUserConcertsRecordPage(
                        queryBuilder: (userConcertsRecord) => userConcertsRecord
                            .where('uid', isEqualTo: currentUserUid),
                        nextPageMarker: nextPageMarker,
                        pageSize: 25,
                        isStream: false,
                      ).then((page) {
                        _pagingController.appendPage(
                          page.data,
                          page.nextPageMarker,
                        );
                      });
                    });
                    return _pagingController;
                  }(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  builderDelegate:
                      PagedChildBuilderDelegate<UserConcertsRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitFadingFour(
                          color: Color(0xFF3F3F3F),
                          size: 50,
                        ),
                      ),
                    ),

                    itemBuilder: (context, _, listViewIndex) {
                      final listViewUserConcertsRecord =
                          _pagingController.itemList[listViewIndex];
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              listViewUserConcertsRecord.posterUrl,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listViewUserConcertsRecord.artist,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  listViewUserConcertsRecord.date,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      200, 0, 0, 0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 45,
                                    icon: Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ConcertDetailsWidget(
                                            artistName:
                                                listViewUserConcertsRecord
                                                    .artist,
                                            date:
                                                listViewUserConcertsRecord.date,
                                            description:
                                                listViewUserConcertsRecord.info,
                                            ticket: listViewUserConcertsRecord
                                                .ticketUrl,
                                            artistPhoto:
                                                listViewUserConcertsRecord
                                                    .posterUrl,
                                          ),
                                        ),
                                      );
                                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
