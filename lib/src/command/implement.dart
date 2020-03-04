import 'dart:collection';

//Abstract command
abstract class Command {
  void execute();
}

//Receiver
class Light {
  void on() {
    print('Light is on');
  }

  void off() {
    print('Light is off');
  }
}

//Concrete command
class LightOnCommand implements Command {
  Light light;

  LightOnCommand(this.light);

  @override
  void execute() {
    light.on();
  }
}

//Concrete command
class LightOffCommand implements Command {
  Light light;

  LightOffCommand(this.light);

  @override
  void execute() {
    light.off();
  }
}

//Receiver
class Stereo {
  void volumeUp() {
    print('Volume is up');
  }

  void volumeDown() {
    print('Volume is down');
  }
}

//Concrete command
class VolumeDownCommand implements Command {
  Stereo stereo;
  
  VolumeDownCommand(this.stereo);

  @override
  void execute() {
    stereo.volumeDown();
  }
}

//Concrete command
class VolumeUpCommand implements Command {
  Stereo stereo;
  
  VolumeUpCommand(this.stereo);

  @override
  void execute() {
    stereo.volumeUp();
  }
}

//Invoker
class RemoteController {
  ListQueue<Command> commands = ListQueue();
  
  void placeCommand(Command command) {
    commands.addLast(command);
    command.execute();
  }
}

//Client
void main(List<String> args) {
  var remoteController = RemoteController();
  var stereo = Stereo();
  var volumeUpCommand = VolumeUpCommand(stereo);
  remoteController.placeCommand(volumeUpCommand);
}