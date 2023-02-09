import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/components/button-component.dart';
import 'package:project/components/tag-single.dart';
import 'package:project/constants.dart';
import 'package:project/models/TagsModel.dart';
import 'package:project/models/fakedata.dart';
import 'package:project/screens/home/components/tags-component.dart';
import '../../../models/fakedata.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var selectedAdd = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 16,
                ),

                SvgPicture.asset(
                  'assets/images/w3c.svg',
                  height: height / 6,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: width / 1.5,
                  child: Text(
                    'تبریک میگم، ایمیل با موفقیت ثبت شد لطفا اطلاعات ثبت نام رو تکمیل کن',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: width / 1.2,
                  child: TextField(
                    onChanged: (value) {},
                    style: Theme.of(context).textTheme.headline2,
                    decoration: InputDecoration(
                      hintText: 'نام و نام خانوادگی',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(width: 2)),
                    ),
                  ),
                ),
                // Text('Category', style: Theme.of(context).textTheme.headline2,)
                SizedBox(
                  height: 16,
                ),

                SizedBox(
                  width: width / 1.5,
                  child: Text(
                    'دسته بندی هایی که دوست داری انتخاب کن',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: GridView.builder(
                    itemCount: tagsList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        childAspectRatio: .4,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (() {
                            setState(() {
                              if (!tagsSelectedList.contains(tagsList[index])) {
                                tagsSelectedList.add(tagsList[index]);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    action: SnackBarAction(
                                      label: 'بستن',
                                      onPressed: () {
                                        // Code to execute.
                                      },
                                    ),
                                    content: const Text(
                                        'دسته بندی انتخاب شده است!'),
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    width: 280.0, // Width of the SnackBar.
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          8.0, // Inner padding for SnackBar content.
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                               
                                );
                              }
                            });
                          }),
                          child: TagSingle(indexList: index));
                    },
                  ),
                ),

                SizedBox(
                  height: 8,
                ),
                SvgPicture.asset(
                  'assets/images/64616.svg',
                  height: height / 16,
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: GridView.builder(
                    itemCount: tagsSelectedList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        childAspectRatio: .4,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      // return TagSelectedSingle(indexList: index);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          // width: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              shape: BoxShape.rectangle,
                              gradient: LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                  colors: constantsGradientColor
                                      .backgroundBottomTabGradient)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  tagsSelectedList[index].title,
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        tagsSelectedList.removeAt(index);
                                      });
                                    },
                                    color: Colors.red,
                                    icon: Icon(Icons.delete_forever))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),

                ButtonComponent(
                    height: height,
                    width: width,
                    title: 'ادامه',
                    handlSubmit: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
