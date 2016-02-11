class AddRuaNumeroAndComplementoToMunicipe < ActiveRecord::Migration
  def change
    add_column :municipes, :numero, :integer
    add_column :municipes, :rua, :string
    add_column :municipes, :complemento, :string
  end
end
