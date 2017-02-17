module Contexts
  module UserContexts
    def create_users
      @jason = FactoryGirl.create(:user)
      @jon = FactoryGirl.create(:user, first_name: "Jon", last_name: "Wu", email: "jonWu@gmail.com", password_digest: "meh", phone: "4121112222", role: "deacon", is_care_deacon: "true", active: "true")
      @larry = FactoryGirl.create(:user, first_name: "Larry", last_name: "Heimann", email: "LarryH@gmail.com", password_digest: "meh", phone: "4123334444", role: "deacon", is_care_deacon: "false", active: "true")
      @paula = FactoryGirl.create(:user, first_name: "Paula", last_name: "Troy", email: "PaulaT@gmail.com", password_digest: "meh", phone: "4125556666", role: "deacon", is_care_deacon: "false", active: "false")

    end

    def remove_users
      @paula.destroy
      @larry.destroy
      @jon.destroy
      @jason.destroy
    end

  end
end
