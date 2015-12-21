class CreateParcelas < ActiveRecord::Migration
  def change
    create_table :parcelas do |t|
      t.integer :numero
      t.decimal :valor
      t.datetime :dt_pagamento
      t.datetime :dt_vencimento
      t.string :tipo
      t.references :processo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
