import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_routing/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flipper_routing/app.router.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  // Define a list of items to be displayed in the ListView
  final List<String> items = List.generate(16, (index) => 'Item ${index + 1}');

  // Define a boolean to know if we have pressed.
  bool hasBeenPressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoriteViewModel>.reactive(
      fireOnViewModelReadyOnce: true,
      viewModelBuilder: () => FavoriteViewModel(),
      onViewModelReady: (model) async {
        model.getFavorites();
      },
      builder: (context, model, child) {
        return Scaffold(
          body: Stack(
            children: [
              ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  // Display two items on each row
                  if (index.isEven) {
                    // Add a container to the first row only
                    if (index == 0 && !hasBeenPressed) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Center(
                                child: SvgPicture.asset(
                                  'assets/checkout.svg',
                                  height: 80,
                                  width: 80,
                                  package: 'flipper_dashboard',
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Arrange your favorites",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 10),
                              Wrap(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    "Press and hold anywhere in the grid to begin adding items",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ]),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      );
                    } else {
                      // Display two items on all other even rows
                      return Row(
                        children: [
                          Expanded(child: _buildItem(context, index, model)),
                          Expanded(
                              child: _buildItem(context, index + 1, model)),
                        ],
                      );
                    }
                  }
                  // Return an empty container for odd indices to keep the layout
                  return Container();
                },
              ),
              hasBeenPressed
                  ? Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 60,
                          width: double.infinity,
                          child: OutlinedButton(
                            child: MediaQuery(
                              data: MediaQuery.of(context).copyWith(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor),
                              child: Text('Done',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.resolveWith<
                                  OutlinedBorder>(
                                (states) => RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff006AFE)),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors.blue.withOpacity(0.04);
                                  }
                                  if (states.contains(MaterialState.focused) ||
                                      states.contains(MaterialState.pressed)) {
                                    return Colors.blue.withOpacity(0.12);
                                  }
                                  return null; // Defer to the widget's default.
                                },
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                hasBeenPressed = false;
                              });
                            },
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }

  // Builds an item widget with the given label and favorite status
  Widget _buildItem(
      BuildContext context, int favIndex, FavoriteViewModel model) {
    return FutureBuilder<Favorite?>(
      future: model.getFavoriteByIndex(
          favIndex), // Call a function to retrieve the Favorite row
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Display a loading indicator while waiting for the future to complete
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Handle any errors that occurred during the future execution
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          // Handle the case where no data is available
          return GestureDetector(
            onLongPress: () {
              HapticFeedback.lightImpact();
              // Show a plus icon on long press to add the item to favorites
              setState(() {
                hasBeenPressed = true;
              });
            },
            onTap: () {
              if (hasBeenPressed) {
                // Launch the page where the item will be added to favorites.
                // It contains a modified ProductView widget.
                final _routerService = locator<RouterService>();
                _routerService.clearStackAndShow(
                    AddToFavoritesRoute(favoriteIndex: favIndex));
              }
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (hasBeenPressed)
                    Icon(FluentIcons.add_20_regular, color: Colors.blue[400])
                ],
              ),
            ),
          );
        } else {
          // Retrieve the Favorite row from the snapshot data
          final favorite = snapshot.data!;

          return GestureDetector(
            onLongPress: () {
              HapticFeedback.lightImpact();
              setState(() {
                hasBeenPressed = true;
              });
            },
            onTap: () {
              if (hasBeenPressed) {
                final _routerService = locator<RouterService>();
                _routerService.clearStackAndShow(
                    AddToFavoritesRoute(favoriteIndex: favIndex));
              }
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  if (hasBeenPressed)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            hasBeenPressed = false;
                          });
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  Center(
                    child: Text(favorite.product.value?.name ?? 'h'),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 100,
            //   margin: EdgeInsets.all(8),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[300],
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       if (hasBeenPressed)
            //         Icon(
            //           FluentIcons.add_20_regular,
            //           color: Colors.blue[400],
            //         ),
            //       //Text(favorite.product.value?.name), // Display the retrieved Favorite row data
            //     ],
            //   ),
            // ),
          );
        }
      },
    );
  }
}
