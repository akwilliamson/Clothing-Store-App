class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.attachment :pic
    end

    create_table :users do |t|
      t.string :name
      t.string :password_digest
    end
  end
end
