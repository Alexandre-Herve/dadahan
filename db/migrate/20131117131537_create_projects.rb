class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.date :date
      t.boolean :is_ancient
      t.boolean :is_modern
      t.string :address
      t.text :description
      t.text :program
      t.float :amount_in_euro
      t.float :surface_in_squared_meters

      t.timestamps
    end
  end
end
