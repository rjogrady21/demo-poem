require 'test_helper'

class PoetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get poets_show_url
    assert_response :success
  end

  test "should get index" do
    get poets_index_url
    assert_response :success
  end

end
