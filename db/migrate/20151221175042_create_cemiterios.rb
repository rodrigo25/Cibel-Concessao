class CreateCemiterios < ActiveRecord::Migration
  def change
    create_table :cemiterios do |t|
      t.string :nome
      t.string :endereco
      t.string :CEP
      t.string :telefone
      t.string :bairro
      t.string :celular
      t.string :fax
      t.string :prazo_concessao
      t.references :categoria, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :cemiterios, :nome
  end
end
