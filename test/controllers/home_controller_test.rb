require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get home_top_url
    assert_response :success
  end

end
