require 'test_helper'

class DeliverliesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deliverlies_index_url
    assert_response :success
  end

  test "should get edit" do
    get deliverlies_edit_url
    assert_response :success
  end

end
