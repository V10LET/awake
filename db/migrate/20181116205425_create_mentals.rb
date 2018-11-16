class CreateMentals < ActiveRecord::Migration[5.2]
  def change
    create_table :mentals do |t|
      t.integer :rating
      t.text :note

      t.timestamps
    end
  end
end
