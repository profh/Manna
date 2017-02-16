module Contexts
  module CaseContexts
    def create_cases
      @case_gordon = FactoryGirl.create(:case)
      @case_review = FactoryGirl.create(:case, client_name: "Jason Chen", date: Time.now, summary: "Lorem ipsum", status: "review in progress", user: @jason)
      @case_review1 = FactoryGirl.create(:case, client_name: "Evan Li", date: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", user: @larry)
      @case_approved = FactoryGirl.create(:case, client_name: "Thomas Lu", date: 2.weeks.ago.to_date, summary: "Lorem ipsum", status: "approved", user: @larry)
      @case_rejected = FactoryGirl.create(:case, client_name: "Spencer Poon", date: 3.months.ago.to_date, summary: "Lorem ipsum", status: "rejected", user: @jon)
      @case_check_signed = FactoryGirl.create(:case, client_name: "Molly Chou", date: 3.weeks.ago.to_date, summary: "Lorem ipsum", status: "check signed", user: @jon)
      @case_check_processed = FactoryGirl.create(:case, client_name: "Catherine Zeng", date: 13.months.ago.to_date, summary: "Lorem ipsum", status: "check processed", user: @jon)
    end

    def remove_cases
      @case_gordon.destroy
      @case_review.destroy
      @case_review1.destroy
      @case_approved.destroy
      @case_rejected.destroy
      @case_check_signed.destroy
      @case_check_processed.destroy
    end

  end
end
