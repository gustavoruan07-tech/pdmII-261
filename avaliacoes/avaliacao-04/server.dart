import 'dart:io';
import 'dart:convert';

void main() async {
  var server = await ServerSocket.bind(InternetAddress.loopbackIPv4, 3000);

  print('Servidor rodando na porta 3000...');

  await for (var socket in server) {
    print('Cliente conectado!');

    socket.listen((data) {
      String mensagem = utf8.decode(data);
      print('Temperatura recebida: $mensagem');
    });
  }
}
