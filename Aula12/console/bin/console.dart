

void main(List<String> arguments) {
  print('Carregando informações do usuário...');
  obterDadosDoUsuario().then((usuario){
    print(usuario.nome);
    print(usuario.email);

    print('Informações carregadas com sucesso');
  }).catchError((erro) => print('Ocorreu um erro'));
}

Future<Usuario> obterDadosDoUsuario() {
  return Future.delayed(Duration(seconds: 10), () => Usuario('Renato', 'renato.email@mail.com'));
}

class Usuario {
  final String nome;
  final String email;

  Usuario(this.nome, this.email);
}