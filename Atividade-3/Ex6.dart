import 'dart:io';

class Produto {
  String nomeProduto;
  int quantidade;
  double precoProduto;
  String tipoComunicacao;
  double consumoEnergiaEletrica;

  Produto(this.nomeProduto, this.quantidade, this.precoProduto, this.tipoComunicacao, this.consumoEnergiaEletrica);

  void exibirInformacoes() {
    print('Informações do Produto:');
    print('Nome: $nomeProduto');
    print('Quantidade: $quantidade');
    print('Preço: R\$ $precoProduto');
    print('Tipo de Comunicação: $tipoComunicacao');
    print('Consumo de Energia: $consumoEnergiaEletrica kWh');
  }
}

class Fritadeira extends Produto {
  bool ligada = false;

  Fritadeira(String nomeProduto, int quantidade, double precoProduto, String tipoComunicacao, double consumoEnergiaEletrica)
      : super(nomeProduto, quantidade, precoProduto, tipoComunicacao, consumoEnergiaEletrica);

  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeProduto ligada.');
    } else {
      print('$nomeProduto já está ligada.');
    }
  }

  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeProduto desligada.');
    } else {
      print('$nomeProduto já está desligada.');
    }
  }
}

class Televisao extends Produto {
  bool ligada = false;

  Televisao(String nomeProduto, int quantidade, double precoProduto, String tipoComunicacao, double consumoEnergiaEletrica)
      : super(nomeProduto, quantidade, precoProduto, tipoComunicacao, consumoEnergiaEletrica);

  void ligar() {
    if (!ligada) {
      ligada = true;
      print('$nomeProduto ligada.');
    } else {
      print('$nomeProduto já está ligada.');
    }
  }

  void desligar() {
    if (ligada) {
      ligada = false;
      print('$nomeProduto desligada.');
    } else {
      print('$nomeProduto já está desligada.');
    }
  }
}

class ArCondicionado extends Produto {
  bool ligado = false;
  double temperaturaAtual = 25.0;

  ArCondicionado(String nomeProduto, int quantidade, double precoProduto, String tipoComunicacao, double consumoEnergiaEletrica)
      : super(nomeProduto, quantidade, precoProduto, tipoComunicacao, consumoEnergiaEletrica);

  void ligar() {
    if (!ligado) {
      ligado = true;
      print('$nomeProduto ligado.');
    } else {
      print('$nomeProduto já está ligado.');
    }
  }

  void desligar() {
    if (ligado) {
      ligado = false;
      print('$nomeProduto desligado.');
    } else {
      print('$nomeProduto já está desligado.');
    }
  }

  void ajustarTemperatura(double setpoint) {
    if (ligado) {
      temperaturaAtual = setpoint;
      print('$nomeProduto: Temperatura ajustada para $setpoint °C.');
    } else {
      print('$nomeProduto: Ligue o $nomeProduto antes de ajustar a temperatura.');
    }
  }
}

void main() {
  var fritadeira = Fritadeira('Fritadeira Top', 1, 199.99, 'Bluetooth', 1.5);
  var televisao = Televisao('Smart TV 4K', 2, 1499.99, 'Wi-Fi', 80.0);
  var arCondicionado = ArCondicionado('Ar-Condicionado Split', 1, 2499.99, 'Controle Remoto', 1200.0);

  fritadeira.exibirInformacoes();
  fritadeira.ligar();
  fritadeira.desligar();

  print('');

  televisao.exibirInformacoes();
  televisao.ligar();
  televisao.desligar();

  print('');

  arCondicionado.exibirInformacoes();
  arCondicionado.ligar();
  arCondicionado.ajustarTemperatura(22.0);
  arCondicionado.desligar();
}
