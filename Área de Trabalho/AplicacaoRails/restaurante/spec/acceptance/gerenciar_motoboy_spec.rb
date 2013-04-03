# coding: utf-8

require 'spec_helper'

feature 'gerenciar motoboy' do

  scenario 'incluir motoboy' do # , :js => true  do

    visit new_motoboy_path

    preencher_e_verificar_motoboy

    

  end

  scenario 'alterar motoboy' do #, :js => true  do

    motoboy = FactoryGirl.create(:motoboy)

    visit edit_motoboy_path(motoboy)

    preencher_e_verificar_motoboy



  end

   scenario 'excluir motoboy' do #, :javascript => true  do

       motoboy = FactoryGirl.create(:motoboy)

        visit motoboys_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_motoboy

      fill_in 'Nome',  :with => "Jose"
      fill_in 'Telefone',  :with => "123"
      
 
      click_button 'Salvar'

      page.should have_content ('Nome: Jose')
      page.should have_content ('Telefone: 123')
      

   end
end
