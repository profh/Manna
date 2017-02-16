require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

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
