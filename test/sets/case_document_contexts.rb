module Contexts
  module CaseDocumentContexts
    def create_case_documents
      @case_doc = FactoryGirl.create(:case_document, case: @case_gordon, document: @doc)
      @case_doc1 = FactoryGirl.create(:case_document, case: @case_review, document: @doc1)
      @case_doc2 = FactoryGirl.create(:case_document, case: @case_review1, document: @doc2)
      @case_doc3 = FactoryGirl.create(:case_document, case: @case_approved, document: @doc3)
      @case_doc4 = FactoryGirl.create(:case_document, case: @case_rejected, document: @doc4)
      @case_doc5 = FactoryGirl.create(:case_document, case: @case_check_signed, document: @doc6)
      @case_doc6 = FactoryGirl.create(:case_document, case: @case_check_processed, document: @doc7)
      @case_doc7 = FactoryGirl.create(:case_document, case: @case_check_processed, document: @doc8)
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
