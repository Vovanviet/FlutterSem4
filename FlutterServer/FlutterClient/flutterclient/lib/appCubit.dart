import 'package:flutterclient/cubitStates.dart';
import 'package:flutterclient/dataServices.dart';
import "package:bloc/bloc.dart";
import 'package:flutterclient/welcome.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(this.dataServices) : super(LoadingState());
  final DataServices dataServices;
  // final Authenti`cationService authService;

  var destinations;
  late List<WelcomeModel> places;
  late List<WelcomeModel> favoritePlaces = [];

  var welcome;
  var userModel;

  void loadWelcomePage() async {
    try {
      emit(LoadingState());
      welcome = await dataServices.welcome();
      emit(WelcomeLoadedState(welcomes: welcome));
    } catch (e) {
      print(e);
    }
  }
}
