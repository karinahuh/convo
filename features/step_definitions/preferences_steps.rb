class Preference
    def preference
    end
end

Dado('que estou na tela de preferências') do
    visit 'https://convo-esi.herokuapp.com/preferences/new'
  end
  
  Dado('selecionei o gênero') do
    fill_in 'Gender', :with => "1"
  end
  
  Dado('selecionei a idade mínima') do
    fill_in 'Min age', :with => "18"
  end
  
  Dado('selecionei a idade máxima') do
    fill_in 'Max age', :with => "60"
  end
  
  Quando('clico em criar preferência') do
    click_button 'Create Preference'
  end
  
  Então('as preferências devem ser salvas') do
    expect(page).to have_content 'Preference was successfully created.'
  end