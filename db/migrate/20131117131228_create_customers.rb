class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.boolean :is_private
      t.boolean :is_public
      t.boolean :is_individual
      t.string :name

      t.timestamps
    end
  end
end
