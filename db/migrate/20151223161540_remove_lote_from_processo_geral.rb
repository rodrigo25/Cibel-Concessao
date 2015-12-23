class RemoveLoteFromProcessoGeral < ActiveRecord::Migration
  def change
    remove_reference :processos_gerais, :lote, index: true, foreign_key: true
  end
end
