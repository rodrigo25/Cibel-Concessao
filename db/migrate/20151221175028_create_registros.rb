class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :tipo
      t.string :descricao
      t.datetime :data
      t.references :funcionario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
