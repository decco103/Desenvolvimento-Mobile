import 'dart:io';

class Maquina {
  String nomeMaquina;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergiaEletrica;

  Maquina(this.nomeMaquina, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergiaEletrica);

  void ligar() {
    print('$nomeMaquina ligada.');
  }

  void desligar() {
    print('$nomeMaquina desligada.');
  }

  void ajustarVelocidade(int novaVelocidade) {
    rotacoesPorMinuto = novaVelocidade;
    print('Velocidade de $nomeMaquina ajustada para $novaVelocidade RPM.');
  }
}

class Furadeira extends Maquina {
  Furadeira(String nomeMaquina, int rotacoesPorMinuto, double consumoEnergiaEletrica)
      : super(nomeMaquina, 1, rotacoesPorMinuto, consumoEnergiaEletrica);

  // Métodos específicos da Furadeira (poderiam ser adicionados aqui se necessário)
}

void main() {
  var furadeira = Furadeira('Furadeira XPTO', 1200, 500.0);

  furadeira.ligar();
  furadeira.ajustarVelocidade(1500);
  furadeira.desligar();
}
