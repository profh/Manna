require 'test_helper'

class CaseDocumentTest < ActiveSupport::TestCase
  should belong_to :document
  should belong_to :case

  context "Creating a context for users" do
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

    #running the tests:

  end
end
