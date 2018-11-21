class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.belongs_to :user
      t.integer :mental_rating
      t.string :mental_note
      t.integer :emotional_rating
      t.string :emotional_note
      t.integer :physical_rating
      t.string :physical_note
      t.integer :spiritual_rating
      t.string :spiritual_note
      
      t.timestamps
    end
  end
end
