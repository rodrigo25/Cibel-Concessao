class CreateProcessos < ActiveRecord::Migration
  def change
    create_table :processos do |t|
      t.integer :num_cadastro
      t.datetime :dt_abertura
      t.decimal :valor
      t.string :dt_baixa
      t.string :situacao
      t.references :municipe, index: true, foreign_key: true
      t.references :requerente, index: true, foreign_key: true
      t.references :concessionario, index: true, foreign_key: true
      t.references :processo_geral, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :processos, :num_cadastro
  end
end
