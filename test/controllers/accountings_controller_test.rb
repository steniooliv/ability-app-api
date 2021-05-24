require "test_helper"

class AccountingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accountings_index_url
    assert_response :success
  end

  test "should get show" do
    get accountings_show_url
    assert_response :success
  end
end
