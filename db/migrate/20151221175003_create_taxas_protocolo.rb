class CreateTaxasProtocolo < ActiveRecord::Migration
  def change
    create_table :taxas_protocolo do |t|
      t.string :tipo
      t.decimal :valor

      t.timestamps null: false
    end
  end
end
