class CreatePedalboards < ActiveRecord::Migration[5.1]
  def change
    create_table :pedalboards do |t|
      t.string :name
      t.string :photo_url
      t.string :size
    end
  end
end
