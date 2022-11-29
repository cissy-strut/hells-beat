require "test_helper"

class MatchingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matchings_index_url
    assert_response :success
  end

  test "should get refuse" do
    get matchings_refuse_url
    assert_response :success
  end

  test "should get accept" do
    get matchings_accept_url
    assert_response :success
  end

  test "should get show" do
    get matchings_show_url
    assert_response :success
  end
end
