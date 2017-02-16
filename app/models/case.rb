class Case < ActiveRecord::Base
  belongs_to :deacon, class_name: "User", foreign_key: "user_id"
  has_many :votes
end
