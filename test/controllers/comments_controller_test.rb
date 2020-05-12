require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comments_destroy_url
    assert_response :success
  end

  test "should get find_commentable" do
    get comments_find_commentable_url
    assert_response :success
  end

end
