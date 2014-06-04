class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :meal_date
      t.text :description
      t.string :drink

      t.timestamps
    end
  end
end
