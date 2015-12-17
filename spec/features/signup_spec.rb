require "rails_helper"

feature "Signup" do
  
  scenario "when sending valid info" do
    visit "/"
    click_link "Quero me cadastrar"
    fill_in "Seu nome", with: "John Doe"
    fill_in "Seu email", with: "john@example.org"
    fill_in "Sua senha", with: "test"
    fill_in "Confirme sua senha", with: "test"
    click_button "Quero me cadastrar"

    expect(current_path).to eql("/entrar")
    expect(page).to have_content("Cadastro realizado com sucesso!")
  end
  scenario "when sending ivalid info" do
    visit "/"
    click_link "Quero me Cadastrar"
    click_button "Quero me Cadastrar"

    expect(current_path).to eql("/cadastre-se")
    expect(page).to have_content("Verifique o formulário anterior")
  end
  #scenario "when sending invalid data"
  scenario "when already logged in"
  
end
