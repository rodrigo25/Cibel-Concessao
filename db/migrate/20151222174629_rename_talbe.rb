class RenameTalbe < ActiveRecord::Migration
  def change
    rename_table :users, :funcionarios
  end
end
