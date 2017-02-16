class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :role
      t.boolean :is_care_deacon
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
