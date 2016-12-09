class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
