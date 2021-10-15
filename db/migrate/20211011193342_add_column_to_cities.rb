class AddColumnToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :city_name, :string
  end
end
