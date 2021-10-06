class CreateSandwichshops < ActiveRecord::Migration[6.1]
  def change
    create_table :sandwichshops do |t|
      t.string :name
      t.string :description
      t.belongs_to :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
