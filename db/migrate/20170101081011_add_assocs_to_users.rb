class AddAssocsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :assocs, :string, array: true, default: []
  end
end
