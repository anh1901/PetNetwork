import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:petnetwork/caches/shared_storage.dart';
import 'package:petnetwork/redux/redux_state.dart';
import 'package:petnetwork/screens/login_screen/login_screen.dart';
import 'package:petnetwork/widgets/image_path.dart';
import 'package:petnetwork/widgets/size_config.dart';

class WelcomeScreen extends StatefulWidget {
  static final String routerName = 'welcome';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController = PageController();

  bool hadInit = false;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (hadInit) return;
    hadInit = true;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return StoreBuilder<ReduxState>(
      builder: (context, store) {
        return Material(
          child: PageView(
            controller: _pageController,
            children: [1, 2, 3].map(
              (index) {
                return GestureDetector(
                  child: Image.asset(
                    ImagePath.asset('intro$index'),
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    if (index == 3) {
                      SharedStorage.saveShowWelcome();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen(),
                        ),
                      );
                    }
                  },
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
