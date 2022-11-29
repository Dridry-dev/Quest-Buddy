require "test_helper"

class SkinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skins_index_url
    assert_response :success
  end

  test "should get show" do
    get skins_show_url
    assert_response :success
  end

  test "should get edit" do
    get skins_edit_url
    assert_response :success
  end
end
