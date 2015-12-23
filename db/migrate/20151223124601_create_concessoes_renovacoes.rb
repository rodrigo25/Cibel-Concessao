class CreateConcessoesRenovacoes < ActiveRecord::Migration
  def change
    create_table :concessoes_renovacoes do |t|
      t.integer :periodo_concessao
      t.references :processo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
