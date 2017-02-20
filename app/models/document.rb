class Document < ActiveRecord::Base
  has_many :case_documents
  has_many :cases, through: :case_documents

  validates_presence_of :name
end
