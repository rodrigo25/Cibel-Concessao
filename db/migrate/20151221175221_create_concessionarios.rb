class CreateConcessionarios < ActiveRecord::Migration
  def change
    create_table :concessionarios do |t|
      t.string :dt_obito
      t.references :requerente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
