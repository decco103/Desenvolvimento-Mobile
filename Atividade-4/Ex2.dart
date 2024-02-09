abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar();
  void desligar();

  void exibirInformacoes() {
    print('Nome: $nome');
    print('Potência: $potencia kW');
    print('Status: ${status ? 'Ligada' : 'Desligada'}');
  }
}

class Prensa extends MaquinaIndustrial {
  double pressaoEmToneladas;

  Prensa(String nome, double potencia, bool status, this.pressaoEmToneladas)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print('$nome ligada. Pressão: $pressaoEmToneladas toneladas.');
  }

  @override
  void desligar() {
    status = false;
    print('$nome desligada.');
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoSolda;

  RoboSolda(String nome, double potencia, bool status, this.tipoSolda)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print('$nome ligado. Tipo de Solda: $tipoSolda.');
  }

  @override
  void desligar() {
    status = false;
    print('$nome desligado.');
  }
}

class Transportador extends MaquinaIndustrial {
  double velocidade;

  Transportador(String nome, double potencia, bool status, this.velocidade)
      : super(nome, potencia, status);

  @override
  void ligar() {
    status = true;
    print('$nome ligado. Velocidade: $velocidade m/s.');
  }

  @override
  void desligar() {
    status = false;
    print('$nome desligado.');
  }
}

class FornecedorDeEnergia {
  static double energiaDisponivel = 100.0;

  static void fornecerEnergia(MaquinaIndustrial maquina) {
    if (energiaDisponivel >= maquina.potencia) {
      energiaDisponivel -= maquina.potencia;
      maquina.ligar();
      print('Energia restante: $energiaDisponivel kW');
    } else {
      print('Não há energia suficiente para ligar a ${maquina.nome}.');
    }
  }
}

void main() {
  var prensa = Prensa('Prensa A', 20.0, false, 100.0);
  var roboSolda = RoboSolda('Robô de Solda B', 15.0, false, 'MIG');
  var transportador = Transportador('Transportador C', 10.0, false, 2.5);

  FornecedorDeEnergia.fornecerEnergia(prensa);
  FornecedorDeEnergia.fornecerEnergia(roboSolda);
  FornecedorDeEnergia.fornecerEnergia(transportador);

  var maquinas = [prensa, roboSolda, transportador];

  for (var maquina in maquinas) {
    maquina.exibirInformacoes();
    maquina.desligar();
  }
}
