#language:pt

Funcionalidade: Preferências
	Queremos cadastras as preferências
	
	Cenário:
		Dado que estou na tela de preferências
		E selecionei o gênero
		E selecionei a idade mínima
		E selecionei a idade máxima
		Quando clico em criar preferência
		Então as preferências devem ser salvas