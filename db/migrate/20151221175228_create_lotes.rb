class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.string :quadra
      t.string :terreno
      t.string :gleba
      t.string :rua
      t.string :avenida
      t.float :largura
      t.float :comprimento
      t.string :tipo_construcao
      t.integer :qtd_gaveta
      t.integer :qtd_ossario
      t.string :estado
      t.references :concessionario, index: true, foreign_key: true
      t.references :cemiterio, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :lotes, :quadra
    add_index :lotes, :terreno
    add_index :lotes, :gleba
    add_index :lotes, :rua
    add_index :lotes, :avenida
  end
end
