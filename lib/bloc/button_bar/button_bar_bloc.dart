import 'package:flutter_bloc/flutter_bloc.dart';
import 'button_bar_event.dart';
import 'button_bar_state.dart';

class ButtonBarBloc extends Bloc<ButtonBarEvent, ButtonBarState> {
  ButtonBarBloc() : super(ButtonBarState(0)) {
    on<SetViewMode>((event, emit) {
      emit(ButtonBarState(event.viewMode));
    });
  }
}