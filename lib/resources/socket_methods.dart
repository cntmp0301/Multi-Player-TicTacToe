import 'package:socket_io_client/socket_io_client.dart';
import 'package:tictactoe/resources/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  Socket get socketClient => _socketClient;

  // EMITS
  void createRoom(String nickname) {
    print(nickname);
    if (nickname.isNotEmpty) {
      _socketClient.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }
}
