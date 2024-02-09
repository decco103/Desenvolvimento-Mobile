import 'dart:io';

class Cliente {
  String nome;
  String profissao;
  double saldo;

  Cliente(this.nome, this.profissao, this.saldo);

  void pix(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
      print('PIX de R\$ $valor realizado com sucesso.');
    } else {
      print('Saldo insuficiente para realizar o PIX.');
    }
  }

  void emprestimo(double valor) {
    if (valor > 0) {
      saldo += valor;
      print('Empréstimo de R\$ $valor realizado com sucesso.');
    } else {
      print('Valor inválido para empréstimo.');
    }
  }

  void saque(double valor) {
    if (valor > 0 && valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ $valor realizado com sucesso.');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }

  void extrato() {
    print('Extrato do Cliente $nome:');
    print('Profissão: $profissao');
    print('Saldo: R\$ $saldo');
  }
}

void main() {
  // Solicitando informações do cliente ao usuário
  print('Digite seu nome:');
  String nomeCliente = stdin.readLineSync()!;

  print('Digite sua profissão:');
  String profissaoCliente = stdin.readLineSync()!;

  print('Digite seu saldo inicial:');
  double saldoCliente = double.parse(stdin.readLineSync()!);

  // Criando um cliente
  var cliente = Cliente(nomeCliente, profissaoCliente, saldoCliente);

  // Menu de operações
  int opcao;
  do {
    print('\nEscolha uma opção:');
    print('1 - PIX');
    print('2 - Empréstimo');
    print('3 - Saque');
    print('4 - Extrato');
    print('0 - Sair');

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o valor do PIX:');
        double valorPix = double.parse(stdin.readLineSync()!);
        cliente.pix(valorPix);
        break;
      case 2:
        print('Digite o valor do Empréstimo:');
        double valorEmprestimo = double.parse(stdin.readLineSync()!);
        cliente.emprestimo(valorEmprestimo);
        break;
      case 3:
        print('Digite o valor do Saque:');
        double valorSaque = double.parse(stdin.readLineSync()!);
        cliente.saque(valorSaque);
        break;
      case 4:
        cliente.extrato();
        break;
      case 0:
        print('Saindo do programa. Até logo!');
        break;
      default:
        print('Opção inválida. Tente novamente.');
    }
  } while (opcao != 0);
}
