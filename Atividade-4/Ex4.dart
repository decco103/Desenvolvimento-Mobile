class Pessoa {
  String _nome = '';
  int _idade = 0;

  // Getter e Setter para o nome
  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      print('Nome não pode ser vazio.');
    }
  }

  // Getter e Setter para a idade
  int get idade => _idade;

  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('Idade não pode ser negativa.');
    }
  }

  // Método para mostrar informações
  void mostrarInformacoes() {
    print('Nome: $_nome');
    print('Idade: $_idade anos');
  }
}

void main() {
  // Exemplo de uso da classe Pessoa
  var pessoa = Pessoa();
  pessoa.nome = 'João';
  pessoa.idade = 30;
  pessoa.mostrarInformacoes();

  // Testando os setters com verificações de validade
  pessoa.nome = ''; // Mensagem de erro: Nome não pode ser vazio.
  pessoa.idade = -5; // Mensagem de erro: Idade não pode ser negativa.

  // Mostrando as informações novamente após os testes
  pessoa.mostrarInformacoes();
}
