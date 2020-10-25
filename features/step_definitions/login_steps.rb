class Login
    def login
    end
end

Dado('que estou na tela de login') do
    visit 'https://convo-esi.herokuapp.com/login'
end
  
Dado('informo apelido válido') do
    fill_in 'Nickname', :with => "Karina" 
end
  
Dado('informo senha inválido') do
    fill_in 'Password', :with => "000" 
end
  
Quando('clico em entrar') do
    click_button 'Login'
end

Então('uma mensagem de erro deve aparecer') do
    expect(page).to have_content 'Nickname or password is invalid'
end