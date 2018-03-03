class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :list, index: true, foreign_key: true
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
