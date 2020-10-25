class Cadastro
  def cadastro
  end
end

Dado('que estou na tela de cadastro') do
  visit 'https://convo-esi.herokuapp.com/signup'
end

Dado('informo apelido') do
  fill_in 'Nickname', :with => "Luana"
end

Dado('informo email') do
  fill_in 'Email', :with => "luana@gmail.com"
end

Dado('informo idade') do
  fill_in 'Age', :with => "23"
end

Dado('informo genero') do
  fill_in 'Gender', :with => "0"
end

Dado('informo senha') do
  fill_in 'Password', :with => "123"
end

Quando("clico em cadastrar") do
  click_button 'Create User'
end

Então("uma nova conta deve ser criada") do
  expect(page).to have_content 'User was successfully created.'
end