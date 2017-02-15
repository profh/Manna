require 'test_helper'

class CaseDocumentsControllerTest < ActionController::TestCase
  setup do
    @case_document = case_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_document" do
    assert_difference('CaseDocument.count') do
      post :create, case_document: { case_id: @case_document.case_id, document_id: @case_document.document_id }
    end

    assert_redirected_to case_document_path(assigns(:case_document))
  end

  test "should show case_document" do
    get :show, id: @case_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_document
    assert_response :success
  end

  test "should update case_document" do
    patch :update, id: @case_document, case_document: { case_id: @case_document.case_id, document_id: @case_document.document_id }
    assert_redirected_to case_document_path(assigns(:case_document))
  end

  test "should destroy case_document" do
    assert_difference('CaseDocument.count', -1) do
      delete :destroy, id: @case_document
    end

    assert_redirected_to case_documents_path
  end
end
