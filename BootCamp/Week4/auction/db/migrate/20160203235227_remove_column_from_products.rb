class RemoveColumnFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :deadline_for_bidding, :date
  end
end
