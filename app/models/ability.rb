class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # i.e., a guest user

    # set authorizations for different user roles
    if user.role? :admin
      # they get to do it all
      can :manage, :all

    elsif user.role? :deacon
      if user.is_care_deacon?

      else

      end

  end

end
