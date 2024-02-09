import 'dart:io';

class Usuario {
  String nomeUsuario;
  String senha;

  Usuario(this.nomeUsuario, this.senha);

  bool autenticar(String login, String senha) {
    return (login == nomeUsuario && senha == this.senha);
  }
}

void main() {
  // Criando um usuário de exemplo
  var usuarioExemplo = Usuario('Andre', 'ads22');

  // Solicitando informações de login e senha ao usuário
  print('Digite seu nome de usuário:');
  String inputUsuario = stdin.readLineSync()!;
  
  print('Digite sua senha:');
  String inputSenha = stdin.readLineSync()!;

  // Autenticando o usuário
  if (usuarioExemplo.autenticar(inputUsuario, inputSenha)) {
    print('Login bem-sucedido!');
  } else {
    print('Usuário ou senha incorretos. Tente novamente.');
  }
}
