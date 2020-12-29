require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get customers_show_url
    assert_response :success
  end

  test "should get exit_check" do
    get customers_exit_check_url
    assert_response :success
  end

end
