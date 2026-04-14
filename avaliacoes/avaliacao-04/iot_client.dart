import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {
  var socket = await Socket.connect('127.0.0.1', 3000);

  print('Conectado ao servidor!');

  Random random = Random();

  Timer.periodic(Duration(seconds: 10), (timer) {
    double temperatura = 20 + random.nextDouble() * 10;

    String mensagem = temperatura.toStringAsFixed(2);

    print('Enviando temperatura: $mensagem');

    socket.write(mensagem);
  });
}
