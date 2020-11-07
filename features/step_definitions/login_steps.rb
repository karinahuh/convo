class Login
    def login
    end
end

Dado('que estou na tela de login') do
    visit 'https://convo-esi.herokuapp.com/login'
end
  
Dado('informo apelido válido') do
    fill_in 'Nickname', :with => "Luana" 
end
  
Dado('informo senha válida') do
    fill_in 'Password', :with => "456" 
end
  
Quando ('clico em entrar') do
    click_button 'Login'
end

Então('o usuario deve ser logado') do
    visit 'https://convo-esi.herokuapp.com/'
end

Dado('informo senha inválida') do
    fill_in 'Password', :with => "123" 
end
  
Então('uma mensagem de erro deve aparecer') do
    expect(page).to have_content 'Nickname or password is invalid'
end
  
Dado('informo apelido inválido') do
    fill_in 'Nickname', :with => "Joana"
end