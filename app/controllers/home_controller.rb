class HomeController < ApplicationController

  def home
    if logged_in?
      if current_user.is_care_deacon?
        @cases = Case.for_deacon(current_user.id).chronological
      else
        @need_review = Case.submitted.paginate(page: params[:page]).per_page(10)
        @reviewed = Case.reviewed.paginate(page: params[:page]).per_page(10)
      end
    end
  end

  def apply
  end

  def cases
  end

  def clients
  end
end
