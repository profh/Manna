require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  should belong_to(:deacon)
  should belong_to(:case)

  context "Creating a context for votes" do
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

    #running the tests:

  end
end
