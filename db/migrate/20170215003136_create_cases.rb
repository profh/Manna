class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :client_name
      t.date :date_submitted
      t.string :summary
      t.string :notes
      t.string :status
      t.integer :deacon_id
      t.string :subject
      t.timestamps null: false
    end
  end
end
