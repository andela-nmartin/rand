class CreateTimetracks < ActiveRecord::Migration
  def change
    create_table :timetracks do |t|
      t.date :date
      t.string :user_id
      t.string :project_id
      t.datetime :total_time

      t.timestamps null: false
    end
  end
end
