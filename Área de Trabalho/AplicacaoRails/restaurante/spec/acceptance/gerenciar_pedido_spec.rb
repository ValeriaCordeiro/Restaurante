# coding: utf-8

require 'spec_helper'

feature 'gerenciar pedido' do

  scenario 'incluir pedido' do # , :js => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'Valeria')
    motoboy = FactoryGirl.create(:motoboy, :nome => 'Jose')
    
    visit new_pedido_path

    preencher_e_verificar_pedido

    

  end

  scenario 'alterar pedido' do #, :js => true  do
 
   cliente = FactoryGirl.create(:cliente, :nome => 'Valeria')
   motoboy = FactoryGirl.create(:motoboy, :nome => 'Jose')
    
   pedido = FactoryGirl.create(:pedido, :cliente => cliente, :motoboy => motoboy)

    visit edit_pedido_path(pedido)

    preencher_e_verificar_pedido



  end

   scenario 'excluir pedido' do #, :javascript => true  do


       cliente = FactoryGirl.create(:cliente, :nome => 'Valeria')
       motoboy = FactoryGirl.create(:motoboy, :nome => 'Jose')
    
       pedido = FactoryGirl.create(:pedido, :cliente => cliente, :motoboy => motoboy)


        visit pedidos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_pedido

      fill_in 'Data',  :with => "25/03/10"
      fill_in 'Hora',  :with => "14:30"
      fill_in 'Valor', :with => 35.0

      select 'Valeria', :on => 'Cliente'
      select 'Jose', :on => 'Motoboy'
 
      click_button 'Salvar'

      page.should have_content ('Data: 25/03/10')
      page.should have_content ('Hora: 14:30')
      page.should have_content ('Valor: 35.0')
      page.should have_content ('Cliente: Valeria')
      page.should have_content ('Motoboy: Jose')

   end
end
