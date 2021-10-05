import 'package:carteler/utils/colors.dart';
import 'package:carteler/utils/custom_drawer.dart';
import 'package:carteler/utils/scroll_behavior.dart';
import 'package:carteler/utils/widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  var privacy = ["Public", "Private"];
  var selectedPrivacy = null;
  var cetegories = ["Fun", "Kids", "Nice"];
  var selectedCategory = null;
  List<String> _status = ["In my billboard(s)", "Other Billboard", "BroadCast"];
  Map<String, bool> values = {
    'All my billboard(s) posts.': false,
    'Other billboards public posts.': false,
    'Other posts.': false
  };
  String _verticalGroupValue = "Pending";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: Utilities.appBar(width),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Post',
              style: TextStyle(
                  color: navyBlue,
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 2,
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  height: width * 0.16,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Choose Privacy',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Open Sans',
                                        ),
                                      ),
                                      dropdownColor: Colors.grey[300],
                                      isExpanded: true,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Open Sans',
                                      ),
                                      items: privacy
                                          .map((String dropDownStringItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(dropDownStringItem),
                                        );
                                      }).toList(),
                                      onChanged: (a) {
                                        setState(() {
                                          selectedPrivacy = a;
                                        });
                                      },
                                      value: selectedPrivacy,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                  height: width * 0.16,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Category',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Open Sans',
                                        ),
                                      ),
                                      dropdownColor: Colors.grey[300],
                                      isExpanded: true,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Open Sans',
                                      ),
                                      items: cetegories
                                          .map((String dropDownStringItem) {
                                        return DropdownMenuItem<String>(
                                          value: dropDownStringItem,
                                          child: Text(dropDownStringItem),
                                        );
                                      }).toList(),
                                      onChanged: (a) {
                                        setState(() {
                                          selectedCategory = a;
                                        });
                                      },
                                      value: selectedCategory,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              maxLines: 5,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                              ),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 20, left: 20, right: 20, bottom: 20),
                                  hintText: 'Write what\'s on your mind? ',
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                            const SizedBox(height: 15),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  DottedBorder(
                                    strokeWidth: 2,
                                    dashPattern: [7, 7],
                                    color: Colors.grey.shade300,
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(15),
                                    child: Container(
                                      height: width * 0.4,
                                      width: width * 0.3,
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.red,
                                          size: width * 0.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  addedImages(height, width),
                                  const SizedBox(width: 10),
                                  addedImages(height, width),
                                  const SizedBox(width: 10),
                                  addedImages(height, width),
                                  const SizedBox(width: 10),
                                  addedImages(height, width),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Where do you want to post this?',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 15),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: RadioGroup<String>.builder(
                                spacebetween: 1,
                                direction: Axis.horizontal,
                                groupValue: _verticalGroupValue,
                                onChanged: (a) => setState(() {
                                  _verticalGroupValue = a!;
                                }),
                                items: _status,
                                itemBuilder: (item) => RadioButtonBuilder(
                                  item,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              padding: const EdgeInsets.all(15),
                              height: width * 0.46,
                              width: width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ScrollConfiguration(
                                behavior: MyBehavior(),
                                child: ListView(
                                  children: values.keys.map((String key) {
                                    return CheckboxListTile(
                                      title: Text(key),
                                      value: values[key],
                                      onChanged: (value) {
                                        setState(() {
                                          values[key] = value!;
                                        });
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Utilities.button(
                                    height,
                                    width * 0.4,
                                    'Request Publication',
                                    () => null,
                                    Colors.white,
                                    Colors.green),
                                const SizedBox(width: 10),
                                Utilities.button(
                                    50,
                                    width * 0.4,
                                    'Save as draft',
                                    () => null,
                                    Colors.white,
                                    Colors.blue)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: width * 0.2,
              width: width,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffFB8A8A)),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffFEE8E8)),
              child: Row(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: SingleChildScrollView(
                        child: Text(
                          '*If you send a publication request, the billboard\'s administrator will have 24 hrstops to review and accept/decline your post. After that, if your request has no answer, it will be automatically published in selected billboard(s).',
                          style: TextStyle(fontSize: width * 0.03),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addedImages(double height, double width) {
    return Container(
      height: width * 0.4,
      width: width * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.pink),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/user.jpg', fit: BoxFit.cover)),
    );
  }
}
