# coding: utf-8

require 'spec_helper'

feature 'gerenciar cardapio' do

  scenario 'incluir cardapio' do # , :js => true  do

    visit new_cardapio_path

    preencher_e_verificar_cardapio

    

  end

  scenario 'alterar cardapio' do #, :js => true  do

    cardapio = FactoryGirl.create(:cardapio)

    visit edit_cardapio_path(cardapio)

    preencher_e_verificar_cardapio



  end

   scenario 'excluir cardapio' do #, :javascript => true  do

       cardapio = FactoryGirl.create(:cardapio)

        visit cardapios_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_cardapio

      fill_in 'Nome',  :with => "lanche"
      fill_in 'Descricao',  :with => "americano"
      fill_in 'Preco',  :with => 12.0
        
 
      click_button 'Salvar'

      page.should have_content ('Nome: lanche')
      page.should have_content ('Descricao: americano')
      page.should have_content ('Preco: 12.0')
      

   end
end
