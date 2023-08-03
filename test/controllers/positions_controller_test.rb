require "test_helper"

class PositionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get positions_index_url
    assert_response :success
  end

  test "should get create" do
    get positions_create_url
    assert_response :success
  end

  test "should get new" do
    get positions_new_url
    assert_response :success
  end

  test "should get edit" do
    get positions_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get positions_destroy_url
    assert_response :success
  end
end
