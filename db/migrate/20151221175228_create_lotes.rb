class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.string :quadra, :default => ''
      t.string :terreno, :default => ''
      t.string :gleba, :default => ''
      t.string :rua, :default => ''
      t.string :avenida, :default => ''
      t.float :largura, :default => 0.0
      t.float :comprimento, :default => 0.0
      t.string :tipo_construcao, :default => ''
      t.integer :qtd_gaveta, :default => 0
      t.integer :qtd_ossario, :default => 0
      t.string :estado, :default => ''
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
