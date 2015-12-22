class AddIndexToRequerentesCpf < ActiveRecord::Migration
  def change
  	add_index :requerentes, :CPF, unique: true
  end
end
