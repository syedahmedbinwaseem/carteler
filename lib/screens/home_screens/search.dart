import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/custom_drawer.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Object value = 1;
  String _verticalGroupValue = "In my billboard(s)";
  List<String> _status = ["In my billboard(s)", "Nearby location"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: Utilities.appBar(width),
      body: Column(
        children: [
          Container(
            // height: width * 0.3,
            width: width,
            color: navyBlue,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                      backgroundColor: Colors.white,
                      toggleableActiveColor: Colors.white,
                      disabledColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                            title: Align(
                              alignment: Alignment(-6, 0),
                              child: FittedBox(
                                child: Text(
                                  'In my billboard(s)',
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () => setState(() => value = 0),
                            contentPadding: EdgeInsets.all(0),
                            leading: Radio(
                              value: 0,
                              groupValue: value,
                              onChanged: (v) => setState(() => value = v!),
                            )),
                      ),
                      Expanded(
                        child: ListTile(
                            selectedTileColor: Colors.white,
                            title: Align(
                              alignment: Alignment(-3, 0),
                              child: FittedBox(
                                child: Text(
                                  'Nearby location',
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () => setState(() => value = 1),
                            contentPadding: EdgeInsets.all(0),
                            leading: Radio(
                              value: 1,
                              groupValue: value,
                              onChanged: (v) => setState(() => value = v!),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: Icon(CupertinoIcons.search),
                        filled: true,
                        hintStyle: TextStyle(
                            color: Colors.grey[800], fontSize: width * 0.03),
                        hintText: "Search here… ",
                        contentPadding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        fillColor: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Your search results appear here'),
            ),
          )
        ],
      ),
    );
  }
}
