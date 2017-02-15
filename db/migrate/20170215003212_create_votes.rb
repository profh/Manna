class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :deacon_id
      t.string :decision
      t.integer :case_id

      t.timestamps null: false
    end
  end
end
