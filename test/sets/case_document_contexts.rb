module Contexts
  module CaseDocumentContexts
    def create_case_documents
      @case_doc = FactoryGirl.create(:case_document, case_id: @case_gordon, document_id: @doc)
      @case_doc1 = FactoryGirl.create(:case_document, case_id: @case_review, document_id: @doc1)
      @case_doc2 = FactoryGirl.create(:case_document, case_id: @case_review1, document_id: @doc2)
      @case_doc3 = FactoryGirl.create(:case_document, case_id: @case_approved, document_id: @doc3)
      @case_doc4 = FactoryGirl.create(:case_document, case_id: @case_rejected, document_id: @doc4)
      @case_doc5 = FactoryGirl.create(:case_document, case_id: @case_check_signed, document_id: @doc6)
      @case_doc6 = FactoryGirl.create(:case_document, case_id: @case_check_processed, document_id: @doc7)
      @case_doc7 = FactoryGirl.create(:case_document, case_id: @case_check_processed, document_id: @doc8)
    end

    def remove_case_documents
      @case_doc.destroy
      @case_doc1.destroy
      @case_doc2.destroy
      @case_doc3.destroy
      @case_doc4.destroy
      @case_doc5.destroy
      @case_doc6.destroy
      @case_doc7.destroy
    end

  end
end
