require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get deactivr" do
    get users_deactivr_url
    assert_response :success
  end

  test "should get friends" do
    get users_friends_url
    assert_response :success
  end

  test "should get followers" do
    get users_followers_url
    assert_response :success
  end

  test "should get mentionable" do
    get users_mentionable_url
    assert_response :success
  end

  test "should get user_params" do
    get users_user_params_url
    assert_response :success
  end

  test "should get check_ownership" do
    get users_check_ownership_url
    assert_response :success
  end

  test "should get set_user" do
    get users_set_user_url
    assert_response :success
  end

end
