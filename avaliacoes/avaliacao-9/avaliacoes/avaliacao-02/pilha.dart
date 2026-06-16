class Pilha {
  List<int> _elementos = [];

  void empilhar(int valor) {
    _elementos.add(valor);
  }

  int? desempilhar() {
    if (_elementos.isEmpty) {
      print("Pilha vazia!");
      return null;
    }
    return _elementos.removeLast();
  }

  int? topo() {
    if (_elementos.isEmpty) {
      print("Pilha vazia!");
      return null;
    }
    return _elementos.last;
  }

  void mostrar() {
    print(_elementos);
  }
}

void main() {
  Pilha pilha = Pilha();

  print("Empilhando elementos...");
  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  print("Elementos da pilha:");
  pilha.mostrar();

  print("Topo da pilha:");
  print(pilha.topo());

  print("Desempilhando...");
  print(pilha.desempilhar());

  print("Pilha depois de remover:");
  pilha.mostrar();
}