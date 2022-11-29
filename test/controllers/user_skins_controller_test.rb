require "test_helper"

class UserSkinsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_skins_create_url
    assert_response :success
  end

  test "should get update" do
    get user_skins_update_url
    assert_response :success
  end
end
