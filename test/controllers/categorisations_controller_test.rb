require 'test_helper'

class CategorisationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get categorisations_index_url
    assert_response :success
  end

  test "should get show" do
    get categorisations_show_url
    assert_response :success
  end

end
