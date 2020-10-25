#language:pt

Funcionalidade: Login
  Queremos logar 

  Cenário: 
    Dado que estou na tela de login
	  E informo apelido válido
	  E informo senha inválido
    Quando clico em entrar 
    Então uma mensagem de erro deve aparecer