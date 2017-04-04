class Document < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

  has_many :case_documents
  has_many :cases, through: :case_documents

  validates_presence_of :name


end
