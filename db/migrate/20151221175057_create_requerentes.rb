class CreateRequerentes < ActiveRecord::Migration
  def change
    create_table :requerentes do |t|
      t.string :CPF
      t.datetime :dt_nascimento
      t.string :CEP
      t.string :bairro
      t.string :cidade
      t.string :nacionalidade
      t.string :estado
      t.string :estado_civil
      t.string :profissao
      t.string :celular
      t.string :email
      t.references :municipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
