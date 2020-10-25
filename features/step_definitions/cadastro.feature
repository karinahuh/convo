#language:pt

Funcionalidade: Cadastro
  Queremos cadastrar usuario 

  Cenário: 
    Dado que estou na tela de cadastro
	E informo apelido
	E informo email
	E informo idade 
	E informo genero 
	E informo senha
    Quando clico em cadastrar 
    Então uma nova conta deve ser criada