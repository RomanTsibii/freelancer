class RenameStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :statuts, :status
  end
end
