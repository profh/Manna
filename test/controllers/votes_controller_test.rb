require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  setup do
    create_users
    create_cases
    create_votes
  end

  teardown do
    remove_votes
    remove_cases
    remove_users
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:votes)

  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote" do

  end


  test "should get edit" do
    get :edit, id: @vote_jason
    assert_response :success
  end

  test "should update vote" do

  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete :destroy, id: @vote_jason
    end
    assert_redirected_to votes_path
    assert_equal "Successfully removed vote: yes for Paying rent from the system.", flash[:notice]
  end
end
