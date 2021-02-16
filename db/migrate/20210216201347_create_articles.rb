class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :dimensions
      t.float :price

      t.timestamps
    end
  end
end
