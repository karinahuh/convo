#language:pt

Funcionalidade: Match
  Queremos dar match de acordo com as preferências

  Cenário: Match com sucesso
    Dado que estou em preferências
	  E dadas as preferências
    Então o algoritmo deve selecionar alguém do banco que se adeque as preferências
    E inicia uma conversa com esse match 