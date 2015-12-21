class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.decimal :valor

      t.timestamps null: false
    end
  end
end
