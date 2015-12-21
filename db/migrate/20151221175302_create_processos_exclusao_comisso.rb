class CreateProcessosExclusaoComisso < ActiveRecord::Migration
  def change
    create_table :processos_exclusao_comisso do |t|
      t.string :num_processo
      t.string :tipo
      t.string :situacao
      t.references :processo, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :processos_exclusao_comisso, :num_processo
  end
end
