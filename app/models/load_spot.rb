# frozen_string_literal: true

class LoadSpot < ApplicationRecord
  has_many :load_spot_load_forecast_limits
  has_many :load_forecasts
end
