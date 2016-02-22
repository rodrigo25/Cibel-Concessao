class CreateTaxas < ActiveRecord::Migration
  def change
    create_table :taxas do |t|
      t.string :tipo
      t.decimal :valor

      t.timestamps null: false
    end
  end
end
