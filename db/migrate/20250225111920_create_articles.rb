class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :photos
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.datetime :posted_at
      t.string :category

      t.timestamps
    end
  end
end
