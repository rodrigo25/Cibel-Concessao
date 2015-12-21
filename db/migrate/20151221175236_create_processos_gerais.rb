class CreateProcessosGerais < ActiveRecord::Migration
  def change
    create_table :processos_gerais do |t|
      t.string :numero
      t.string :tipo
      t.string :observacoes
      t.string :livro
      t.string :folha
      t.string :resolucao
      t.references :lote, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :processos_gerais, :numero
    add_index :processos_gerais, :tipo
  end
end
