# coding: utf-8

require 'spec_helper'

feature 'gerenciar itempedido' do

  scenario 'incluir itempedido' do # , :js => true  do

    pedido = FactoryGirl.create(:pedido, :data => '25/03/10')
    cardapio = FactoryGirl.create(:cardapio, :nome => 'lanche')
    
    visit new_itempedido_path

    preencher_e_verificar_itempedido

    

  end

  scenario 'alterar itempedido' do #, :js => true  do
 
    pedido = FactoryGirl.create(:pedido, :data => '25/03/10')
    cardapio = FactoryGirl.create(:cardapio, :nome => 'lanche')
    
    itempedido = FactoryGirl.create(:itempedido, :pedido => pedido, :cardapio => cardapio)

    visit edit_itempedido_path(itempedido)

    preencher_e_verificar_itempedido



  end

   scenario 'excluir itempedido' do #, :javascript => true  do


    pedido = FactoryGirl.create(:pedido, :data => '25/03/10')
    cardapio = FactoryGirl.create(:cardapio, :nome => 'lanche')
    
    itempedido = FactoryGirl.create(:itempedido, :pedido => pedido, :cardapio => cardapio)

    visit itempedidos_path

    click_link 'Excluir'

    

  end

   def preencher_e_verificar_itempedido

      fill_in 'Quantidade',  :with => 1
      

      select '25/03/10', :on => 'Pedido'
      select 'lanche', :on => 'Cardapio'
 
      click_button 'Salvar'

      page.should have_content ('Quantidade: 1')
     
      page.should have_content ('Pedido: 25/03/10')
      page.should have_content ('Cardapio: lanche')

   end
end
