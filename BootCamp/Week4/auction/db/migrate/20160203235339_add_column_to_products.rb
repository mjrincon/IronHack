class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :deadline, :datetime
  end
end
