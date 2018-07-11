// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hello_world/json_list.dart';
import 'package:hello_world/json_list2.dart';
import 'package:hello_world/list_music.dart';
import 'package:hello_world/bar_switch.dart';
import 'package:hello_world/tab_layout.dart';
import 'package:hello_world/text_layout.dart';
import 'package:hello_world/menu_tab.dart';
import 'package:hello_world/alert_text.dart';
import 'package:hello_world/text_click.dart';
import 'package:hello_world/net_data.dart';
import 'package:hello_world/net_data_get.dart';
import 'package:hello_world/text_input.dart';
import 'package:hello_world/tab_increase.dart';
import 'package:hello_world/lan_change.dart';
import 'package:hello_world/text_scale.dart';
import 'package:hello_world/text_fade.dart';
void main() {
  runApp(new NavigationExampleApp());
}

class NavigationExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The MaterialApp's home is automatically set as the bottom of the navigation stack
    return new MaterialApp(
      title: 'Navigation Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('First Screen'),
      ),
      body: _onCreatLayout(context)
    );

  }
  _onCreatLayout(BuildContext context){
    return new Stack(children: <Widget>[

      new Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: new RaisedButton(
          child: const Text('页面跳转'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new SecondScreen()
            ));
          },
        ),
      ),
      new Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: new RaisedButton(
          child: const Text('json解析+list'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new ListExamplePage()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: new RaisedButton(
          child: const Text('网络请求'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new UserListPage()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 120.0),
        child: new RaisedButton(
          child: const Text('音乐播放界面'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new HomeScreen()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 160.0),
        child: new RaisedButton(
          child: const Text('进度条加跳转'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new BarNavigationExampleApp()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: new RaisedButton(
          child: const Text('TabLikeViewpager'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new TabMyApp()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 240.0),
        child: new RaisedButton(
          child: const Text('文字位置放置'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new StackExamplePage()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 280.0),
        child: new RaisedButton(
          child: const Text('菜单栏'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new MenuMyApp()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 320.0),
        child: new RaisedButton(
          child: const Text('弹出提示框'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new AlertMyApp()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 360.0),
        child: new RaisedButton(
          child: const Text('点击文字修改UI'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new TextMyApp()
            ));
          },
        ),
      ),new Padding(
        padding: const EdgeInsets.only(top: 400.0),
        child: new RaisedButton(
          child: const Text('网络数据请求'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new NamePage()
            ));
          },
        ),
      ),new Padding(
        padding: const EdgeInsets.only(top: 440.0),
        child: new RaisedButton(
          child: const Text('网络数据获取'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new NetMyApp()
            ));
          },
        ),
      ),new Padding(
        padding: const EdgeInsets.only(top: 480.0),
        child: new RaisedButton(
          child: const Text('文字输入与提交'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new TextFieldExampleApp()
            ));
          },
        ),
      ),      new Padding(
        padding: const EdgeInsets.only(top: 0.0,left:150.0),
        child: new RaisedButton(
          child: const Text('增加数'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new InMyApp()
            ));
          },
        ),
      ),
      new Padding(
        padding: const EdgeInsets.only(top: 40.0,left:150.0),
        child: new RaisedButton(
          child: const Text('切换语言'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new Demo()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 80.0,left:150.0),
        child: new RaisedButton(
          child: const Text('字体缩放'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new ScaleMyApp()
            ));
          },
        ),
      ), new Padding(
        padding: const EdgeInsets.only(top: 120.0,left:150.0),
        child: new RaisedButton(
          child: const Text('字体渐变'),
          onPressed: () {
            // Pushs the SecondScreen widget onto the navigation stack
            Navigator.of(context).push(new MaterialPageRoute<Null>(
                builder: (BuildContext context) => new FadeMyApp()
            ));
          },
        ),
      ),
      ]
      );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('Go to First'),
          // Pops Second Screen off the navigation stack
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}