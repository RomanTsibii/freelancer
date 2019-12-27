class RenameTablePrising < ActiveRecord::Migration[6.0]
  def change
    rename_table 'prisings', 'pricings'
  end
end
