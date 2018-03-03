class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :title
      t.string :items
      t.references :user, index: true, foreign_key: true
      t.string :permissions, default: 'private'
      t.timestamps null: false
    end
  end
end
