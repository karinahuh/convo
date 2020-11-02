#language:pt

Funcionalidade: Login
  Queremos logar 

  Cenário: 
    Dado que estou na tela de login
	E informo apelido válido
	E informo senha válida
  E clico em entrar

  Cenário: 
    Dado que estou na tela de login
	  E informo apelido válido
	  E informo senha inválida
    Quando clico em entrar 
    Então uma mensagem de erro deve aparecer

    Cenário: 
    Dado que estou na tela de login
	  E informo apelido inválido
	  E informo senha válida
    Quando clico em entrar 
    Então uma mensagem de erro deve aparecer