import 'package:auth_bloc/bloc/auth_bloc/auth.dart';
import 'package:auth_bloc/utils/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        leading:const Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
      backgroundImage: NetworkImage(
        "https://yt3.ggpht.com/yti/ANoDKi5R5eJSjZigdWmIcZKFAtqwG4svMcAAN0Iyvw4j=s108-c-k-c0x00ffffff-no-rj"
      ),
    ),
              ),
        title:const Text("AUTH WITH REST"),
        actions: [
          IconButton(icon:const Icon(EvaIcons.logOutOutline), onPressed: () {
            BlocProvider.of<AuthenticationBloc>(context).add(
                          LoggedOut(),
                        );
          })
        ],
      ),
      body:const Center(
        child: Text("Main Screen"),
      )
    );
  }
}