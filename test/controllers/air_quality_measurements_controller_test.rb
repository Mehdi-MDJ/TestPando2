require "test_helper"

class AirQualityMeasurementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get air_quality_measurements_index_url
    assert_response :success
  end
end
