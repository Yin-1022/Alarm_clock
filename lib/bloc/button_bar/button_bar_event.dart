abstract class ButtonBarEvent {}

class SetViewMode extends ButtonBarEvent {
  final int viewMode;
  SetViewMode(this.viewMode);
}