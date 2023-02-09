
import 'package:project/models/PostsModel.dart';

import 'TagsModel.dart';

Map homePagePosterData = {
  // "imageAssets": Assets.images.posterTest.path,
  "writer": "ابوالفضل معصومی",
  "description": "دوازده قدم برنامه نویسی یک دوره موفق",
  "views": 155,
};

// Tags
List<Tags> tagsList = [
  Tags(title: 'جاوا'),
  Tags(title: 'ری اکت'),
  Tags(title: 'نیتیو'),
  Tags(title: 'نود جی اس'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
  Tags(title: 'فلاتر'),
];
List<Tags> tagsSelectedList = [];

List<PostsModel> postsList = [
  PostsModel(title: 'سالیدیتی چیست؟', writer: 'ابوالفضل معصومی', views: '256', description: 'سالیدیتی چیست؛ معرفی زبان معروف برنامه‌نویسی ...ع'),
  PostsModel(title: 'سالیدیتی چیست؟', writer: 'مهسا امینی', views: '256', description: 'سالیدیتی چیست؛ معرفی زبان معروف برنامه‌نویسی ...ع'),
  PostsModel(title: 'سالیدیتی چیست؟', writer: 'نیکا شاکرمی', views: '256', description: 'سالیدیتی چیست؛ معرفی زبان معروف برنامه‌نویسی ...ع'),
];