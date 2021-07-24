require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get place" do
    get orders_place_url
    assert_response :success
  end

  test "should get index" do
    get orders_index_url
    assert_response :success
  end

end
