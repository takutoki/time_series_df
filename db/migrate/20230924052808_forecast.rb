class Forecast < ActiveRecord::Migration[7.0]
  def change

    create_table :load_spots do |t|
      t.string :name
      t.string :code
      t.timestamps
    end

    create_table :load_spot_load_forecast_limits do |t|
      t.references :load_spot, null: false, foreign_key: true

      (1..48).each do |i|
        column_name = "_#{i.to_s.rjust(2, '0')}"
        t.decimal column_name, precision: 20, scale: 10
      end

      t.timestamps
    end

    create_table :load_forecasts do |t|
      t.references :load_spot, null: false, foreign_key: true
      t.datetime :forecasted_at
      t.date :target_date

      (1..48).each do |i|
        column_name = "_#{i.to_s.rjust(2, '0')}"
        t.decimal column_name, precision: 20, scale: 10
      end

      t.timestamps
    end
  end
end
