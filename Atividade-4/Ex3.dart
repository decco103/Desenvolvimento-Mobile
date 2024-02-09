class Produto {
  String _nome;
  double _preco;
  int _quantidade;

  Produto(String nome, double preco, int quantidade)
      : _nome = nome,
        _preco = preco,
        _quantidade = quantidade;

  // Getters
  String get nome => _nome;
  double get preco => _preco;
  int get quantidade => _quantidade;

  // Método para exibir informações do produto
  void exibirInformacoes() {
    print('Nome: $_nome');
    print('Preço: R\$ $_preco');
    print('Quantidade: $_quantidade');
  }
}

void main() {
  // Exemplo de uso da classe Produto
  var produto = Produto('Celular', 1299.99, 50);
  produto.exibirInformacoes();
}
