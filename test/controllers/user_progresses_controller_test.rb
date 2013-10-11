require 'test_helper'

class UserProgressesControllerTest < ActionController::TestCase
  setup do
    @user_progress = user_progresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_progresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_progress" do
    assert_difference('UserProgress.count') do
      post :create, user_progress: { book_no: @user_progress.book_no, chapter_no: @user_progress.chapter_no, last_read: @user_progress.last_read, user_id: @user_progress.user_id }
    end

    assert_redirected_to user_progress_path(assigns(:user_progress))
  end

  test "should show user_progress" do
    get :show, id: @user_progress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_progress
    assert_response :success
  end

  test "should update user_progress" do
    patch :update, id: @user_progress, user_progress: { book_no: @user_progress.book_no, chapter_no: @user_progress.chapter_no, last_read: @user_progress.last_read, user_id: @user_progress.user_id }
    assert_redirected_to user_progress_path(assigns(:user_progress))
  end

  test "should destroy user_progress" do
    assert_difference('UserProgress.count', -1) do
      delete :destroy, id: @user_progress
    end

    assert_redirected_to user_progresses_path
  end
end
