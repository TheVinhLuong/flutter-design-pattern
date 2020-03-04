class RemoteController {
  ACCommand acCommand;
  LightCommand lightCommand;

  void execute(Button btn) {
    if (btn.name == '1') {
      acCommand.on();
    } else if (btn.name == '2') {
      lightCommand.on();
    }
  }
}

class Button {
  String name;
}

class ACCommand {
  void on() {
    print('AC is on');
  }
}

class LightCommand {
  void on() {
    print('light is on');
  }
}

void main(List<String> args) {
  int a = null;
  print(a);
  a ??= 6;
  print(a);
  a ??= 9;
  print(a);
}
