require 'test_helper'

class IslandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get islands_index_url
    assert_response :success
  end

  test "should get show" do
    get islands_show_url
    assert_response :success
  end

end
