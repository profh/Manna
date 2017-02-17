module Contexts
  module CaseContexts
    def create_cases
      @case_gordon = FactoryGirl.create(:case, deacon_id: @jason)
      @case_review = FactoryGirl.create(:case, client_name: "Jonathan Tsao", date_submitted: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", deacon_id: @jason)
      @case_review1 = FactoryGirl.create(:case, client_name: "Evan Li", date_submitted: 2.days.ago.to_date, summary: "Lorem ipsum", status: "review in progress", deacon_id: @larry)
      @case_approved = FactoryGirl.create(:case, client_name: "Thomas Lu", date_submitted: 2.weeks.ago.to_date, summary: "Lorem ipsum", status: "approved", deacon_id: @larry)
      @case_rejected = FactoryGirl.create(:case, client_name: "Spencer Poon", date_submitted: 3.months.ago.to_date, summary: "Lorem ipsum", status: "rejected", deacon_id: @jon)
      @case_check_signed = FactoryGirl.create(:case, client_name: "Molly Chou", date_submitted: 3.weeks.ago.to_date, summary: "Lorem ipsum", status: "check signed", deacon_id: @jon)
      @case_check_processed = FactoryGirl.create(:case, client_name: "Catherine Zeng", date_submitted: 13.months.ago.to_date, summary: "Lorem ipsum", status: "check processed", deacon_id: @jon)
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
