class CreateMunicipes < ActiveRecord::Migration
  def change
    create_table :municipes do |t|
      t.string :nome
      t.string :RG
      t.string :telefone
      t.string :endereco

      t.timestamps null: false
    end
    add_index :municipes, :nome
    add_index :municipes, :RG
  end
end
