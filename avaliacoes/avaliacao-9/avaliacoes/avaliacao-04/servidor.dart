import 'dart:io';
import 'dart:convert';

void main() async {
  // Criar servidor na porta 3000
  var server = await ServerSocket.bind('127.0.0.1', 3000);
  print('Servidor rodando na porta 3000...');

  // Esperar conexões
  await for (var socket in server) {
    print('Cliente conectado!');

    socket.listen((data) {
      var mensagem = utf8.decode(data);
      print('Temperatura recebida: $mensagem');
    });
  }
}
