require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:votes).through(:cases)
  should have_many(:cases)

  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:role)
  should validate_presence_of(:email)
  should validate_presence_of(:is_care_deacon)

  #email
  should validate_uniqueness_of(:email)
  should allow_value("jason95014@gmail.com").for(:email)
  should allow_value("jasonc1@andrew.cmu.edu").for(:email)
  should_not allow_value("j@gmail.com").for(:email)
  should_not allow_value("").for(:email)
  should_not allow_value(32).for(:email)

  #phone
  should allow_value("4122683259").for(:phone)
  should allow_value("412-268-3259").for(:phone)
  should allow_value("412.268.3259").for(:phone)
  should allow_value("(412) 268-3259").for(:phone)
  should allow_value(nil).for(:phone)
  should_not allow_value("2683259").for(:phone)
  should_not allow_value("14122683259").for(:phone)
  should_not allow_value("4122683259x224").for(:phone)
  should_not allow_value("800-EAT-FOOD").for(:phone)
  should_not allow_value("412/268/3259").for(:phone)
  should_not allow_value("412-2683-259").for(:phone)

  #role
  should allow_value("admin").for(:role)
  should allow_value("deacon").for(:role)
  should_not allow_value("bad").for(:role)
  should_not allow_value("hacker").for(:role)
  should_not allow_value(10).for(:role)
  should_not allow_value("vp").for(:role)
  should_not allow_value(nil).for(:role)

  context "Creating a context for users" do
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

  end
end
