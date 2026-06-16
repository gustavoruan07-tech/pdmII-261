import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() async {
  // Conectar ao servidor
  var socket = await Socket.connect('127.0.0.1', 3000);
  print('Conectado ao servidor');

  var random = Random();

  // Enviar temperatura a cada 10 segundos
  Timer.periodic(Duration(seconds: 10), (timer) {
    double temperatura = 20 + random.nextDouble() * 15;
    String mensagem = temperatura.toStringAsFixed(2);

    socket.write(mensagem);
    print('Enviado: $mensagem');
  });
}
