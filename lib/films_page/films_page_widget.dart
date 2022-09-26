import '../add_film/add_film_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../cinema_details/cinema_details_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login_page/login_page_widget.dart';
import '../profile/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class FilmsPageWidget extends StatefulWidget {
  const FilmsPageWidget({Key key}) : super(key: key);

  @override
  _FilmsPageWidgetState createState() => _FilmsPageWidgetState();
}

class _FilmsPageWidgetState extends State<FilmsPageWidget> {
  PagingController<DocumentSnapshot, UserCinemasRecord> _pagingController;
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
          'Sinema Etinlikleri',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 19,
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
              builder: (context) => AddFilmWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 10,
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
                    PagedListView<DocumentSnapshot<Object>, UserCinemasRecord>(
                  pagingController: () {
                    final Query<Object> Function(Query<Object>) queryBuilder =
                        (userCinemasRecord) => userCinemasRecord.where('uid',
                            isEqualTo: currentUserUid);
                    if (_pagingController != null) {
                      final query = queryBuilder(UserCinemasRecord.collection);
                      if (query != _pagingQuery) {
                        // The query has changed
                        _pagingQuery = query;

                        _pagingController.refresh();
                      }
                      return _pagingController;
                    }

                    _pagingController = PagingController(firstPageKey: null);
                    _pagingQuery = queryBuilder(UserCinemasRecord.collection);
                    _pagingController.addPageRequestListener((nextPageMarker) {
                      queryUserCinemasRecordPage(
                        queryBuilder: (userCinemasRecord) => userCinemasRecord
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
                  builderDelegate: PagedChildBuilderDelegate<UserCinemasRecord>(
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
                      final listViewUserCinemasRecord =
                          _pagingController.itemList[listViewIndex];
                      return Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/21121.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listViewUserCinemasRecord.filmName,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Text(
                                  'Puan: ${listViewUserCinemasRecord.vote.toString()}',
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
                                              CinemaDetailsWidget(
                                            filmName: listViewUserCinemasRecord
                                                .filmName,
                                            description:
                                                listViewUserCinemasRecord
                                                    .overview,
                                            vote: listViewUserCinemasRecord.vote
                                                .toString(),
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
