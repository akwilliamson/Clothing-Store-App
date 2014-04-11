class AddColumnToUsers2 < ActiveRecord::Migration
  def change
    add_column :users, :admin, :string
  end
end
