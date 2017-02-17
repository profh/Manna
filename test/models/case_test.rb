require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  should belong_to(:deacon)
  should have_many(:votes)

  should validate_presence_of(:client_name)
  should validate_presence_of(:summary)

  should allow_value("submitted").for(:status)
  should allow_value("review in progress").for(:status)
  should allow_value("approved").for(:status)
  should allow_value("rejected").for(:status)
  should allow_value("check signed").for(:status)
  should allow_value("check processed").for(:status)
  should_not allow_value("bad").for(:status)
  should_not allow_value("hacker").for(:status)
  should_not allow_value(10).for(:status)
  should_not allow_value("vp").for(:status)
  should_not allow_value(nil).for(:status)

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
    should "show that the chronological scope works" do
      assert_equal 7, Case.chronological.size
      assert_equal ["Gordon Ramsay", "Jonathan Tsao", "Evan Li", "Thomas Lu", "Molly Chou", "Spencer Poon", "Catherine Zeng"], Case.chronological.map{|e| e.client_name}
    end

    should "show that there is one submitted case " do
      assert_equal 1, Case.submitted.size
      assert_equal ["Gordon Ramsay"], Case.submitted.map{|e| e.client_name}
    end

    should "show that there is one approved case " do
      assert_equal 1, Case.approved.size
      assert_equal ["Thomas Lu"], Case.approved.map{|e| e.client_name}
    end

    should "show that there are 2 review in progress cases " do
      assert_equal 2, Case.review_in_progress.size
      assert_equal ["Evan Li","Jonathan Tsao"], Case.review_in_progress.map{|e| e.client_name}.sort
    end

    should "show that there is one rejected case " do
      assert_equal 1, Case.rejected.size
      assert_equal ["Spencer Poon"], Case.rejected.map{|e| e.client_name}
    end

    should "show that there is one check signed case " do
      assert_equal 1, Case.check_signed.size
      assert_equal ["Molly Chou"], Case.check_signed.map{|e| e.client_name}
    end

    should "show that there is one check processed case " do
      assert_equal 1, Case.check_processed.size
      assert_equal ["Catherine Zeng"], Case.check_processed.map{|e| e.client_name}
    end
  end
end
