class Case < ActiveRecord::Base
  belongs_to :deacon, class_name: "User", foreign_key: "user_id"
  has_many :votes

  validates_presence_of :client_name, :summary
  validates_inclusion_of :status, in: %w[submitted review\ in\ progress approved rejected check\ signed check\ processed], message: "is not an option"

  #scopes
  scope :chronological,    -> { order('date_submitted DESC') }
  scope :submitted,        -> { where(status: "submitted")}
  scope :review_in_progress,        -> { where(status: "review in progress")}
  scope :approved,        -> { where(status: "approved")}
  scope :rejected,        -> { where(status: "rejected")}
  scope :check_signed,        -> { where(status: "check signed")}
  scope :check_processed,        -> { where(status: "check processed")}

  #methods

end
