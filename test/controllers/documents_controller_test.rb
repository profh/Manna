require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    create_users
    create_cases
    create_votes
    create_case_documents
    create_documents
  end

  teardown do
    remove_documents
    remove_case_documents
    remove_votes
    remove_cases
    remove_users
  end

  test "should get index" do
    get :index
    assert_not_nil assigns(:documents)
  end

  test "should create a new document" do
    assert_difference('Document.count') do
      post :create, document: { name: "water_bill" }
    end
    assert_redirected_to documents_path
    assert_equal "Successfully created document.", flash[:notice]
    post :create, document: { name: nil}
    assert_template :new
  end

  test "should get edit" do
    get :edit, id: @doc1
    assert_not_nil assigns(:document)
    assert_response :success
  end

  test "should update document" do
    patch :update, id: @doc1, document: { name: "W4"}
    assert_redirected_to documents_path
    assert_equal "Successfully updated document.", flash[:notice]
    patch :update, id: @doc1, document: { name: nil }
    assert_template :edit
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, id: @doc1
    end
    assert_redirected_to documents_path
    assert_equal "Successfully removed document.", flash[:notice]
  end

end
