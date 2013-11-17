class CreateFakePhotos < ActiveRecord::Migration
  def change
    create_table :fake_photos do |t|
      t.string :url

      t.timestamps
    end
  end
end
