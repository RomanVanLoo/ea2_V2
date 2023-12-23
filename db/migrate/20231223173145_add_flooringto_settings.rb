class AddFlooringtoSettings < ActiveRecord::Migration[6.1]
  def change
    add_column :settings, :display_flooring, :string
  end
end
