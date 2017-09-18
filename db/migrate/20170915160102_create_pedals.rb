class CreatePedals < ActiveRecord::Migration[5.1]
  def change
    create_table :pedals do |t|
      t.string :name
      t.string :style
      t.string :photo_url
    end
  end
end
