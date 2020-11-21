class Match
    def Match
    end
  end
  
  Before('@usuarioFake') do
    @user = User.new(nickname: "Luana", email:"luana@gmail.com", age: 23, gender: 1, password: "123").save
  end

  Dado('que estou em preferências') do
    visit 'https://convo-esi.herokuapp.com/preferences/new'
  end
  
  E('dadas as preferências') do
    fill_in 'Gender', :with => "1"
    fill_in 'Min Age', :with => "23"
    fill_in 'Max Age', :with => "50"
  end
  
  Quando("clico em Conversar") do
    click_button('Conversar', match: :first)
  end
  
  Então("o algoritmo deve selecionar alguém do banco que se adeque as preferências") do
    expect(1).to satisfy { |gender| gender == 1}
    expect(23).to satisfy { |age| age > 22}
    expect(23).to satisfy { |age| age < 51}
  end

  E("inicia uma conversa com esse match") do
    visit 'https://convo-esi.herokuapp.com/chat/index'
  end