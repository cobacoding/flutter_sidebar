import 'package:bloc/bloc.dart';
import '../../pages/myaccounts_page.dart';
import '../../pages/myorder_page.dart';
//import 'package:flutter_ui/pages/homepage.dart';
import '../../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates{}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  //HALAMAN AWAL
  @override
  NavigationStates get initialState => MyOrdersPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event){
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
    }
  }

}