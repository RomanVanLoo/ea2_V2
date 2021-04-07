class CreateSettings < ActiveRecord::Migration[6.1]
  def up
    create_table :settings do |t|
      t.boolean :display_arts
      t.boolean :display_antiques

      t.timestamps
    end

    Setting.create!(display_arts: false, display_antiques: false)
  end

  def down
    Setting.destroy_all
  end
end
