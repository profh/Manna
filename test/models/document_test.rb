require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  should have_many(:case_documents)
  should have_many(:cases).through(:case_documents)
  should validate_presence_of(:name)
end
