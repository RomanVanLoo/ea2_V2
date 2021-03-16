class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :content
      t.references :articles, index: true, foreign_key: true

      t.timestamps
    end
  end
end
