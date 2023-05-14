class AddNameToHotels < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :name, :string
  end
end
