class CreateTimedLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :timed_logs do |t|
      t.belongs_to :user, foreign_key: true
      t.string :time

      t.timestamps
    end
  end
end
