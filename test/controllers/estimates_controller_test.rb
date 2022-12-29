require "test_helper"

class EstimatesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get estimates_new_url
    assert_response :success
  end

  test "should get create" do
    get estimates_create_url
    assert_response :success
  end
end
