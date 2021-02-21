class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.boolean :display_arts
      t.boolean :display_antiques

      t.timestamps
    end
  end
end
