class RemoveEnderecoFromMunicipe < ActiveRecord::Migration
  def change
    remove_column :municipes, :endereco, :string
  end
end
