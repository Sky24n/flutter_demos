import 'package:flutter/material.dart';
import 'package:flutter_demos/bean/common_bean.dart';
import 'package:flutter_demos/pages/index.dart';
import 'package:flutter_demos/utils/navigator_util.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demos',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ItemModel> mItemList = new List();

  @override
  void initState() {
    super.initState();
    mItemList.add(new ItemModel("Chinese characters to pinyin",
        new PinyinPage("Chinese characters to pinyin")));
    mItemList
        .add(new ItemModel("City Select", new CitySelectPage("City Select")));
    mItemList.add(new ItemModel("Date Util", new DatePage("Date Util")));
    mItemList.add(new ItemModel("Regex Util", new RegexUtilPage("Regex Util")));
    mItemList.add(new ItemModel("Widget Util", new WidgetPage("Widget Util")));
    mItemList.add(new ItemModel("Timer Util", new TimerPage("Timer Util")));
    mItemList.add(new ItemModel("Money Util", new MoneyPage("Money Util")));
  }

  Widget buildItem(ItemModel model) {
    return new InkWell(
        onTap: () {
          NavigatorUtil.push(context, model.contentWidget);
        },
        child: new Container(
            height: 50.0,
            child: new Center(
              child: new Text(
                model.title,
                style: new TextStyle(fontSize: 14.0, color: Color(0xFF666666)),
              ),
            ),
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                color: Colors.white,
                border:
                    new Border.all(width: 0.33, color: Color(0XFFEFEFEF)))));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Flutter Demos'),
        centerTitle: true,
      ),
      body: new ListView.builder(
          itemCount: mItemList.length,
          itemBuilder: (BuildContext context, int index) {
            ItemModel model = mItemList[index];
            return buildItem(model);
          }),
      backgroundColor: Colors.white,
    );
  }
}
