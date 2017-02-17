module Contexts
  module VoteContexts
    def create_votes
      @vote_jason = FactoryGirl.create(:vote, deacon_id: @jason, case_id: @case_gordon, decision: "yes")
      @vote_jason1 = FactoryGirl.create(:vote, deacon_id: @jason, case_id: @case_review1, decision: "")
      @vote_jason2 = FactoryGirl.create(:vote, deacon_id: @jason, case_id: @case_review, decision: "no")
      @vote_paula = FactoryGirl.create(:vote, deacon_id: @paula, case_id: @case_check_processed, decision: "yes")
      @vote_larry = FactoryGirl.create(:vote, deacon_id: @larry, case_id: @case_check_signed, decision: "yes")
    end

    def remove_votes
      @vote_larry.destroy
      @vote_paula.destroy
      @vote_jason2.destroy
      @vote_jason1.destroy
      @vote_jason.destroy
    end

  end
end
