class CreateSandwichShops < ActiveRecord::Migration[6.1]
  def change
    create_table :sandwich_shops do |t|
      t.string :name
      t.string :description
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
