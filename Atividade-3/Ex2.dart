class Automovel {
  String cor;
  String modelo;
  String tipoCombustivel;
  int quantidadeRodas;

  Automovel(this.cor, this.modelo, this.tipoCombustivel, this.quantidadeRodas);

  void exibirInformacoes() {
    print('Informações do Automóvel:');
    print('Cor: $cor');
    print('Modelo: $modelo');
    print('Tipo de Combustível: $tipoCombustivel');
    print('Quantidade de Rodas: $quantidadeRodas');
  }
}

class Carro extends Automovel {
  int numeroPortas;
  bool motorLigado = false;
  bool vidroFechado = true;

  Carro(String cor, String modelo, String tipoCombustivel, int quantidadeRodas, this.numeroPortas)
      : super(cor, modelo, tipoCombustivel, quantidadeRodas);

  void ligarCarro() {
    if (!motorLigado) {
      motorLigado = true;
      print('Carro ligado.');
    } else {
      print('O carro já está ligado.');
    }
  }

  void desligarCarro() {
    if (motorLigado) {
      motorLigado = false;
      print('Carro desligado.');
    } else {
      print('O carro já está desligado.');
    }
  }

  void abrirVidro() {
    if (vidroFechado) {
      vidroFechado = false;
      print('Vidro aberto.');
    } else {
      print('O vidro já está aberto.');
    }
  }

  void descerVidro() {
    if (!vidroFechado) {
      vidroFechado = true;
      print('Vidro fechado.');
    } else {
      print('O vidro já está fechado.');
    }
  }

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Número de Portas: $numeroPortas');
    print('Motor Ligado: ${motorLigado ? 'Sim' : 'Não'}');
    print('Vidro Fechado: ${vidroFechado ? 'Sim' : 'Não'}');
  }
}

void main() {
  var meuCarro = Carro('Vermelho', 'Sedan', 'Gasolina', 4, 4);
  meuCarro.exibirInformacoes();

  meuCarro.ligarCarro();
  meuCarro.abrirVidro();
  meuCarro.exibirInformacoes();

  meuCarro.desligarCarro();
  meuCarro.descerVidro();
  meuCarro.exibirInformacoes();
}
