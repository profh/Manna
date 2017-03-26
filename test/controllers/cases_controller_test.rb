require 'test_helper'

class CasesControllerTest < ActionController::TestCase
  setup do
    create_cases
  end

  teardown do
    remove_cases
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cases)
    # assert_equal ["Gordon Ramsay", "Jonathan Tsao", "Evan Li", "Thomas Lu", "Molly Chou", "Spencer Poon", "Catherine Zeng"], assigns(:cases).map(&:client_name)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a new case" do
    assert_difference('Case.count') do
      post :create, case: { client_name: "Kevin Louie", date_submitted: Time.now, summary: "Lorem ipsum", status: "review in progress", subject: "New Car", deacon: @jason }
    end
    assert_redirected_to case_path(assigns(:case))
    assert_equal "Successfully created case: New Car for Kevin Louie.", flash[:notice]
    post :create, case: { date_submitted: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", subject: "New Car", deacon: @jason }
    assert_template :new
  end

  test "should show case.. and eventually case documents/votes" do
    create_users
    get :show, id: @case_gordon
    assert_not_nil assigns(:case)
    assert_equal "Paying rent", assigns(:case).subject
    assert_response :success
    remove_users

  end

  test "should get edit" do
    get :edit, id: @case_gordon
    assert_not_nil assigns(:case)
    assert_response :success
  end

  test "should update a case" do
    patch :update, id: @case_review, case: {client_name: "Jonathan Park", date_submitted: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", subject: "Medical Bill", deacon: @jason}
    assert_redirected_to case_path(assigns(:case))
    assert_equal "Successfully updated case: Medical Bill for Jonathan Park.", flash[:notice]
    patch :update, id: @case_review, case: { client_name: nil, date_submitted: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", subject: "Medical Bill", deacon: @jason}
    assert_template :edit
  end

  test "should destroy case" do
    assert_difference('Case.count', -1) do
      delete :destroy, id: @case_review1
    end
    assert_redirected_to cases_path
    assert_equal "Successfully removed case: Car repair for Evan Li from the system.", flash[:notice]
  end

end
