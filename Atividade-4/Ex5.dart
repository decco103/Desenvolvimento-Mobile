// Classe abstrata Automovel
abstract class Automovel {
  String nome;
  String cor;
  int ano;

  Automovel(this.nome, this.cor, this.ano);

  // Métodos abstratos
  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();
}

// Classe concreta Carro que herda de Automovel
class Carro extends Automovel {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    print('$nome: Colocando o cinto de segurança.');
  }

  @override
  void ligarCarro() {
    print('$nome: Ligando o carro.');
  }

  @override
  void desligarCarro() {
    print('$nome: Desligando o carro.');
  }

  @override
  void dirigir() {
    print('$nome: Iniciando a viagem.');
  }
}

void main() {
  // Exemplo de uso da classe Carro
  var meuCarro = Carro('Meu Carro', 'Azul', 2022);

  // Chamando os métodos
  meuCarro.colocarCinto();
  meuCarro.ligarCarro();
  meuCarro.dirigir();
  meuCarro.desligarCarro();
}
