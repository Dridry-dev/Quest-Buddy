require "test_helper"

class UserGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_goals_new_url
    assert_response :success
  end

  test "should get create" do
    get user_goals_create_url
    assert_response :success
  end
end
