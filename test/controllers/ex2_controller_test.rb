require "test_helper"

class Ex2ControllerTest < ActionDispatch::IntegrationTest
  test "should get loop" do
    get ex2_loop_url
    assert_response :success
  end
end
