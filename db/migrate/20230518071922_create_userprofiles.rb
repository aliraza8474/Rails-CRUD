class CreateUserprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :userprofiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dob
      t.string :gender
      t.string :post

      t.timestamps
    end
  end
end
