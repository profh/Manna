require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  should belong_to(:deacon)
  should belong_to(:case)

  should allow_value("yes").for(:decision)
  should allow_value("no").for(:decision)
  should allow_value("").for(:decision)
  should allow_value(nil).for(:decision)

  should_not allow_value("bad").for(:decision)
  should_not allow_value("hacker").for(:decision)
  should_not allow_value(10).for(:decision)
  should_not allow_value("vp").for(:decision)

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
    should "show all votes that say yes" do
      assert_equal 3, Vote.yes.size
    end

    should "show all votes that say no" do
      assert_equal 1, Vote.no.size
      assert_equal "Paying rent", @vote_jason.case.subject
      assert_equal "PaulaT@gmail.com", @vote_paula.deacon.email
    end

  end
end
