class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string "description"
      t.integer "user_id"
      t.timestamps
    end
  end
end
