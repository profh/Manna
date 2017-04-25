class Vote < ActiveRecord::Base
  belongs_to :deacon, class_name: "User", foreign_key: "deacon_id"
  belongs_to :case, foreign_key: "case_id"

  validates_inclusion_of :decision, in: %w[yes no], :allow_blank => true, message: "is not an option"
  # validates :case_id, uniqueness: { scope: :deacon_id, message: "You've voted on this case!" }

  #scopes
  scope :yes, -> { where(decision: "yes") }
  scope :no, -> {where(decision: "no")}
  # scope :blank, -> {where(decision: "" )}

  #methods
  def vote_exists

  end

end
