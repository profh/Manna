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
    assert_difference('Vote.count') do
      post :create, vote: { deacon: @jon, case: @case_gordon, decision: "yes" }
    end
    assert_redirected_to votes_path
    assert_equal "Successfully created vote.", flash[:notice]
    post :create, vote: { case: @case_gordon, decision: "lakjsdhflaks"}
    assert_template :new
  end


  test "should get edit" do
    get :edit, id: @vote_jason
    assert_response :success
  end

  test "should update vote" do
    patch :update, id: @vote_jason1, vote: { deacon: @jason, case: @case_review1, decision: "yes"}
    assert_redirected_to votes_path
    assert_equal "Successfully updated vote.", flash[:notice]
    patch :update, id: @vote_jason1, vote: { case: @case_review1, decision: "asdlfka" }
    assert_template :edit
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete :destroy, id: @vote_jason
    end
    assert_redirected_to votes_path
    assert_equal "Successfully removed vote: yes for Paying rent from the system.", flash[:notice]
  end
end
