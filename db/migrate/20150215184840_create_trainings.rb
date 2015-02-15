class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.text :description
      t.integer :duration
      t.date :day
      t.time :time

      t.timestamps null: false
    end
  end
end
