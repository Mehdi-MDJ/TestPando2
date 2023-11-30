class AirQualityMeasurementsController < ApplicationController

  def index
    @measurements = AirQualityMeasurement.all
  end
end
