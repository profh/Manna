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
        #care deacon
        can :read, Case do |c|
            c.deacon_id == user.id
        end
        can :edit, Case do |c|
          c.deacon_id == user.id
        end
        can :destroy, Case do |c|
          c.deacon_id == user.id
        end
        can :update, Case do |c|
          c.deacon_id == user.id
        end

        can :create, Case
      else
        #financial deacon
        can :create, Vote
        can :read, Case
        can :create, Case
        can :update, Case do |c|
          c.deacon_id == user.id
        end
        can :destroy, Case do |c|
          c.deacon_id == user.id
        end
      end
    end
  end

end
