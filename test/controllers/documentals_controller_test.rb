require "test_helper"

class DocumentalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentals_index_url
    assert_response :success
  end

  test "should get create" do
    get documentals_create_url
    assert_response :success
  end

  test "should get new" do
    get documentals_new_url
    assert_response :success
  end
end
