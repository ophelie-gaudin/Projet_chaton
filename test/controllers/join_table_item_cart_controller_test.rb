require 'test_helper'

class JoinTableItemCartControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get join_table_item_cart_destroy_url
    assert_response :success
  end

end
