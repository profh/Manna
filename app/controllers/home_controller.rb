class HomeController < ApplicationController

  def home
    if logged_in?
      if current_user.is_care_deacon?
        @cases = Case.for_deacon(current_user.id).chronological
      else
        # @need_review
        # @reviewed
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
