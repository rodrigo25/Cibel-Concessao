class CreatePermutas < ActiveRecord::Migration
  def change
    create_table :permutas do |t|
      t.references :processo, index: true, foreign_key: true
      t.references :lote, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
