class CreateProcessosGeraisLotes < ActiveRecord::Migration
  def change
    create_table :processos_gerais_lotes do |t|
      t.references :lote, index: true, foreign_key: true
      t.references :processo_geral, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
