#language:pt

Funcionalidade: Login
  Queremos logar 

  Cenário: Login com sucesso
    Dado que estou na tela de login
	  E informo apelido válido
	  E informo senha válida
    Quando clico em entrar
    Então o usuario deve ser logado

  Cenário: Login com senha inválida
    Dado que estou na tela de login
	  E informo apelido válido
	  E informo senha inválida
    Quando clico em entrar 
    Então uma mensagem de erro deve aparecer

    Cenário: Login com apelido inválido
    Dado que estou na tela de login
	  E informo apelido inválido
	  E informo senha válida
    Quando clico em entrar 
    Então uma mensagem de erro deve aparecer