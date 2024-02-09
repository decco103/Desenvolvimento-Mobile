class Pessoa {
  // Atributos
  String nome;
  int idade;
  String profissao;
  double salario;

  // Construtor
  Pessoa(this.nome, this.idade, this.profissao, this.salario);

  // Método
  void exibirTrabalho(String nomeEmpresa, int tempoTrabalho) {
    print('$nome trabalha na empresa $nomeEmpresa há $tempoTrabalho anos.');
  }
}

void main() {
  // Exemplo de uso da classe Pessoa
  Pessoa pessoa = Pessoa('João', 30, 'Desenvolvedor', 5000.0);

  // Chamando o método exibirTrabalho
  pessoa.exibirTrabalho('ABC Ltda', 3);
}
