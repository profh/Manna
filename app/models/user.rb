class User < ActiveRecord::Base
  has_many :votes, through: :cases
  has_many :cases, class_name: "Case", foreign_key: "deacon_id"

  validates_presence_of :first_name, :last_name, :role, :email
  validates_format_of :phone, with: /\A\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}\z/, message: "should be 10 digits (area code needed) and delimited with dashes only", allow_blank: true
  validates_inclusion_of :role, in: %w[admin deacon], message: "is not an option"
  validates_uniqueness_of :email, allow_blank: true
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"

  #scopes
  scope :active,          -> { where(active: true) }
  scope :inactive,        -> { where(active: false) }
  scope :deacons,        -> { where(role: 'deacon') }
  scope :admins,          -> { where(role: 'admin') }
  scope :alphabetical,    -> { order('last_name, first_name') }

end
