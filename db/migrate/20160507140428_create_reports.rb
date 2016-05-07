class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.date :date, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
