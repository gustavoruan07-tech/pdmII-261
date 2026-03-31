import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  Map toJson() => {
    'nome': _nome
  };
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  Map toJson() => {
    'nome': _nome,
    'dependentes': _dependentes
  };
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map toJson() => {
    'nomeProjeto': _nomeProjeto,
    'funcionarios': _funcionarios
  };
}

void main() {
  Dependente d1 = Dependente("Ana");
  Dependente d2 = Dependente("Carlos");
  Dependente d3 = Dependente("Marcos");
  Dependente d4 = Dependente("Julia");

  List<Dependente> depsFunc1 = [d1, d2];
  List<Dependente> depsFunc2 = [d3];
  List<Dependente> depsFunc3 = [d4];

  Funcionario f1 = Funcionario("João", depsFunc1);
  Funcionario f2 = Funcionario("Maria", depsFunc2);
  Funcionario f3 = Funcionario("Pedro", depsFunc3);

  List<Funcionario> listaFuncionarios = [f1, f2, f3];

  EquipeProjeto equipe = EquipeProjeto("Projeto Sistema", listaFuncionarios);

  print(jsonEncode(equipe));
}
