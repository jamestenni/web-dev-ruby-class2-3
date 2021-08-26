require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get abc" do
    get main_abc_url
    assert_response :success
  end
end
