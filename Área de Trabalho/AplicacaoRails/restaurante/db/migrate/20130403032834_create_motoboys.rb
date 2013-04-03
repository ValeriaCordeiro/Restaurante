class CreateMotoboys < ActiveRecord::Migration
  def change
    create_table :motoboys do |t|
      t.string :nome
      t.string :telefone

      t.timestamps
    end
  end
end
