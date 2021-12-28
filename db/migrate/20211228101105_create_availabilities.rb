class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.references :users
      t.datetime :date_full
      t.time :start_time
      t.time :end_time
      t.boolean :available
      t.string :day_of_the_week
      t.string :day_number_in_week
      t.boolean :is_holiday

      t.timestamps
    end
  end
end
