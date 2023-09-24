# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

load_spot = LoadSpot.create(name: "Load Spot 1", code: "LS1")

LoadForecast.create(
  load_spot: load_spot,
  forecasted_at: Time.zone.now,
  target_date: Date.today, 
  **(1..48).map { |i| ["_#{i.to_s.rjust(2, '0')}", rand(1000)] }.to_h
)

LoadSpotLoadForecastLimit.create(
  load_spot: load_spot,
  **(1..48).map { |i| ["_#{i.to_s.rjust(2, '0')}", rand(1000)] }.to_h
)
