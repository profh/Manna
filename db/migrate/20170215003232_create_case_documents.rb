class CreateCaseDocuments < ActiveRecord::Migration
  def change
    create_table :case_documents do |t|
      t.integer :case_id
      t.integer :document_id

      t.timestamps null: false
    end
  end
end
